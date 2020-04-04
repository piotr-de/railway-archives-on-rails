class UnitsController < ApplicationController
	def index
		if params[:cl].present? && params[:operator].present?
			@units = Unit.where("lower(name) = ? AND lower(operator) = ?", params[:cl], params[:operator])
			if @units.count == 0
				redirect_to root_path	
			end
		else
			redirect_to root_path
		end
		@units = @units.sort_by { |unit| unit.serial_no.split("-")[-1].to_i }
	end

	def show
		@encounter ||= Encounter.find(params[:id])
		@unit = Unit.find(@encounter.unit_id)
	rescue ActiveRecord::RecordNotFound
		redirect_to root_path
	end
end
