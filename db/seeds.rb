# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Article.destroy_all
Category.destroy_all
User.delete_all
User.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password', admin: true)

Category.create!(id: 1, name: 'Vélo')
Category.create!(id: 2, name: 'Chaussure')
Category.create!(id: 3, name: 'Mobilier-Commode')
Category.create!(id: 4, name: 'Mobilier-Table')
Category.create!(id: 5, name: 'Mobilier-Bureau')
Category.create!(id: 6, name: 'Mobilier-Siège')
Category.create!(id: 7, name: 'Poupée')
Category.create!(id: 8, name: 'Miroir')
Category.create!(id: 9, name: 'Jouet')
Category.create!(id: 10, name: 'Décoration')

# Article.create!(nom_fr: "Décoration 1", nom_en: "Décoration 1", description_fr: "Décoration 1", description_en: "Décoration 1", prix: 99, category_id: 10, vendu: false, reserve: false, couverture: "https://images.unsplash.com/photo-1598594661945-d7e693e4522c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80")
# Article.create!(nom_fr: "Miroir 1", nom_en: "Miroir 1", description_fr: "Miroir 1", description_en: "Miroir 1", prix: 186, category_id: 8, vendu: false, reserve: false, couverture:"https://images.unsplash.com/photo-1560828343-a0b3d8864d1b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=873&q=80" )
# Article.create!(nom_fr: "Poupée 1", nom_en: "Poupée 1", description_fr: "Poupée 1", description_en: "Poupée 1", prix: 40, category_id: 7, vendu: false, reserve: false, couverture: "https://images.unsplash.com/photo-1596301332593-3d1ea02f092c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1267&q=80")
# Article.create!(nom_fr: "Commode 1", nom_en: "Commode 1", description_fr: "Commode 1", description_en: "Commode 1", prix: 180, category_id: 3, vendu: false, reserve: false, couverture: "https://images.unsplash.com/photo-1579656381254-1a60dc1ee3f4?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80")
# Article.create!(nom_fr: "Table 1", nom_en: "Table 1", description_fr: "Table 1", description_en: "Table 1", prix: 100, category_id: 4, vendu: false, reserve: false, couverture: "https://images.unsplash.com/photo-1533090481720-856c6e3c1fdc?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80")
# Article.create!(nom_fr: "Bureau 1", nom_en: "Bureau 1", description_fr: "Bureau 1", description_en: "Bureau 1", prix: 95, category_id: 5, vendu: false, reserve: false, couverture:"https://images.unsplash.com/photo-1518455027359-f3f8164ba6bd?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=975&q=80" )
# Article.create!(nom_fr: "Siège 1", nom_en: "Siège 1", description_fr: "Siège 1", description_en: "Siège 1", prix: 79, category_id: 6, vendu: false, reserve: true, couverture: "https://images.unsplash.com/photo-1574189555774-7cbcd66d0fcb?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80")
# Article.create!(nom_fr: "Jouet 1", nom_en: "Jouet 1", description_fr: "Jouet 1", description_en: "Jouet 1", prix: 60, category_id: 9, vendu: true, reserve: false, couverture: "https://images.unsplash.com/photo-1601117077477-875c02e7b789?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80")
# Article.create!(nom_fr: "Vélo 1", nom_en: "Vélo 1", description_fr: "Vélo 1", description_en: "Vélo 1", prix: 150, category_id: 1, vendu: false, reserve: false, couverture: "https://images.unsplash.com/photo-1485965120184-e220f721d03e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80")
# Article.create!(nom_fr: "Chaussure 1", nom_en: "Chaussure 1", description_fr: "Chaussure 1", description_en: "Chaussure 1", prix: 65, category_id: 2, vendu: false, reserve: false, couverture: "https://images.unsplash.com/photo-1525966222134-fcfa99b8ae77?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1286&q=80")
