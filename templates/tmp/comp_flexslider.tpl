<div class="flexslider">
	<ul class="slides">
{section name=index loop=$slide_banner}
<li>
	<a href="{$slide_banner[index].banner_link}" target="{$slide_banner[index].banner_target}">
		<img src="{$store_page_banner}/{$slide_banner[index].banner_image}" width="{$SLIDE_WIDTH}" height="{$SLIDE_HEIGHT}" />
	</a>
</li>
{/section}

	</ul>
	<ul class="flex-direction-nav">
		<li><a class="flex-prev" href="#">Previous</a></li>
		<li><a class="flex-next" href="#">Next</a></li>
	</ul>
</div>

<div class="mini-sliders">


<a href="">{html_img_cls F='img/theme/minislider2.jpg' ALT='Slider 2 mini' CLS='fade-image'}</a>
<a href="">{html_img_cls F='img/theme/minislider1.jpg' ALT='Slider 1 mini' CLS='fade-image'}</a>


<style type="text/css">
.flexslider {
	width: 690px;
	float: left;
}
</style>
</div>
<div class="clear"></div>


<script type="text/javascript">$(document).ready(function() {
 	
  $('.flexslider').flexslider({
    animation: "fade",
    controlNav: false,
    directionNav: true,
    start: function(slider) {
	  
	
	  
      }
  });

     
  
});
--></script>