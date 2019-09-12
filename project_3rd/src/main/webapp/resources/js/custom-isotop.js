$(window).load(function(){
            var $container = $('.projectContainer');
            $container.isotope({
                filter: '*',

                animationOptions: {
                    duration: 750,
                    easing: 'linear',
                    queue: false

                }
            });
         
            $('.projectFilter a').click(function(){
            	$('.projectFilter .current').removeClass('current');
                $(this).addClass('current');
         
                var selector = $(this).attr('data-filter');
                $container.isotope({
                    filter: selector,
                    
                    animationOptions: {
                        duration: 750,
                        easing: 'linear',
                        queue: false
                    }
                 });
                 
                 return false;
            }); 
            
            $('.teams-projectFilter > a').click(function(){
            	var region = $(this).html();
            	location.href = "teams?currentPage=1&region=" + (region == '전체' ? '' : region)
            	
            	$('.projectFilter .current').removeClass('current');
            	$(this).addClass('current');
            	
            	return false;
            }); 



});