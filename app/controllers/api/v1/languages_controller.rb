class Api::V1::LanguagesController < ApplicationController

  #before_action :set_language, only: %i[] #show update destroy

  def index
    @languages = Language.all
    render json: @languages
  end

private

def set_language
  @language = Language.find(params[:id])
end

def language_params
  params.require(:language).permit(:name, :framework)
end

end
