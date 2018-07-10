class ContactMailer < ApplicationMailer
	default from: "anu.in.vietnam@gmail.com"

  def customer_message(customer)
  	@customer = customer

    mail to: "anuruddhikahettige@gmail.com", subject: "customer message"
  end
end
