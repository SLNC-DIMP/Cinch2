# See https://groups.google.com/forum/?fromgroups#!topic/plataformatec-devise/pk3CptTL8kw[1-25]
class SignupsController < Devise::RegistrationsController

  def new
    flash[:failure] = "This action is not allowed"
    redirect_to root_path
  end
end