prototypes = [
  {
  :name => "LED汽车灯",
  :properties => ["品牌", "型号", "规格", "灯数", "灯座", "功率", "亮度", "发光角度", "使用电压", "保修期", "适合汽车", "适合车系", "适用车型"]
}

]

prototypes.each do |prototype_attrs|
  prototype = Spree::Prototype.create!(:name => prototype_attrs[:name])
  prototype_attrs[:properties].each do |property|
    prototype.properties << Spree::Property.find_by_name!(property)
  end
end
