require 'rails_helper'

Rspec.describe 'Notebooks', type: :request do
  let!(:notebooks) { FactoryBot.create(:notebooks) }
  describe "GET #index" do
      before do
          get('/api/v1/notebooks')
      end
      it "should get index" do
          expect(response).to have_http_status(200)
          expect(JSON.parse(response.body)["data"][0]["attrobites"]["title"]).to eq ("hello")
      end
  end
end
