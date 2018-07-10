require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  test "customer_message" do
    mail = ContactMailer.customer_message
    assert_equal "Customer message", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
