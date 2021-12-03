#class AuthenticationController < ApplicationController
    # return auth token once user is authenticated
#    skip_before_action :authorize_request, only: :authenticate
#    def authenticate
#      auth_token =
#        AuthenticateUser.new(auth_params[:email], auth_params[:password]).call
#      json_response(auth_token: auth_token)
#    end
  
#    private
  
#    def auth_params
#      params.permit(:email, :password)
#    end
#  end

# app/controllers/authentication_controller.rb

class AuthenticationController < ApplicationController
    skip_before_action :authenticate_request
   
    def authenticate
      command = AuthenticateUser.call(params[:email], params[:password])
   
      if command.success?
        render json: { auth_token: command.result }
      else
        render json: { error: command.errors }, status: :unauthorized
      end
    end
end