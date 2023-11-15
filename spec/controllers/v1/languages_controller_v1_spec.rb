require "rails_helper"

RSpec.describe Api::V1::LanguagesController, type: :controller do

  before {@language = Language.create(name: "php", framework: "laravel")}

  describe "GET /api/v1/languages" do
    it "Consegue listar todas as languages e retornar status 200?" do
      get :index
      expect(JSON.parse(response.body).size).to eq(1)
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /api/v1/languages/id" do
    it "Consegue listar uma language especifica e retornar status 200?" do
      get :show, params: {id: @language.id}
      expect(response.body).to include_json(id: @language.id)
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /api/v1/languages" do
    it "Consegue criar uma language e retornar status 201?" do
      post :create, params: {language: {name: "java", framework: "spring"}, format: :json}
      expect(response.body).to include_json(framework: "spring")
      expect(response).to have_http_status(201)
    end
  end

  describe "PATCH /api/v1/languages/id" do
    it "Consegue atualizar uma language e retornar staus 200?" do
      language = Language.last
      patch :update, params: {language: {name: "ruby", framework: "rails"}, id: language.id}
      expect(response.body).to include_json(name: "ruby")
      expect(response).to have_http_status(200)
    end
  end

  describe "DELETE /api/v1/languages/id" do
    it "Consegue excluir uma language e retornar status 204?" do
      language = Language.last
      delete :destroy, params: {id: language.id}
      expect(Language.all).not_to include(language)
      expect(response).to have_http_status(204)
    end
  end

end
