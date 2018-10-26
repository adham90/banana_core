require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  def authenticated_header
    token = Knock::AuthToken.new(payload: { sub: create(:user).id }).token

    {
      'Authorization': "Bearer #{token}"
    }
  end

  context 'Auth User' do
    it 'get users data' do
      request.headers.merge!(authenticated_header)
      get :index
      assert_response :success
    end
  end

end
