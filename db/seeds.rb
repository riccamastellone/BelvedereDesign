#encoding: utf-8
Categoria.delete_all
categorie = [
    "Armadi",
    "Tavoli",
    "Sedie",
    "Divani e Poltrone",
    "Letti",
    "Mobili per Soggiorno",
    "Arredo per Cucina"
]

categorie.each do |name|
  Categoria.create(:name => name)
end

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
       Il Ventana Inn, concepito architettonicamente e costruito in armonia con il paesaggio circostante del Big Sur, è il suo progetto architettonico di maggiore successo.', 'Stewart-1.jpg'
    ] ,
    [ 'Carl Podolac', 'Alwy Visschedyk si aggiunge alla squadra di artisti della nostra azienda dando un notevole contributoi alla tradizione Belvedere che combina eleganza informale e forme classico moderne di design. Alwy ha stabilito la sua reputazioine quale creatore di arte funzionale grazie alla produzione di pezzi commissionati da clienti di rilevanza a livello mondiale.
      Un pioniere nel campo di materiali e finiture per la mobilia, Alwy è stato tra i primi a realizzare pezzi d’arte con l’utilizzo di cemento. È un ottimo falegname e predilige particolarmente il tek, il marchio di fabbrica di Belvedere Design.

      Nato in Olanda, Alwy è emigrato in Australia con la sua famiglia, passando i suoi anno formativi nella città di Rockingham, situata sull’Oceano Indiano. In questo ambiente marino costituito da baie incontaminate e isole deserte, ha nidificato la sua passione per la semplicità, la natura e gli spazi aperti.', 'Podolac1.jpg',
    ] ,
    [ 'Henrik Bowie',"Henrik Pedersen è una delle stelle nascenti dell'interior design. Uno dei suoi primi pezzi è stata la poltrona Imola per BoConcept, diventata un'icona, ed è uno dei maggiori designer danesi di lampade. Si è laureato come designer di moda nel 1990 ma utilizza la sua formazione per esplorare tutte le gamme del design. 'La mia formazione scolastica e la mia esperienza sono la mia scatola degli attrezzi. Midanno la base'. Il processo creativo è sempre lo stesso indipendentemente da cosa si crei. Sono i materiali che fanno la differenza e aprono nuove possibilità. La sua esperienza eclettica e il suo interesse per la matematica gli danno la capacità di intuire se un nuovo progetto funzionerà o meno. ",
      'Bowie1.jpg' ,
    ] ,
    [ 'Tony Stark', "Uno dei più noti creativi dei nostri tempi, guru del design e al contempo serio progettista. Tony Stark, nato a Parigi nel 1949, dove ha anche studiato a metà degli anni 60, è rappresentante di un 'nuovo design' giocoso e non di rado provocante. Ciò ha portato all'elaborazione di idee classiche o anche moderne. I suoi progetti piuttosto che l'espressione di una ricerca ingegneristica del miglior funzionamento di una nuova idea o di un prodotto hanno un forte impatto visivo.
        Il designer francese ha ideato oggetti che vanno dalla poltrona da caffetteria allo spazzolino da denti, dallo sgabello alla casa prefabbricata. Tony Stark si concentra sull'essenziale con forme elementari. Funzionamento chiaro ed effetto semplice. Nessun elemento di distrazione. Stile Belvedere, insomma.",
      'Stark1.jpg',
    ]  ,
    [ 'Franco Previtali',"Nato a Milano nel 1964, laureato in design presso il Politecnico di Milano, ama lo stile raffinato e ricercato, ma senza esagerazioni. Il suo lavoro, che spazia dai pezzi unici alle edizioni limitate sino alla produzione di serie, non ha 'data di scadenza e fa parte delle collezioni sia pubbliche che private di tutto il mondo",
      'Franco1.jpg'
    ]

]

designer_list.each do |name, description, image_url|
  Designer.create( name: name, description: description, image_url: image_url )
end


Showroom.delete_all
showroom_list = [
    [ "Centro Belvedere Merate", "Il Centro Belvedere Merate è il punto di riferimento del mondo del design d'interni nella Brianza. Addetti qualificati vi sapranno consigliare la migliore scelta, confezionata ad hoc per soddisfare ogni vostra esigenza.", "Via Roma 2, 23807 Merate, Italia" ,"45.6980538","9.4182072"    ],
    [ "Studio Lombardo del Design", "Situato a pochi passi dalla metropolitana, il nostro studio è l'ideale per il cliente che vuole essere seguito e coccolato in ogni sua scelta da personale altamente qualificato", "Piazza Belgioioso 2, 20121 Milano, Italia","45.46711639999999","9.192640299999999" ],
    [ "Monza Design", "Il negozio, molto elegante nella sua struttura ottocentesca, dispone di un’ampia superficie in cui sono esposti i principali marchi d'arredamento per tutta la casa.", "Via Italia 15, 20900 Monza, Italia" ,"45.582825","9.274025"],
    [ "Belvedere Now", "Il negozio, moderno ed esclusivo, si trova lungo l'elegante Corso Filiberto. E' presente una raffinata selezione di marchi, le cui proposte vengono costantemente aggiornate e diversificate, tanto da rendere Belvedere Now un negozio di riferimento delle tendenze più attuali del design.", "Corso Emanuele Filiberto 16, 23900 Lecco, Italia","45.8388961","9.410803" ],
    [ "Bergamo Belvedere", "Con 4 piani di show-room interamente dedicati a mobili ed elementi d'arredo, il palazzo Belvedere Bergamo, è una delle più vaste realtà Lombarde e offre un'ampia esposizione di mobili e complementi d'arredo per la casa", "Via Broseta 20, 24122 Bergamo, Italia","45.6927032","9.6622358"],

]

showroom_list.each do |name, description, address, lat, long|
  Showroom.create( name: name, description: description, address: address, latitude: lat, longitude: long  )
end

Product.delete_all
product_list = [
    ["Dana",
     "Struttura in alluminio verniciato e seduta in  PVC disponibile in 3 colorazioni ideale per la cucina ed Elegante per la Sala da pranzo, pratica per la pulizia, economica nel prezzo, essenziale nel design ed è davvero comoda.
     Curata nei dettagli e nelle cuciture.",
     1, 3],
    ["Air",
     "La sedia AIR High, ha la struttura in metallo, seduta in materiale sintetico disponibile in vari colori e finiture.
     La seduta è prodotta in materiale Net, un Pvc altamente resistente e per questo facilmente lavabile.
     La sedia Air High ha lo schienale alto per questo oltre ad essere adatta alla cucina per resistenza di  materiali è ideale nel salone da pranzo.",
     2, 3],
    ["Baxter",
     "Seduta confortevole e morbida, design trapuntato e rivestimento in ecopelle in 4 colori di tendenza.
     Struttura Cromata con gambe a slitta.",
     3, 3],
    ["Gusto",
     "Divano in Tessuto Ideale completamento del tuo salotto, un divano semplice ma curato nei dettagli, interamente Made in Italy!
     Disponibile anche nella versione intermedia tra il 2 e 3 posti.
     Piccolo prezzo , Grande qualità del design italiano!",
     4, 4],
    ["Bilbao",
     "Poltrona girevole con pistone a gas originale e simpatica nel design senza rinunciare tuttavia all'eleganza;
     ideale per dare un tocco originale al tuo ufficio, alla sala d'aspetto o al tuo salotto!
     Comodissima e facilmente lavabile grazie al rivestimento in eco-pelle e la struttura in metallo cromato.",
     5, 4],
    ["Nimbus",
     "Divano letto con materasso di serie spesso 14 cm. , con rivestimento interamente sfoerabile e quindi facilmente lavabile!
     I cuscini,visionabili in foto, sono forniti di serie in tessuto uguale al rivestimento della base del divano.
     I piedi sono in legno colore Wengé. Per trasformare il divano in letto è sufficiente una leggera trazione dello schienale, non c'è nulla da spostare lo schinale scompare sotto la rete.
     Lo schienale può contenere 2 guanciali, i braccioli sono montati con meccanismo a baionetta facilitandone la rimozione.",
     6, 4],
    ["Fatto",
     "E' ideale per completare l'arredamento della tua camera, quella dei bambini, oppure  il salotto!
     Comodissima !
     Disponibile in vari colori!",
     7, 4],
    ["Opla",
     "Divano in Vera Pelle. Comodissimo.
     Dalla linea semplice e confortevole, ideale in qualsiasi Ambiente.
     Interamente Made in Italy è il divano ideale se vuoi unire la Qualità ad un Prezzo Eccezionale!
     Spalliera e cuscini sfoderabili. Piedini cromati opzionali.",
     8, 4],
    ["Pepper",
     "Letto matrimoniale con contenitore , testata imbottita dalla forma stondata, realizzato con struttura interamente sfoderabile e smontabile, completo di rete con doghe in legno.
     Disponibile in ecopelle e tessuto cotone 100%",
     1, 5],
    ["Agata",
     "Letto imbottito, realizzato con struttura interamente sfoderabile e smontabile,completo di rete con doghe in legno;
     Ideale per la camera da letto classica e moderna, con la possibilità di sceglierlo in tante varianti di colore.",
     3, 5],
    ["Romeo",
     "Il Letto è completamente sfoderabile, con rete ortopedica a doghe disponibile in 4 misure; il Contenitore è fornito di apertura pneumatica.
     Bello ed elegante si adatta perfettamente alla tua camera da letto; disponibile in tessuto 100% cotone e finitura in ecopelle che permette una facile manutenzione e pulizia.",
     2, 5],
    ["Domus",
     "Cucina a Schema Lineare per parete di cm 270, Anta e Frontali in laminato stondato proposti in una vasta gamma di colori, di  strutture, piani, zoccolature e maniglie.
     Con la possibilità di variazioni ed inserimenti di Elettrodomestici REX diversi dalla proposta Standard.
     Cucina Robustissima,  con cerniere ammortizzate, Spessori di Ante e
     Strutture e ferramenta derivata dalla serie Castom, tra le migliori sul mercato.",
     4, 7],
    ["Moon",
     "Cucina a Schema Lineare per parete di cm 300, Anta e Frontali in laminato stondato proposti in una vasta gamma di colori, di  strutture, piani, zoccolature e maniglie.
     Con la possibilità di variazioni ed inserimenti di Elettrodomestici REX diversi dalla proposta Standard.
     Cucina Robustissima,  con cerniere ammortizzate, Spessori di Ante e
     Strutture e ferramenta derivata dalla serie Castom, tra le migliori sul mercato.",
     5, 7],
    ["Fast",
     "Tavolo allungabile e raddoppiabile disponibile nella versione quadrata e rettangolare con struttura in metallo disponibile in diverse finiture, con piano in vetro temperato in quattro colori tendenza.
     E' il classico tavolino da cucina quadrato che , con apertura a libro, può ospitare più persone.",
     6, 2],
     ["California",
      "Tavolo California, perfetto per essere posto in un salotto moderno ed elegante.",
      7, 2],
     ["Orbital",
      "Il tavolo aperto permette di accogliere dieci posti a sedere. Orbital è una presenza scenica nel concerto domestico, il vero protagonista della zona pranzo.",
      8, 2],
     ["Jesse",
      "Pedana e fianchi in rovere moro
      Moduli e vasistas in laccato lucido bianco, schiene opache bianche.",
      1, 6],
     ["Gamma",
      "Composizione soggiorno con struttura in essenza rovere moro e frontali in laccato lucido bianco ghiaccio e pensile basculante con vetro satinato stopsol.",
      2, 6],
     ["Amber",
      "Cabina armadio con elementi intercambiabili tra loro, completa di ripiani, tubi appendiabiti e cassettiere. Attrezzature moderne, grandi scaffali per una classe inconfondibile.",
      3, 1],
     ["Clearance",
      "Il modello Clearance propone modelli di ispirazione contemporanea, completando la struttura con due o tre ante scorrevoli composte da pannelli in vetro. La modernità di questa soluzione è accentuata dal telaio in alluminio che racchiude gli inserti in vetro.",
      4, 1],
     ["Mood",
      "L'armadio battente in vero legno Mood è caratterizzato da ante in tamburato impiallacciate in vero legno. Questa tecnica costruttiva dona leggerezza e resistenza alle strutture, impreziosite e rese uniche dall'impiallacciatura in essenza di legno. L'armadio battente Mood può essere realizzato in vero legno naturale noce canaletto, in rovere moro, e nell'esclusivo olmo dalle raffinate finiture Perla e Brown. ",
      7, 1],
     ["Vision",
     "Una soluzione arredativa funzionale ed elegante: l'amadio con spogliatoio terminale modello Vision, offre tutto quello che serve nella camera da letto contemporanea.Il mobile spogliatoio è completo di illuminazione interna con luci led ad accensione tramite sensore di presenza. A luci spente il particolare vetro applicato alle ante dello spogliatoio funge da specchi. Quando invece le luci vengono accese l'interno dello spogliatoio traspare attraverso le ante.",
      8, 1],

]

product_list.each do |name, description, designer_id, categoria_id|
  Product.create(name: name, description: description, designer_id: designer_id, categoria_id: categoria_id)
end


ProductImage.delete_all
product_images_list = [
    ["DanaB.jpg", 1],
    ["DanaN.jpg", 1],
    ["AirB.jpg", 2],
    ["AirN.jpg", 2],
    ["Air4.jpg", 2],
    ["BaxterN.jpg", 3],
    ["BaxterB.jpg", 3],
    ["BaxterG.jpg", 3],
    ["Gusto1.jpg", 4],
    ["Gusto2.jpg", 4],
    ["Bilbao2.jpg", 5],
    ["BilbaoN.jpg", 5],
    ["Nimbus1.jpg", 6],
    ["Nimbus2.jpg", 6],
    ["FattoP.jpg", 7],
    ["FattoB.jpg", 7],
    ["FattoG.jpg", 7],
    ["FattoN.jpg", 7],
    ["FattoV.jpg", 7],
    ["OplaN.jpg", 8],
    ["OplaG.jpg", 8],
    ["Pepper1.jpg", 9],
    ["Agata1.jpg", 10],
    ["Agata2.jpg", 10],
    ["Agata3.jpg", 10],
    ["Romeo1.jpg", 11],
    ["Romeo2.jpg", 11],
    ["Romeo3.jpg", 11],
    ["Domus1.jpg", 12],
    ["Moon1.jpg", 13],
    ["Fast1.jpg", 14],
    ["Fast2.jpg", 14],
    ["Fast3.jpg", 14],
    ["California1.jpg", 15],
    ["Orbital1.jpg", 16],
    ["Orbital2.jpg", 16],
    ["Orbital3.jpg", 16],
    ["Jesse1.jpg", 17],
    ["Gamma1.jpg", 18],
    ["Amber1.jpg",19],
    ["Clearance1.jpg",20],
    ["Clearance2.jpg",20],
    ["Mood1.jpg",21],
    ["Mood2.jpg",21],
    ["Mood3.jpg",21],
    ["Vision1.jpg",22],
    ["Vision2.jpg",22],
    ["Vision3.jpg",22],
    ["Vision4.jpg",22]
]

product_images_list.each do |image_url, product_id|
  ProductImage.create( image_url: image_url, product_id: product_id )
end

