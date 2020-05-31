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

    @new_recruitment = CreateForm.new(recruitment_params)
    redirect_to recruitments_path, notice: @new_recruitment.save ? t('recruitment.index.start') : t('recruitment.index.false')

  end

  private

  def recruitment_params
    params.require(:recruitment).permit(:owner_level, :area, :game_model, :secret_word, :lap_count)
  end

  def search_params
    params.require(:q).permit!
  end

end
