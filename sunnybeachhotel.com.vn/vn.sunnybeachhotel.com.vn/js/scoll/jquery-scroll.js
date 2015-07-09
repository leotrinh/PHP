function makeScrollable(wrapper, scrollable){
	
	var wrapper = $(wrapper), scrollable = $(scrollable);
	scrollable.hide();
	var loading = $('<div class="loading"></div>').appendTo(wrapper);

	setTimeout(function(){
				
				loading.hide();
				wrapper.css({overflow: 'hidden'});		
				scrollable.fadeIn('slow', function(){
				});					
			}, 1900);	
}
	
$(function(){	
	makeScrollable("div.sc_menu", "div.sc_menu");
});