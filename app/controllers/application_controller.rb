class ApplicationController < ActionController::API
    before_action :load_current_user_ability

    rescue_from ActionController::InvalidAuthenticityToken do |exception|
      render json: { error: 'Invalid token' }, status: :unprocessable_entity
    end

    private
  
    def load_current_user_ability
      @current_ability ||= Ability.new(current_user)
    end
end
  