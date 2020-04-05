class UnitsController < ApplicationController
	def index
		if params[:cl].present? && params[:operator].present?
			@units = Unit.where("lower(name) = ? AND lower(operator) = ?", params[:cl], params[:operator])
			if @units.empty?
				redirect_to root_path	
			end
		else
			redirect_to root_path
		end
		@units = @units.sort_by { |unit| unit.serial_no.split("-")[-1].to_i }
	end

	def show
		@encounter = Encounter.find(params[:id])
		@unit = Unit.find(@encounter.unit_id)
	rescue ActiveRecord::RecordNotFound
		redirect_to root_path
	end

	def search
		if params[:query].present?
			@units = Unit.where("serial_no ILIKE ?", "%#{params[:query]}%")
			@encounters = Encounter.where(unit: @units).sort_by { |e| [ e.unit.serial_no.split("-")[-1].to_i, e.date ] }
			if @units.empty?
				@encounters = Encounter.where("description ILIKE ?", "%#{params[:query]}%")
			end
		end
	end
end
