if Rails.env.production?
  Rails.configuration.stripe = {
      publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
      secret_key: ENV['STRIPE_SECRET_KEY']
  }

else
  Rails.configuration.stripe = {
      publishable_key: 'pk_test_Jqn2FHtwetBmzXo40W1r6JMB',
      secret_key: 'sk_test_jkT15OSdXGtNLyVIWIsxME60'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]

