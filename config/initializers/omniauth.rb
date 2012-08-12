OmniAuth.config.full_host = "http://localhost:3000"
#OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '862097400978.apps.googleusercontent.com', 'cr-0CszujuLY5xTpPisAYo2U', 
            { :scope => 'https://www.googleapis.com/auth/docs https://www.googleapis.com/auth/userinfo.profile',
              :access_type => 'online'}
  
end=begin
	
=end