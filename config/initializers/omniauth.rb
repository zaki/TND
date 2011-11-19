Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '223244214412315', '6cb16642bc5b464cc6b96d872d0df7a9'
end
