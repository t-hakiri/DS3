class RecruitmentsController < ApplicationController
  def index
    @recruitments = Recruitment.all
  end

  def new
    @recruitment = Recruitment.new
  end

  def create
    @recruitment = Recruitment.new(recruitment_params)
    if @recruitment.save
      redirect_to recruitment_path, notice: "募集を開始しました"
    else
      render :new
    end
  end

  private
  def recruitment_params
    params.require(:recruitment).permit(:owner_level, :area, :game_model, :secret_word, :lap_coutn)
  end
end
