require 'rails_helper'

describe Comment do

  context "Testing Validations missing rating" do

    it "is not valid without a rating" do
      expect(Comment.new(body: nil)).not_to be_valid

    end
  end

  context "body empty" do
    it "is not valid" do
      expect(Comment.new(body: "")).not_to be_valid
    end
  end

end
