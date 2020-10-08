class JsonWebToken
    SECRET = Rails.application.secrets.secret_key_base.to_s

    def self.encode(payload, exp = 15.minutes.from_now)
        payload[:exp] = exp.to_i
        token =  JWT.encode(payload, SECRET)
        [token, exp]
    end

    def self.decode(token)
        payload = JWT.decode(token, SECRET).first
        HashWithIndifferentAccess.new payload
    end
end