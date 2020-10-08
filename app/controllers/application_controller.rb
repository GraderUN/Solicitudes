class ApplicationController < ActionController::Base

    protect_from_forgery with: :null_session  # Elimina la autenticación y permite hacer POST/PUT/PATCH/DELETE desde postman (sin html)

    private

    def authenticate!
        token = request.headers['Authorization']&.split(' ')&.last
        payload = JsonWebToken.decode(token)
        @current_user = User.find(payload[:user_id])
    rescue Mongoid::Errors::DocumentNotFound
        render json: { errors: 'not found' }, status: :forbidden
    rescue JWT::DecodeError => e
        render json: { errors: e.message }, status: :forbidden
    end
end
