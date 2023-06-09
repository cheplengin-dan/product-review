# Product Review Code Challenge

This code challenge focuses on implementing an e-commerce domain with three models: User, Review, and Product. The models are designed to establish relationships between users, products, and their corresponding reviews. The challenge involves creating the necessary classes, associations, and methods to fulfill the specified requirements.

## Prerequisites

To run this code challenge, you'll need the following:

- Ruby installed on your machine

## Getting Started

Follow the instructions below to set up and run the code challenge:

- Clone the repository or download the code files.

- Open a terminal or command prompt and navigate to the project directory.

- Run the following command to execute the Ruby file:

ruby product_review.rb

- The output will be displayed in the terminal, showing the results of the implemented methods.

## Code Structure

The code challenge consists of the following classes:

- User: Represents a user who can give reviews to products.
- Product: Represents a product that can be reviewed.
- Review: Represents a review given by a user for a specific product.

The code files are organized as follows:

- product_review.rb: The main Ruby file that contains the code implementing the classes, associations, and methods.
- README.md: The documentation file explaining the code challenge and how to run it.

## Functionality

The implemented classes and methods provide the following functionality:

## User

- #add_review(review): Adds a review to the user's collection of reviews.
- #add_product(product): Adds a product to the user's collection of reviewed products.
- #reviews: Returns a collection of all the reviews given by the user.
- #products: Returns a collection of all the products reviewed by the user.
- #favorite_product: Returns the product instance that has the highest star rating from the user.
- #remove_reviews(product): Removes all the user's reviews for a specific product.

## Product

- #add_review(review): Adds a review to the product's collection of reviews.
- #add_user(user): Adds a user to the product's collection of users who reviewed it.
- #reviews: Returns a collection of all the reviews for the product.
- #users: Returns a collection of all the users who reviewed the product.
- #leave_review(user, star_rating, comment): Creates a new review associated with the product and the given user.
- #print_all_reviews: Prints all the reviews for the product in a formatted manner.
- #average_rating: Calculates and returns the average star rating for all the reviews of the product.

## Review

- #print_review: Prints the review in a formatted manner.
