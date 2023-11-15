require "rails_helper"

RSpec.describe Language, type: :model do

  before {@language = Language.new}

  describe "Teste de preenchimento do model Language" do

    it "name consegue ser preenchido?" do
      @language.name = ""
      expect(@language.name).to eq("ruby")
    end

  end
end