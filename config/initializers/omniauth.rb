OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['OAUTH'], ENV['CLIENT_SECRET'], 
  
  {
  	# client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}
  	:scope => "userinfo.email,https://www.googleapis.com/auth/drive"

  }
end



# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :google_oauth2, ENV["OAUTH"], ENV["CLIENT_SECRET"],
#     {
      
#     }
# end