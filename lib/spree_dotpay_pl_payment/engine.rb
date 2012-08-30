module SpreeDotpayPlPayment
  class Engine < Rails::Engine
    engine_name 'spree_dotpay_pl_payment'

    config.autoload_paths += %W(#{config.root}/lib)

    initializer "spree.dotpay_pl_payment.register.payment_methods", :after => "spree.register.payment_methods" do |app|
      app.config.spree.payment_methods << Spree::DotpayPlPayment
    end

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../../app/**/*_decorator*.rb")) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end

      Dir.glob(File.join(File.dirname(__FILE__), "../../app/overrides/*.rb")) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end

    config.to_prepare &method(:activate).to_proc
  end
end
