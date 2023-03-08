class ApplicationController < ActionController::API
    before_action :load_current_user_ability
    
    rescue_from ActionController::InvalidAuthenticityToken do |exception|
      render json: { error: 'Invalid token' }, status: :unprocessable_entity
    end

    # Define the current_user method
    def current_user
      @current_user ||= User.find_by(id: session[:user_id])
    end

    # Make the current_user method available to views
    helper_method :current_user

    private
  
    def load_current_user_ability
      @current_ability ||= Ability.new(current_user)
    end
    
end
  