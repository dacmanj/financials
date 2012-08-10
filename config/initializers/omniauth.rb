OmniAuth.config.full_host = "http://localhost:3000"

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google, 'pflag.org', 'Nf6KwOvzHqR+SogKz8mfYdpw', :scope => 'https://www.googleapis.com/auth/userinfo.profile' 
end