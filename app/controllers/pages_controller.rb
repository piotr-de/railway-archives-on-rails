class PagesController < ApplicationController
	def home
		if params[:country].present?
			@units = Unit.where(country: params[:country].capitalize)
			if @units.count == 0
				redirect_to root_path	
			end
		else
			@units = Unit.all
		end
	end
end
