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
end
