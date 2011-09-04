class ApplicationController < ActionController::Base
  protect_from_forgery     
                     
  # switch style css
  def use_theme   
    theme = params[:theme]
    theme ||= RefinerySetting.get(:default_theme)
    session[:theme] = theme
    redirect_to :back
  end
end
