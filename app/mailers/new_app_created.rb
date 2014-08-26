class NewAppCreated < ActionMailer::Base
  default from: "no-reply@railstogo.com"
  def new_app_created(user, app, password)
    @user = user
    @app = app
    @password = password
    mail(to: @user.email, subject: "Your application #{to_model_file_name(@app.app_name)} has been created.")
  end
end
