require 'rails_helper'

RSpec.describe 'Users', type: :request do
  let(:user) { create(:user) }
  let(:user2) { create(:user) }
  before { sign_in user }

  describe 'GET show' do # test is not passing
    it 'succeeds' do
      get new_user_session_path(user_2)
      expect(response).to have_http_status(:success)
    end
  end
end
