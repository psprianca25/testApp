class ApplicationController < ActionController::Base
	  # acts_as_token_authentication_handler_for User

	  #for testing api only.
	  # skip_before_filter  :verify_authenticity_token

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session#, if: Proc.new { |c| c.request.format == 'application/json' }
end
