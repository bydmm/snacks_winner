$like = $("#js-vote-<%= @snack.id %>").find(".like")
$like.html('<i class="fa fa-heart-o"></i> <%= @snack.likes.count %>')