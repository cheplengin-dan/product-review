class User
    attr_reader :name
  
    def initialize(name)
      @name = name
      @reviews = []
      @products = []
    end
  
    def add_review(review)
      @reviews << review
    end
  
    def add_product(product)
      @products << product
    end
  
    def reviews
      @reviews.dup
    end
  
    def products
      @products.dup
    end
  
    def favorite_product
      @reviews.max_by { |review| review.star_rating }.product
    end
  
    def remove_reviews(product)
      @reviews.reject! { |review| review.product == product }
    end
  end
  