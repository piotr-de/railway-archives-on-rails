class UnitsController < ApplicationController
	def index
		@classes = ClassCode.all
	end
end
