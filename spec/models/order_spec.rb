require 'rails_helper'

describe Order do

  context "Testing Validations missing total" do

    it "is not valid without a total" do
      expect(Order.new(total: nil)).not_to be_valid

    end
  end

  context "total empty" do
    it "is not valid" do
      expect(Order.new(total: "")).not_to be_valid
    end
  end

end