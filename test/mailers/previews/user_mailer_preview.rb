# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/inquiry_mailer
  def inquiry_mailer
    UserMailer.inquiry_mailer
  end

end
