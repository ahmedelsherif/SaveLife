class ApplicationMailer < ActionMailer::Base
  default from: 'savelife.notifier@gmail.com'

  layout 'mailer'
  def send_donator_found_notification (user, donator, request)
    @donator = donator
    @request = request
    mail(to: user.email, subject: 'Save Life: Interested Donator')
  end
end
