# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Designer.delete_all
Designer.create(name: 'Chris Paul', description: 'Paul frequentò la West Forsyth High School, dove venne nominato Mr. Basketball del Nord Carolina dal Charlotte Observer, il giornale locale. Paul tenne una media di 30,8 punti, 8 assist, 5 rimbalzi e 6 rubate a partita, arrivando alle finali regionali. In una partita segnò 61 punti, sbagliando apposta il libero supplementare (che doveva tirare per aver fatto canestro con fallo) in onore di suo nonno, morto pochi giorni prima alla età di 61 anni.', image_url: 'hi-res-6916468_crop_exact.jpg')
Designer.create(name: 'Renatone Zero', description: 'Il triangolo noooo', image_url: 'renato.jpg')

categorie = [
    ["Armadi"],
    ["Tavoli"],
    ["Sedie"],
    ["Divani e Poltrone"],
    ["Letti"],
    ["Mobili per Soggiorno"],
    ["Arredo per Cucina"]
]

categorie.each do |name|
  Categoria.create(:name => name)
end
