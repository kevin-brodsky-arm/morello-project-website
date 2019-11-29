$().ready(function(){
    if (navigator.userAgent.match(/(iPod|iPhone|iPad)/)) {
        $('#wrapper').addClass("ios");
        $('#jumbotron-text').removeClass("flex-center");
    }
});
