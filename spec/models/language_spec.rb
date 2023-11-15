require "rails_helper"

RSpec.describe Language, type: :model do

  before {@language = Language.new}

  describe "Teste de preenchimento do model Language" do

    it "name consegue ser preenchido?" do
      @language.name = "ruby"
      expect(@language.name).to eq("ruby")
    end

    it "framework consegue ser preenchido?" do
      @language.framework = "sinatra"
      expect(@language.framework).to eq("sinatra")
    end

  end

  describe "Teste de validação do model Language" do

    it "Language valida com campos obrigatorios preenchidos?" do
      @language.name = "java"
      @language.framework = "spring"
      expect(@language).to be_valid
    end

    it "Language invalida com campos obrigatorios não preenchidos?" do
      language = Language.new
      expect(language).to be_invalid
    end

  end

end
