class MainMailer < ApplicationMailer
  default from: 'coachtersladam@gmail.com'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.main_mailer.notify_question_author.subject
  #
  def notify_question_author(answer)
    @greeting = "Hello"
    @answer = answer

    mail to: answer.question.email
  end
end
