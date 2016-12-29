# JQuery Study Plan

* I plan to approach JQuery by focusing on simple task that I will probbably find myself doing alot in javasript. Looking for JQuery code that will shorten the amount of code I have to write for a common functions
. Like mouse hover and clickible events. 

## Here is Some Code that I have Learned JQuery tricks 


### Mouse enter and Mouse leave
`$(document).ready(function() {
    $('div').mouseenter(function() {
        $('div').fadeTo('fast', 1);
    });
    $('div').mouseleave(function() {
        $('div').fadeTo('fast', .5);
    });  
});`

### Hide HTML element
`$(document).ready(function() {
    $('div').hide();
});`

### Click and Fadeout
`$(document).ready(function() {
    $('div').click(function() {
        $('div').fadeOut('slow');
    });
});`

### Mouse Enter, Mouse Leave, Height manipulation, and Toggle
`$(document).ready(function() {
   $('div').mouseenter(function() {
       $(this).animate({
           height: '+=20px'
       });
   });
   $('div').mouseleave(function() {
       $(this).animate({
           height: '-=30px'
       }); 
   });
   $('div').click(function() {
       $(this).toggle(1000);
   }); 
})`