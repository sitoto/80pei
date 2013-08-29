taxonomies = [
  { :name => "改装灯饰" },
  { :name => "汽车香水" }
]

taxonomies.each do |taxonomy_attrs|
  Spree::Taxonomy.create!(taxonomy_attrs)
end
