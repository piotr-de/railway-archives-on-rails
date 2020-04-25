class UserMailer < ApplicationMailer
	def send_form
		@user = params[:user]
		mail(to: ENV["FORM_MAILTO"], subject: "Message from railwy.eu.org")
	end
end
