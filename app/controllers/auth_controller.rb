class AuthController < ApplicationController
    
    def create
        user = User.find_by(email: params[:email])
        if user&.authenticate(params[:password])
            token, exp = JsonWebToken.encode(user_id: user.id)
            render json: { token: token, exp: exp.strftime('%d-%m-%Y %H:%M'),
                           email: user.email }
        else
            render json: { errors: 'bad credentials' }, status: :forbidden
        end
    end
end
