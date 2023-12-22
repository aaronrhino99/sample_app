class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.account_activation.subject
  #
  def account_activation(user)
    @user = user 
    mail to: user.email, subject: "Account activation"
  end

 #Preview email at 
 # http://localhost:3000/rails/mailers/user_mailer/password_reset
  def password_reset(user)
    @user = user
    mail to: user.email, subject: "Password reset"
  end
end
