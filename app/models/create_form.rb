class CreateForm
  include ActiveModel::Model

  attr_accessor :owner_level, :area, :game_model, :secret_word, :lap_count

  validates :owner_level, :area, :game_model, :lap_count,  presence: true

  def save
    return false if !validate

    @recruitment = Recruitment.new(owner_level: owner_level, area: area.to_i, game_model: game_model.to_i, secret_word: secret_word, lap_count: lap_count)
    @recruitment.save
    true
  end
end
