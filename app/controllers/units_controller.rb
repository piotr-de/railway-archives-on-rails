class UnitsController < ApplicationController
	def index
		if params[:country].present?
			@units = Unit.where(country: params[:country].capitalize)
			if params[:cl].present? && params[:operator].present?
				@units = @units.where("lower(name) = ? AND lower(operator) = ?", params[:cl], params[:operator])
			end
			if @units.count == 0
				redirect_to units_path	
			end
		else
			@units = Unit.all
		end
	end

	def show
		@unit = Unit.find(params[:id])
	end
end
