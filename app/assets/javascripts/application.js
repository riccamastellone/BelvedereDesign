// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
$(function() {
    correggiAltezza();
    if(window.location.hash) {
        showDesigner(parseInt(window.location.hash.substring(1)));
    }
});
$(window).resize(function() {
    correggiAltezza();

});
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
    window.location.hash = id;
    $.get("/designers/ajax/" + id,
        function(data) {
            var colonna =  $('.designers .secondcolumn');
            $('.designers .container').css('background-image','url(' + data.immagine + ')');
            $('.designers .container').css('background-position','right center');
            $('.designers .container').css('background-size','contain');
            colonna.fadeIn();
            colonna.html("<h2>" + data.nome + "</h2>");
            colonna.append("<p>" + data.descrizione + "</p>");
            if(data.prodotti.length > 0) {
            colonna.append("<h3>Prodotti disegnati</h3>");

            for (var el in data.prodotti) {
                var html = "<a href=\"#\"><img class=\"minuatura-prodotto\" src=\"/data/prodotti/" + data.prodotti[el].immagini[0].image_url + "\" title=\"" +  data.prodotti[el].prodotto.name + "\"></a>";
                colonna.append(html);
            }
            }

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

