Piggybak.config do |config|
  #config.payment_calculators = ["..."]

  #config.shipping_calculators = ["..."]
  config.shipping_calculators << "Pickup" #= config.shipping_calculators + "Pickup"

  #config.tax_calculators = ["..."]
end
