Rails.configuration.stripe = {
  :publishable_key => Rails.application.credentials.stripe[:sandbox_publishable_token],
  :secret_key => Rails.application.credentials.stripe[:sandbox_secret_token]
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
