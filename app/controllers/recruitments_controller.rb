class RecruitmentsController < ApplicationController

  before_action :set_recruitment, only: [:show, :edit, :update, :destroy]

  def index
    @search = Recruitment.search(params[:q])
    @recruitments = @search.result.recent
    @recruitment = Recruitment.new

  end

  def new
    @recruitment = Recruitment.new
  end

  def show
  end


  def create
    # @recruitment = Recruitment.new(recruitment_params)
    @recruitment = Recruitment.new(owner_level: recruitment_params[:owner_level], area: recruitment_params[:area].to_i, game_model: recruitment_params[:game_model].to_i, secret_word: recruitment_params[:secret_word], lap_count: recruitment_params[:lap_count])
    if @recruitment.save
      redirect_to recruitments_path, notice: "募集を開始しました"
    else
      @search = Recruitment.search(params[:q])
      @recruitments = @search.result.recent
      render action: :index
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
    params.require(:recruitment).permit(:owner_level, :area, :game_model, :secret_word, :lap_count)
  end

  def set_recruitment
    @recruitment = Recruitment.find(params[:id])
  end

  def search_params
    params.require(:q).permit!
  end

end
