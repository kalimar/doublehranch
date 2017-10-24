# frozen_string_literal: true

require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe 'GET #index' do
    let(:user) { create(:user) }
    let(:post_1) { create(:post) }
    let(:post_2) { create(:post) }

    before do
      user.confirm
      sign_in user
    end

    it 'should show the index page' do
      get :index
      expect(response).to have_http_status(:success)
    end

    it 'should show the last 10 posts with a certain tag if tag is in url param' do
      binding.pry
    end
  end
end
