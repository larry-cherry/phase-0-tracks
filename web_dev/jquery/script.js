console.log("Loading Script...")

$(document).ready(function() {

    $(".navlink").mouseenter(function() {
        $(".navlink").fadeTo('fast', .5);
    });
    $('.navlink').mouseleave(function() {
        $('.navlink').fadeTo('fast', 1);
	});


	$('div').mouseenter(function() {
    	$('div').fadeTo('slow', .85);

    });

    $('div').mouseleave(function() {
    	$('div').fadeTo('fast', 1);
    });

    $("#Orange").click(function() {
       $(this).toggle(1000);
   }); 
   
   $('div').mouseenter(function() {
       $(this).animate({
           height: '+=50px'
       });
   });
   $('div').mouseleave(function() {
       $(this).animate({
           height: '-=50px'
       }); 
    });
   $('#Red').click(function(){
   		$('#Red').fadeOut("slow");
   	});

});