module Spree
  class DotpayPlPayment < PaymentMethod
    preference :url, :string, :default => "https://ssl.dotpay.pl/"
    preference :account_id, :string
    preference :pin, :string
    preference :url, :string, :default => "https://ssl.dotpay.pl/"
    preference :urlc, :string, :default => "https://example.com/gateway/dotpay_pl/comeback/"
    preference :type, :string, :default => "0"
    preference :currency, :string, :default => "PLN"
    preference :language, :string, :default => "pl"
    preference :dotpay_server_1, :string, :default => "217.17.41.5"
    preference :dotpay_server_2, :string, :default => "195.150.9.37"

    def provider_class
      self.class
    end

    def payment_source_class
      self.class
    end

    def source_required?
      false
    end

    def payment_profiles_supported?
      false
    end
  end
end
