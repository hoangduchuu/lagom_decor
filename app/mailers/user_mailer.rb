class UserMailer < ApplicationMailer
	default from: "support.royaldragon.vn"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.inquiry_mailer.subject
  #
  def inquiry_mailer(customer)
    @customer = customer

    mail to: @customer.email, subject: "Lagomdecor support team"
  end

end
