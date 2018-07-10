class UserMailer < ApplicationMailer
	default from: "anu.in.vietnam@gmail.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.inquiry_mailer.subject
  #
  def inquiry_mailer(customer)
    @customer = customer

    mail to: "anuruddhikahettige@gmail.com", subject: "Customer Inquiry"
  end
end
