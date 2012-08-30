Spree::Core::Engine.routes.prepend do
  match 'dotpay_pl/complete/:order_number' => 'dotpay_pl#complete', :via => :post, :as => :dotpay_pl_complete
  match 'dotpay_pl/:gateway_id/:order_id' => 'dotpay_pl#show', :as => :dotpay_pl
  match 'dotpay_pl/comeback' => 'dotpay_pl#comeback', :as => :dotpay_pl_comeback
end
