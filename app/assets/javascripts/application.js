//= require jquery
//= require jquery_ujs
$(function() {
    correggiAltezza();
    if(window.location.hash) {
        showDesigner(parseInt(window.location.hash.substring(1)));
    }
    $('#cercaShowroom').click(function() {
        cercaShowroom();
    })

});
$(window).resize(function() {
    correggiAltezza();

});

function cercaShowroom() {
    $.get("/showroom/ajax/",
        { "indirizzo": $('input[name=indirizzo]').val() },
        function(data) {
            console.log(data)
            var html = "";
            for(var key in data) {
                if(data[key].distance < 1)  {  // Usiamo la distanza in metri

                   distanza = Math.round(data[key].distance*1000) + " m";
                } else {   // Arrotondiamo ai km
                    distanza =  Math.round(data[key].distance) + " km";
                }
               html += "<p><a href='javascript:selezioneSR(" + data[key].id + ");'>" + data[key].name + " - " + distanza;
               html += "</a><br><span class='subtitle'>" + data[key].address + "</span></p>";
            }
            $('.showroom-list').html(html);
        }, "json");
}
function selezioneSR(id) {
    var colonna =  $('.prodotti .secondcolumn');

}
function correggiAltezza() {
    if($('.designers .container').size() > 0) {
        if($('.designers .firstcolumn').height() < ($(window).height()-(44+183))) {
            $('.designers .container').height(($(window).height()-(44+183)));
            $('.designers .firstcolumn').height($(window).height()-(44+183));
            if($('.designers .secondcolumn').size()>0) {
                $('.designers .secondcolumn').height($(window).height()-(44+183));
            }
        }

    }

    if($('.prodotti .container').size() > 0) {
        if($('.prodotti .firstcolumn').height() < ($(window).height()-(44+183))) {
            $('.prodotti .container').height(($(window).height()-(44+183)));
            $('.prodotti .firstcolumn').height($(window).height()-(44+183));
            if($('.prodotti .secondcolumn').size()>0) {
                $('.prodotti .secondcolumn').height($(window).height()-(44+183));
            }
        }

    }
}

function showDesigner(id) {
    $('#loader').fadeIn("fast");
    $('.deslist h5').css("text-decoration",'none');     // Desottolineamo tutti i designers
    window.location.hash = id;
    $.get("/designers/ajax/" + id,
        function(data) {
            var colonna =  $('.designers .secondcolumn');

            // Mettiamo la foto del designer come sfondo
            $('.designers .container').css('background-image','url(' + data.immagine + ')');
            $('.designers .container').css('background-position','right center');
            $('.designers .container').css('background-size','contain');

            colonna.fadeIn();
            colonna.html("<h2>" + data.nome + "</h2>");
            colonna.append("<p>" + data.descrizione + "</p>");

            // Visualizziamo i prodotti legati a questo designer  solo se ce ne sono
            if(data.prodotti.length > 0) {
            colonna.append("<h3>Prodotti disegnati</h3>");
            for (var el in data.prodotti) {
                if( data.prodotti[el].immagini[0] != undefined)  {  // Nel caso il prodotto non abbia immagini mostro solo il nome
                    var html = "<a href=\"/product/" + data.prodotti[el].prodotto.id + "\"><img class=\"minuatura-prodotto\" src=\"/data/prodotti/" + data.prodotti[el].immagini[0].image_url + "\" title=\"" +  data.prodotti[el].prodotto.name + "\"></a>";
                }  else {
                    var html = "<a href=\"/product/" + data.prodotti[el].prodotto.id + "\">" +  data.prodotti[el].prodotto.name + "</a>"
                }


                colonna.append(html);
                }
            }
            $('#des-' + id).css("text-decoration",'underline');
            $('#loader').fadeOut();
        }, "json").fail(function() {
            alert("Designer non esistente");
            $('#loader').fadeOut();
        });
}




function showCategoryList(id) {
    $('#loader').fadeIn("fast");   // Visualizziamo il loader
    $('.catlist h5').css("text-decoration",'none');     // Desottolineamo tutte le categorie
    $.get("/product/ajax/category/" + id,
        function(data) {
            var colonna =  $('.prodotti .secondcolumn');
            colonna.html("<h1>Prodotti</h1>");
            if(data.length <= 0) { // Nessun prodotto per questa categoria
                alert("Nessun prodotto per questa categoria");
                colonna.fadeOut();
            } else {    // Abbiamo prodotti!
            colonna.fadeIn();
            $('#cat-' + id).css("text-decoration",'underline');    // Sottlineiamo la categoria selezionata
            for (var el in data) {
                colonna.append("<h5><a href='/product/" + data[el].id + "'>" + data[el].name + "</a></h5>");
                }
            }

            $('#loader').fadeOut();

        }, "json").fail(function() {     // In caso di errore
            alert("Categoria non esistente");
            $('#loader').fadeOut();
            colonna.fadeOut();
        });
}

