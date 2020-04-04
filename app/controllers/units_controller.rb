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
		@unit = Unit.find(params[:id])
	end
end
