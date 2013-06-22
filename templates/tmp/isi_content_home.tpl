<!-- start content -->

<!-- start flexslider -->
{include file='tmp/comp_flexslider.tpl'}
<!-- end flexslider -->


<!-- start box1 -->
{include file='tmp/comp_box1.tpl' Q_ID='featured' Q_T=$TEXT_HOME_TITLE_LIST_TOP Q_P=$product_new Q_N='News'}
<!-- end box1 -->



<!-- start welcome-buttons -->
<div class="welcome-buttons">
	<a href="">{html_img_cls F='img/theme/welcome1.png' ALT='Welcome' CLS='fade-image'}</a><a href="#">{html_img_cls F='img/theme/welcome2.png' ALT='Welcome' CLS='fade-image'}></a>
</div>
<!-- end welcome-buttons -->


<!-- start box2 -->
{include file='tmp/comp_box1.tpl' Q_ID='latest'  Q_T=$TEXT_HOME_TITLE_LIST_BOTTOM Q_P=$product_popular  Q_N='Hot'}
<!-- end box2 -->


<!-- end content -->

