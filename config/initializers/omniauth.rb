OmniAuth.config.full_host = "http://localhost:3000"
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['pflag.org'], ENV['Nf6KwOvzHqR+SogKz8mfYdpw'], 
            { :scope => 'https://www.googleapis.com/auth/docs https://www.googleapis.com/auth/userinfo.profile' }

end