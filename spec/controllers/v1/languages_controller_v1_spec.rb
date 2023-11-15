require "rails_helper"

RSpec.describe Api::V1::LanguagesController, type: :controller do

  before {@language = Language.create(name: "php", framework: "laravel")}

  describe "GET /api/v1/languages" do
    it "Consegue criar uma language e retornar status 200?" do
      get :index
      expect(JSON.parse(response.body).size).to eq(1)
      expect(response).to have_http_status(200)
    end
  end

end
