class Recruitment < ApplicationRecord

  has_many :popular_areas

  validates :area, presence: true, numericality: { only_integer: true }
  validates :game_model, presence: true, numericality: { only_integer: true }
  validates :secret_word, length: {maximum: 10}
  validates :lap_count, presence: true, numericality: { less_than: 8 }

  scope :recent, -> {order(created_at: :desc)}

  enum game_model:{
    model1: 0,
    model2: 1,
  }

  enum area:{
    area1: 0,
    area2: 1,
    area3: 2,
    area4: 3,
    area5: 4,
    area6: 5,
    area7: 6,
    area8: 7,
    area9: 8,
    area10: 9,
    area11: 10,
    area12: 11,
    area13: 12,
    area14: 13,
    area15: 14,
    area16: 15,
    area17: 16,
    area18: 17,
    area19: 18,
    area20: 19,
    area21: 20,
    area22: 21,
    area23: 22,
    area24: 23,
    area25: 24,
    area26: 25,
    area27: 26,
    area28: 27,
    area29: 28,
    area30: 29,
    area31: 30,
    area32: 31,
    area33: 32,
    area34: 33,
    area35: 34,
    area36: 35,
    area37: 36,
    area38: 37,
    area39: 38,
    area40: 39,
    area41: 40,
    area42: 41,
  }
end
