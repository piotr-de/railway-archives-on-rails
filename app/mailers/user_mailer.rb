class UserMailer < ApplicationMailer
	default from: 'no-reply@railway.eu.org'

	def send_form
		@user = params[:user]
		@message = params[:message]
		# mailgun_client = Mailgun::Client.new ENV["MAILGUN_API_KEY"]
		# message_params = {
		# 	from: "#{@user.name} <#{@user.email}>",
		# 	to: ENV["FORM_MAILTO"],
		# 	subject: "Message from railway.eu.org",
		# 	text: @message
		# }
		# mailgun_client.send_message ENV["MAILGUN_DOMAIN"], message_params
		mail(to: ENV["FORM_MAILTO"], subject: "Message from railway.eu.org")
	end
end
