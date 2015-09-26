class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_neuron
    current_authentication.neuron
  end

  def enforce_authentication
    access_denied unless logged_in?
  end

  def logged_in?
    current_authentication.is_a? Authentication
  end

  # access denied action
  def access_denied
    redirect_to login_path, :flash => { :error => 'You don\'t have access to this page.' }
  end

  protected 

  def current_authentication
    return unless session[:authentication_id]
    @current_authentication ||= Authentication.find_by_id(session[:authentication_id])
  end
end
