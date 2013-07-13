//= require jquery
//= require jquery_ujs
//


$(function() {
    $('.existing-image-block img').click(function() {
        a = confirm("Sicuro di voler eliminare questa immagine?");
        if(a) {
            $.ajax({
                type: "DELETE",
                url: "/admin/products/ajaximg/" + $(this).attr('data-id')
            }).done(function() {
                   window.location.reload();
                }).fail(function() {
                    alert("Errore nell'eliminazione immagine")
                });
        }
    })
});