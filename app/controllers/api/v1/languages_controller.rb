class Api::V1::LanguagesController < ApplicationController

  before_action :set_language, only: %i[show update destroy] #show update destroy

  def index
    @languages = Language.all
    render json: @languages
  end

  def show
    render json: @language
  end

  def create
    @language = Language.new(language_params)
    if @language.save
      render json: @language, status: :created, location: api_v1_language_url(@language)
    else
      render json: @language.errors, status: :unprocessable_entity
    end
  end

  def update
    if @language.update(language_params)
      render json: @language
    else
      render json: @language.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @language.destroy!
  end

private

def set_language
  @language = Language.find(params[:id])
end

def language_params
  params.require(:language).permit(:name, :framework)
end

end
