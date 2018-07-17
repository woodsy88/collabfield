// With this js code we simply store selected post’s data into variables and fill modal
// window’s elements with this data. 
$(document).on('turbolinks:load', function() {
  // when a post is clicked, show its full content in a modal window
  $("body").on( "click", ".single-post-card, .single-post-list", function() {

    // when you click on a card, store the card info in variables
    var posted_by = $(this).find('.post-content .posted-by').html();
    var post_heading = $(this).find('.post-content h3').html();
    var post_content = $(this).find('.post-content p').html();
    var interested = $(this).find('.post-content .interested').attr('href');

    // take variable and insert them into modal
    $('.modal-header .posted-by').text(posted_by);
    $('.loaded-data h3').text(post_heading);
    $('.loaded-data p').text(post_content);
    $('.loaded-data .interested a').attr('href', interested);

    //  make the modal window visible.
    $('.myModal').modal('show');
  });
});
