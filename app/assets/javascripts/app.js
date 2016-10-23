$(document).ready(function(){
	$('.navbar').affix({
	  offset: {
	    top: function () {
	      return $('.heading-section').outerHeight();
	    },
	    
	  }
	})
})
