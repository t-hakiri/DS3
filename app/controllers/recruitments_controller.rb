class RecruitmentsController < ApplicationController

  before_action :set_recruitment, only: [:show, :edit, :update, :destroy]

  def index
    @recruitments = Recruitment.all.recent
  end

  def new
    @recruitment = Recruitment.new
  end

  def show
  end


  def create
    @recruitment = Recruitment.new(recruitment_params)
    if @recruitment.save
      redirect_to recruitment_path, notice: "募集を開始しました"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @recruitment.update(recruitment_params)
      redirect_to @recruitment
    else
      render :edit
    end
  end

  def destroy
    @recruitment.destroy
    redirect_to recruitments_url, notice: "募集を削除しました"
  end

  private

  def recruitment_params
    params.require(:recruitment).permit(:owner_level, :area, :game_model, :secret_word, :lap_coutn)
  end

  def set_recruitment
    @recruitment = Recruitment.find(params[:id])
  end

end
