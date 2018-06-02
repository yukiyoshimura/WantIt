require 'rails_helper'

describe ShowListController do
  describe 'GET #index' do
    before do
      get :index
    end
    context '1件' do
      let(:wantlists) { create(:wantlist) }
      it '欲しいものリストを取得する' do
          expect(response.status).to eq 200
          expect(assigns(:wantlists)).to eq [wantlists]
          expect(response).to render_template :index
      end
    end
    context '2件' do
      let(:wantlists) { create_list(:wantlist, 2)}
      it '欲しいものリストを取得する' do
        expect(response.status).to eq 200
        expect(assigns(:wantlists)).to eq wantlists
        expect(response).to render_template :index
      end
    end
  end
end
