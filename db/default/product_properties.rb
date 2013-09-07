products =
  { 
    "帮你配 汽车服务年费" => 
    { 
      "服务形式" => "网络/电话/远程服务",
      "服务内容" => "汽车养护提醒服务，赠送车贴(自选)。",
      "车友活动" => "不定期举办。"
    },
    "帮你配 汽车服务终生会员" => 
    { 
      "服务形式" => "网络/电话/远程服务",
      "服务内容" => "汽车养护提醒服务，赠送车贴(自选)。",
      "车友活动" => "不定期举办。"
    },
  }

products.each do |name, properties|
  product = Spree::Product.find_by_name(name)
  properties.each do |prop_name, prop_value|
    product.set_property(prop_name, prop_value)
  end
end
