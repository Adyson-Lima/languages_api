puts 'Gerando languages...'

5.times do |i|
  Language.create(
    name: ["ruby", "java"].sample ,
    framework: ["spring","rails"].sample
    )
end

puts 'languages geradas com sucesso!'
