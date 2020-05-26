200.times do
  Recruitment.create(
      owner_level: rand(100) + 1,
      area: rand(42),
      game_model: rand(2),
      secret_word: Faker::Games::Pokemon.name,
      lap_count: rand(7) + 1
    )
end