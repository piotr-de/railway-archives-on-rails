class UsersController < ApplicationController
	def index
		@user = User.new
	end

	def send_form
		@user = User.new(name: params[:name], email: params[:email], message: params[:message])
		UserMailer.with(user: @user).send_form.deliver_now
		redirect_to root_path
	end
end
