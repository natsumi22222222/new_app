class ContactMailer < ApplicationMailer
  def contact_mail(contact, user)
    @contact = contact
    mail to: user.email, bcc: ENV["ACTION_MAILER_USER"], subject: "お問い合わせについて【自動送信】"
  end
end

ContactMailer.contact_mail(@contact, current_user).deliver