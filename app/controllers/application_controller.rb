class ApplicationController < ActionController::API
    rescue_from ActionController::InvalidAuthenticityToken do |exception|
      render json: { error: 'Invalid token' }, status: :unprocessable_entity
    end
end
  