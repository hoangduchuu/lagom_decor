class ContactMailer < ApplicationMailer
  default from: "support@lagomdecor.vn"

  def customer_message(customer)
  	@customer = customer

    mail to: "anuruddhikaonline@gmail.com", subject: "customer message"
  end

end
