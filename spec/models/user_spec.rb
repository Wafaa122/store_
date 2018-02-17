require 'rails_helper'

describe User do
  context "Testing Validations password not 6 digit min" do


    it "should not validate users without an email address" do
      @user = FactoryBot.build(:user, email: "not_an_email")
      expect(@user).to_not be_valid
    end

    it "is not valid" do
      @user = FactoryBot.build(:user, email: "emanadnan279@gmail.com")
      expect(User.new(password:"")).not_to be_valid
    end

  end

end