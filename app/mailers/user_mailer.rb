class UserMailer < ApplicationMailer
	def send_form
		@user = params[:user]
		@message = params[:message]
		mailgun_client = Mailgun::Client.new ENV["MAILGUN_API_KEY"]
		message_params = {
			from: @user.email,
			to: ENV["FORM_MAILTO"],
			subject: "Message from railway.eu.org",
			text: params[:message]
		}
		mailgun_client.send_message ENV["MAILGUN_DOMAIN"], message_params
		# mail(to: ENV["FORM_MAILTO"], subject: "Message from railway.eu.org")
	end
end
