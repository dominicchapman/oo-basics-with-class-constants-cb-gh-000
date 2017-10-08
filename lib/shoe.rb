class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    def brand_exists?(brand)
      BRANDS.any? { |existing_brand| existing_brand == brand }
    end
    brand_exists ? (BRANDS << brand) : return
    
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end
end
