require 'rails_helper'

RSpec.describe 'Homes', type: :request do
  describe 'GET /dashboard' do
    context 'when not signed in' do
      it 'is successful' do
        get dashboard_path
        expect(response).to have_http_status(:success)
      end
    end

    context 'when logged in' do
      it 'is succesful' do
        user = create(:user)
        sign_in user
        get dashboard_path
        expect(response).to have_http_status(:success)
      end
    end
  end
end
