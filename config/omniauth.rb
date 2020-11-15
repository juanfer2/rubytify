Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, "d7d83b0f46524bcb937e07082358aa8f", "6cf0d90cab284913abd27e9f26363cc9", scope: 'user-read-email playlist-modify-public user-library-read user-library-modify'
end