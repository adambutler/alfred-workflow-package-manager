class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  after_action :allow_iframe
  protect_from_forgery with: :exception

  def default_serializer_options
    {root: false}
  end


  private

  def allow_iframe
    response.headers.except! 'X-Frame-Options'
  end
end
