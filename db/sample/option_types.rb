option_types = [
  {
  :name => "led-car",
  :presentation => "适配车型",
  :position => 1
},
  {
  :name => "led-color",
  :presentation => "颜色分类",
  :position => 2
}
]

option_types.each do |option_type_attrs|
  Spree::OptionType.create!(option_type_attrs, :without_protection => true)
end
