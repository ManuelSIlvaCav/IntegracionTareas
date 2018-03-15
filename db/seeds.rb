# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

noticias = []
comentarios = []


30.times do |x|
  titulo = Faker::Name.name
  bajada = Faker::Lorem.sentence(10)
  cuerpo = Faker::Lorem.sentence(rand(300..700))
  created_at = Faker::Time.between(2.months.ago, Date.today)
  updated_at = Faker::Time.between(created_at, Date.today)
  noticias.push(titulo: titulo, bajada: bajada, cuerpo: cuerpo, created_at: created_at, updated_at: updated_at)
end

Noticium.create(noticias)

#comentarios
Noticium.all.each do |noticia|
  rand(1..10).times do |x|
    nombre = Faker::Name.name
    noticia_id = noticia.id
    content = Faker::Lorem.sentence(10)
    created_at = Faker::Time.between(noticia.created_at, Date.today)
    updated_at = Faker::Time.between(created_at, Date.today)
    Comment.create({nombre: nombre, content: content, noticium_id: noticia_id, created_at: created_at, updated_at: updated_at})
  end
end
