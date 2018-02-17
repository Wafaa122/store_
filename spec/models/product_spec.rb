require 'rails_helper'
describe Product do
  context "when the product has comments" do

    before do
      @user = FactoryBot.create(:user)
      @product = FactoryBot.create(:product)
      @product = Product.create!(name: "shoes", description: "nice", price: 20 , colour: "violet" , image_url: "6.jpg")
      @user = User.create!(first_name: "Wafaa", last_name: "Adnan", email: "Wafaa@gmail.com", password: "123456")
      @product.comments.create!(rating: 1, user: @user, body: "WOOOW")
      @product.comments.create!(rating: 2, user: @user, body: "Just looks to geeky to me?")
      @product.comments.create!(rating: 3, user: @user, body: "nice")
      @product.comments.create!(rating: 4, user: @user, body: "Love it!")
      @product.comments.create!(rating: 5, user: @user, body: "awsomeness!")
    end

    it "returns the average rating of the comments" do
      expect(@product.average_rating).to eq 3
    end

    it "Testing Validations missing product name" do
      expect(Product.new(description: "Nice")).not_to be_valid
    end

  end
end