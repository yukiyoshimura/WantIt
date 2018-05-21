require 'rails_helper'

describe ShowListController do
  describe 'GET #index' do

    let!(:test) { build(:user) }
    it 'show all list' do
      get :index
      expect(response).to render_template :index
      p response
    end
  end
end