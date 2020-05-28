class CreateForm
  include ActiveModel::Model
  attr_accessor :owner_level, :area, :game_model, :secret_word, :lap_count

  validates :owner_level, :area, presence: true

  def save
    if invalid?
      @search = Recruitment.search(params[:q])
      @recruitments = @search.result.recent
      @popular_areas = Recruitment.group(:area).order(count_all: :desc).count.first(6)
      false
    end
    @recruitment = Recruitment.new(owner_level: recruitment_params[:owner_level], area: recruitment_params[:area].to_i, game_model: recruitment_params[:game_model].to_i, secret_word: recruitment_params[:secret_word], lap_count: recruitment_params[:lap_count])
    true
  end
end
