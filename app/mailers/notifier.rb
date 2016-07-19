class Notifier < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.email_user.subject
  #
  def email_user
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
