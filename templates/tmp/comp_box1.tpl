
<div class="box">
	<div class="box-heading">
		{$Q_T}
		<div class="navigate navigate-{$Q_ID}">
			<div class="prev" style="display: block;"></div>
			<div class="next" style="display: block;"></div>
		</div>
	</div>
	<div class="clear"></div>
	<div class="box-content">
		<div class="caroufredsel_wrapper"
			style="display: block; text-align: left; float: none; position: relative; top: auto; right: auto; bottom: auto; left: auto; z-index: auto; width: 782px; height: 275px; margin: 0px; overflow: hidden;">
			<div class="box-product caruofredsel caruofredsel-{$Q_ID}"
				style="text-align: left; float: none; position: absolute; top: 0px; right: auto; bottom: auto; left: 0px; margin: 0px; width: 4702px; height: 275px;">

				
{foreach from=$Q_P item=v}
{include file='tmp/comp_box1_for.tpl' M='10' v=$v}
{/foreach}
				


				
				
				
				
				
				
				
				
				
				
				
				
				
			</div>
		</div>
	</div>
</div>

<div class="clear"></div>
<script type="text/javascript">$(document).ready(function() {
      
	// Using default configuration
	$(".caruofredsel-{$Q_ID}").carouFredSel({
      
                  infinite: false,
                  auto 	: false,
		
		  width : "100%",
                  prev	: {	
                          button	: ".navigate-{$Q_ID} .prev",
                          key		: "left"
                  },
                  next	: { 
                          button	: ".navigate-{$Q_ID} .next",
                          key		: "right"
                  }
                  ,swipe           : {
                      onTouch     : false,
                      onMouse     : false
                  }
		  ,onCreate : function(data) { $(this).css("height","auto");  }
        
        })

});

--></script>

