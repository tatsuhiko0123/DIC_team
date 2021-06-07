class AssignMailer < ApplicationMailer
  default from: 'from@example.com'

  def assign_mail(email, password)
    @email = email
    @password = password
    mail to: @email, subject: I18n.t('views.messages.complete_registration')
  end

  def owner_change_mail(email)
    mail to: email, subject: I18n.t('views.messages.change_owner')
  end
end