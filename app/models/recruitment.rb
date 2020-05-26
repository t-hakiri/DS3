class Recruitment < ApplicationRecord

  has_many :popular_areas

  validates :area, presence: true, numericality: { only_integer: true }
  validates :game_model, presence: true, numericality: { only_integer: true }
  validates :secret_word, length: {maximum: 10}
  validates :lap_count, presence: true, numericality: { less_than: 8 }

  scope :recent, -> {order(created_at: :desc)}

  enum game_model:{
    "PlayStation": 0,
    "PC": 1,
  }

  enum area:{
    ロスリックの高壁: 0,
    高壁の塔: 1,
    高壁の下: 2,
    不死街: 3,
    崖下の地下室: 4,
    ボロ橋のたもと: 5,
    生贄の道: 6,
    道半ばの砦: 7,
    磔の森: 8,
    深みの聖堂: 9,
    清拭の小協会: 10,
    ファランの城塞: 11,
    城塞跡: 12,
    城塞外縁: 13,
    カーサスの地下墓: 14,
    デーモン遺跡: 15,
    冷たい谷のイルシール: 16,
    イルシール市街: 17,
    ヨルシカ教会: 18,
    町外れの廃屋: 19,
    イルシールの地下牢: 20,
    罪の都: 21,
    アノールロンド: 22,
    冷たい谷の踊り子・妖王の庭: 23,
    大書庫: 24,
    古竜の頂: 25,
    竜神の霊廟: 26,
    大鐘楼: 27,
    最初の火の炉: 28,
    吊り橋を臨む洞: 29,
    アリアンデルの礼拝所: 30,
    絵画の底: 31,
    鴉村: 32,
    雪の山道: 33,
    吹き溜まり: 34,
    土の塔の残骸: 35,
    土の塔の残骸・内部: 36,
    王廟の見張り: 37,
    輪の内壁: 38,
    輪の市街: 39,
    共同墓地: 40,
    フィリアノールの寝所: 41,
  }
end
