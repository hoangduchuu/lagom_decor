class ContactMailer < ApplicationMailer
  default from: 'mail@anuruddhika.website'
  def customer_message(customer)
  	@customer = customer

    mail to: "anu.in.vietnam@gmail.com", subject: "customer message"
  end

end
