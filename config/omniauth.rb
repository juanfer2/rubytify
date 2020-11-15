Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, "d7d83b0f46524bcb937e07082358aa8f", "50a89db580f14d09809e2f5ef57b3a9d", scope: 'user-read-email playlist-modify-public user-library-read user-library-modify'
end