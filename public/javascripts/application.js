// Modal Dialogs
function openModal(href) {
  var modal = $("#modal")
  if (!modal.length){
    modal = $('<div id="modal"><div id="window" class="window"></div></div>');
    $('body').append(modal);
  }
  $.get(href, function(data){
    modal.find('#window').html(data);
    modal.overlay({
      mask: {
        color: '#333333',
        loadSpeed: 300,
        opacity: 0.6
      },
      load: true
    }).load();
  });
}
function closeModal() {
  $("#modal").overlay().close();
}

// Modal Links
$("a[rel=modal]").live('click', function(e) {
  e.preventDefault();
  openModal(this.href);
});
