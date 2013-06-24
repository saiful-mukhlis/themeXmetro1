<style>
<!--
.profile-img {
    -moz-border-radius: 50%;
    -webkit-border-radius: 50%;
    border-radius: 50%;
}
-->
</style>

<!-- Testimonial Widget -->
<div class="box category-block">
	<div class="box-heading">Testimoni</div>
	<div class="box-content">
			{foreach $testimonial as $v}
				<div class="box-category">
					<ul>
						<li style="text-align: center;"">
						<div  style="text-align: center;padding-top: 10px;margin-bottom: -20px;">
						{if $v.testimonial_img neq ''}
						<img class="profile-img" src="{$store_image}/{$v.testimonial_img}"  />
						{else}
						<img class="profile-img" src="{$TEMPLATE_USE}/templates/images/img_testimonial.jpg" />
						{/if}
						</div>
							<h5 style="text-align: center;">
							
							{$v.testimonial_name}
							</h5>
							<p>{$v.testimonial_content}</p>
						</li>
					</ul>
				</div>

			{/foreach}
			<a href="{$page_testimonial_link}" title="Other"><div class="box-category button-box button-boxb">Lainnya &raquo;</div></a>
			<a href="{$home}add_testimonial" title="Add"><div class="box-category button-box  button-boxa">Tambah &raquo;</div></a>
			
	</div>
</div>