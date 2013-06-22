<!-- Login Widget -->				
<div class="widget widget_loginformwidget">	
	<div id="loadplace">
		<ul>
			<li class="widgettitle">Error</li>
			<li class="error-field">Your username or password seems to be incorrect.</li>
			<li class="try-again"><a href="" class="button">Try Again</a></li>
		</ul>         
	</div>
	<form id="loginForm" action="{$home}login" method="POST">
		<ul>
			<li class="widgettitle">Members</li>
			<li><input type="text" class="username" placeholder="Username" name="email" autocomplete="off"/></li>
			<li>
				<input type="password" class="password" placeholder="Password" name="pass" autocomplete="off" />
				<input type="submit"  value="Login" class="button submit" />
			</li>
		</ul>         
	</form>
</div>