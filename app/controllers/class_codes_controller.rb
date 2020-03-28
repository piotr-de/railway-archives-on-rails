class ClassCodesController < ApplicationController
	def index
		@classes = ClassCode.all
	end
end
