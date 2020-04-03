class UnitsController < ApplicationController
	def index
		if params[:country].present?
			@units = Unit.where(country: params[:country].capitalize)
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
