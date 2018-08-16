$( document ).ready(function() {

	$('.test').text("this is still here");
	$('.test1').html("<%= render 'webdesign', web: @web %>");



	
});