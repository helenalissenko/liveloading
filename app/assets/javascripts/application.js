$(document).ready(function() {
  $('a.hook').bind('inview', function(e,visible) {
    if( visible ) {
      $.getScript($(this).attr("href"));
    }
  });
});