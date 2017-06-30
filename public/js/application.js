$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them
  $("article").click("button.upvote-button",function(e) {
    e.preventDefault();
    var $button = $(this)

    $button.find("button.upvote-button").css("background-color", "green")
    $.ajax ({
      url: $(this).find("form").attr('action'),
      method: 'POST',
      // data:
    }).done(function(res){
      $button.find("button.upvote-button").parent().parent().find("span.points").html(res)

    })
})

// $("article").click("button.downvote-button",function(e) {
//   e.preventDefault();
//   var $button = $(this)
//
//   $button.find("button.downvote-button").css("background-color", "red")
//   $.ajax ({
//     url: $(this).find("form").attr('action'),
//     method: 'POST',
//     // data:
//   }).done(function(res){
//     $button.find("button.downvote-button").parent().parent().find("span.points").html(res)
//
//   })
// })

  $("article").find(".delete").click(function(e) {
    e.preventDefault();
    var $deleteArticle = this
    $($deleteArticle).parent().parent().remove()
    $.ajax ({
      url: $("article").find(".delete").attr('href'),
      method: 'delete',
      // data:
    }).done(function() {
      return;
    })
  })
   //
  //    $("#posts").click("input[type=submit]", function(e) {
  //    e.preventDefault();
  //    $.ajax ({
  //      url: $("form#posts").attr("action"),
  //      method: "POST",
  //      data: $("input[type=text]").serialize()
  //    }).done(function(res) {
  //      console.log(res)
  //      $(".post-container").append(res)
  //    })
  //  })

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
});
