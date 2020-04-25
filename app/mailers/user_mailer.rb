class UserMailer < ApplicationMailer
	def send_form
		@user = params[:user]
		@message = params[:message]
		mail(to: ENV["FORM_MAILTO"], subject: "Message from railway.eu.org")
	end
end
