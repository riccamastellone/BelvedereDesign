# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Designer.delete_all

designer_list = [
    [ 'Mark Anders', 'Mark Anders ha cominciato la sua carriera nella Belvedere Design nel 2011.
       Cresciuto sulla costa del Dorset, nel sud del Regno Unito, Mark nutre da sempre un’attrazione particolare per il mare e le barche. Il suo interesse per l’ambiente marino, inclusa l’architettura, l’ingegneria, e il design in genere, è stato ulteriormente galvanizzato durante un precedente impiego presso un’azienda europea costruttrice di yacht.

       Indipendente per natura e desideroso di realizzarsi da solo, nel 2004 Mark ha aperto uno studio di design a Weymouth, il cui successo gli ha permesso di guadagnarsi un’ottima reputazione in materia di innovazione e versatilità.
       Ad oggi, i suoi progetti includono la realizzazione di barche da competizione e l’arredamento di yacht club, hotel e superyacht. Il design di Mark si focalizza sulla semplicità, sia in termini di forma che di materiali. Esso è in grado di evocare una sorta di eleganza informale perfettamente incarnata dalla filosofia Belvedere.', 'Anders-1.jpg' ],
    [ 'Glyn Peter Machin', 'Glyn Peter Machin è un artista multidisciplinare il cui lavoro rivela una straordinaria intelligenza, un particolare senso delle strutture e una maestria di precisione.

      Nelle prime fasi della sua carriera, Glyn ha viaggiato in lungo e in largo in Europa, Asia e negli Stati Uniti, collezionando idee e inspirazioni da innumerevoli paesaggi, culture e architetture. Questo gli ha permesso di trarre ispirazione da fonti di diversa natura, da diversi stili, creando, allo stesso tempo lavori originali contrassegnati da un senso estetico che riflette la sua idea di semplicità, di funzione e di stile.
      Dalla Scandinavia, con la sua pronunciata tradizione marinaresca, il design di Glyn presenta spesso un tocco pratico, un’economia di linee che, allo stesso tempo, è capace di essere funzionale ma elegante.', 'Machin-1.jpg' ],
    [ 'Oliviero Panzeri', 'Oliviero Panzeri ha studiato al Politecnico di Milano, dove ha avuto modo di sviluppare un interesse duraturo nel design della mobilia appositamente prodotta per gli ambienti di destinazione, con particolare attenzione sulla mobilia pieghevole. Panzeri ha alle spalle una lunga carriera nel campo dell’architettura e del design tradizionale prima di aprire il suo studio a Shamrock Quay, nella regione di Southampton, in Inghilterra nel 1979.
      La sua reputazione è cresciuta a livello internazionale soprattutto nel settore degli alberghi, inclusi quelli di lusso. Interni progettati da lui possono essere trovati in hotel a Shanghai, San Pietroburgo, New York, Vancouver e Doha.  Seppur unica, ogni realizzazione di Munford porta la sua caratteristica firma, che si esprime nella presenza di influenze evocatrici del glorioso passato dell’ Art Deco. La sua profonda conoscenza di metodi tradizionali di produzione e di materiali da vita a prodotti di squisita finitura.', 'Munford-1.jpg' ],
    [ 'Kipp Stewart', 'Nato professionalmente come architetto, Kipp Stewart si è distinto quale un eccellente designer americano di mobilia.
      È conosciuto nel settore come un artista pieno di talento avente un profondo rispetto per la tradizione. I suoi prodotti hanno ottenuto riconoscimenti internazionali e sono ammirati per la loro eleganza semplice e funzionale.

      Kipp Stewart vive a Carmel, in California, seppur dia credito ai suoi studi in Europa quali fonte ispiratrice grazie alla sua storia e alle classiche forme architettoniche. Fa spesso riferimento al defunto Charles Eames, con il quale ha lavorato in passato e che ha rappresentato per lui una notevole influenza. Stewart ha ricevuto numerosi riconoscimenti a livello internazionale. Kipp nutre una grande passione per le arti in genere, il che gli ha permesso di realizzare lavori nel campo della pittura, della fotografia, dell’architettura e del design della mobilia.
       Il Ventana Inn, concepito architettonicamente e costruito in armonia con il paesaggio circostante del Big Sur, è il suo progetto architettonico di maggiore successo.
      Le sue pitture sono state esposte in musei e gallerie d’arte nelle maggiori città americane, incluso il Museum of Modern Art di New York City.', 'Stewart-1.jpg' ]
]

designer_list.each do |name, description, image_url|
  Designer.create( name: name, description: description, image_url: image_url )
end


Showroom.delete_all
showroom_list = [
    [ "Centro Belvedere Merate", "Il Centro Belvedere Merate è il punto di riferimento del mondo del design d'interni nella Brianza. Addetti qualificati vi sapranno consigliare la migliore scelta, confezionata ad hoc per soddisfare ogni vostra esigenza.", "Via Roma 2, 23807 Merate, Italia" ],
    [ "Studio Lombardo del Design", "Situato a pochi passi dalla metropolitana, il nostro studio è l'ideale per il cliente che vuole essere seguito e coccolato in ogni sua scelta da personale altamente qualificato", "Piazza Belgioioso 2, 20121 Milano, Italia" ],
    [ "Monza Design", "Il negozio, molto elegante nella sua struttura ottocentesca, dispone di un’ampia superficie in cui sono esposti i principali marchi d'arredamento per tutta la casa.", "Via Italia 15, 20900 Monza, Italia" ],
    [ "Belvedere Now", "Il negozio, moderno ed esclusivo, si trova lungo l'elegante Corso Filiberto. E' presente una raffinata selezione di marchi, le cui proposte vengono costantemente aggiornate e diversificate, tanto da rendere Belvedere Now un negozio di riferimento delle tendenze più attuali del design.", "Corso Emanuele Filiberto 16, 23900 Lecco, Italia" ],
    [ "Bergamo Belvedere", "Con 4 piani di show-room interamente dedicati a mobili ed elementi d'arredo, il palazzo Belvedere Bergamo, è una delle più vaste realtà Lombarde e offre un'ampia esposizione di mobili e complementi d'arredo per la casa", "Via Broseta 20, 24122 Bergamo, Italia"],

]

showroom_list.each do |name, description, address|
  Showroom.create( name: name, description: description, address: address )
end


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
