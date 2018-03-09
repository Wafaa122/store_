require 'rails_helper'
describe Product do
  context "when the product has comments" do

    before do
      @user = FactoryBot.create(:user)
      @product = FactoryBot.create(:product)
      @product = Product.create!(name: "shoes", description: "nice", price: 20 , colour: "violet" , image_url: "6.jpg")
      @user = User.create!(first_name: "Wafaa", last_name: "Adnan", email: "Wafaa@gmail.com", password: "123456")


    5.times do |index|
      @product.comments.create!(rating: index + 1, user: @user, body: "test")
    end
    end
    it "returns the average rating of the comments" do
      expect(@product.average_rating).to eq 3
    end

    it "Testing Validations missing product name" do
      expect(Product.new(description: "Nice")).not_to be_valid
    end

  end
end