require 'rails_helper'

describe UsersController, type: :controller do
  before do
    @user = FactoryBot.create(:user)
end
  describe 'GET #show' do
    context 'when a user is logged in' do
      before do
        sign_in @user
      end
    end


  end

end