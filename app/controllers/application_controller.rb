class ApplicationController < ActionController::Base
  protect_from_forgery     
                     
  # switch style css
  def use_theme   
    theme = params[:theme]
    theme ||= RefinerySetting.get(:default_theme)
    session[:theme] = theme
    redirect_to :back
  end
  
  # see https://github.com/resolve/refinerycms/issues/794
  def home_page?
    root_path == request.path or root_path == "#{request.path}/"
  end
  
end
