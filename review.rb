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
  
  class Product
    attr_reader :name
  
    def initialize(name)
      @name = name
      @reviews = []
      @users = []
    end
  
    def add_review(review)
      @reviews << review
      review.product = self
    end
  
    def add_user(user)
      @users << user
      user.add_product(self)
    end
  
    def reviews
      @reviews.dup
    end
  
    def users
      @users.dup
    end
  
    def leave_review(user, star_rating, comment)
      review = Review.new(user, self, star_rating, comment)
      @reviews << review
      user.add_review(review)
    end
  
    def print_all_reviews
      @reviews.each do |review|
        puts "Review for #{name} by #{review.user.name}: #{review.star_rating}. #{review.comment}"
      end
    end
  
    def average_rating
      total_ratings = @reviews.map(&:star_rating).reduce(0, :+)
      total_reviews = @reviews.size
  
      total_reviews > 0 ? (total_ratings.to_f / total_reviews) : 0
    end
  end

  class Review
    attr_reader :user, :star_rating, :comment
    attr_accessor :product
  
    def initialize(user, product, star_rating, comment)
      @user = user
      @product = product
      @star_rating = star_rating
      @comment = comment
    end
  
    def print_review
      puts "Review for #{product.name} by #{user.name}: #{star_rating}. #{comment}"
    end
  end