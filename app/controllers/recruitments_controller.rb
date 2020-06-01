class RecruitmentsController < ApplicationController

  def index
    @search = Recruitment.search(params[:q])
    @recruitments = @search.result.recent
    @popular_areas = Recruitment.group(:area).order(count_all: :desc).count.first(6)
    @recruitment = Recruitment.new

  end

  def new
    @recruitment = Recruitment.new
  end

  def create
    # @recruitment = Recruitment.new(recruitment_params)
    @recruitment = Recruitment.new(owner_level: recruitment_params[:owner_level], area: :area1, game_model: recruitment_params[:game_model].to_i, secret_word: recruitment_params[:secret_word], lap_count: recruitment_params[:lap_count])
    if @recruitment.save
      redirect_to recruitments_path, notice: "募集を開始しました"
    else
      @search = Recruitment.search(params[:q])
      @recruitments = @search.result.recent
      @popular_areas = Recruitment.group(:area).order(count_all: :desc).count.first(6)
      render action: :index
    end
  end

  private

  def recruitment_params
    params.require(:recruitment).permit(:owner_level, :area, :game_model, :secret_word, :lap_count)
  end

  def search_params
    params.require(:q).permit!
  end

end
