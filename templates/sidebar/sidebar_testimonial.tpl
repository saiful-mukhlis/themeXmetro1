<!-- Testimonial Widget -->
<div class="box category-block">
	<div class="box-heading">Testimoni</div>
	<div class="box-content">
			{foreach $testimonial as $v}
				<div class="box-category">
					<ul>
						<li>
							<h5>{$v.testimonial_name}</h5>
							<p>{$v.testimonial_content}</p>
						</li>
					</ul>
				</div>

			{/foreach}
			<a href="{$page_testimonial_link}" title="Other"><div class="box-category button-box">Lainnya &raquo;</div></a>
			<a href="{$home}add_testimonial" title="Add"><div class="box-category button-box">Tambah &raquo;</div></a>
			
	</div>
</div>