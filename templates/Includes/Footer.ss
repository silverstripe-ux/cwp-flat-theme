<footer class="container typography" role="contentinfo">
	<h2 class="sr-only">Footer</h2>
	<div class="col-md-11">
		<% if Footer %>
			<nav role="navigation">
				<ul class="nav">
					<% with Footer %>
						<% loop Children %>
							<li class="$LinkingMode<% if $LinkingMode = current %> active<% end_if %> pull-left">
								<a href="$Link" class="$LinkingMode <% if First %>first<% end_if %>">
									$MenuTitle.XML
								</a>
								<% if Last != 1 %>|<% end_if %>
							</li>
						<% end_loop %>
					<% end_with %>
				</ul>
			</nav>
		<% end_if %>

		<div class="footer-logo">
			<% if SiteConfig.FooterLogo %>
				<% if SiteConfig.FooterLogoLink %>
					<a href="$SiteConfig.FooterLogoLink">
				<% end_if %>
					<img src="$SiteConfig.FooterLogo.URL" width="$SiteConfig.FooterLogo.Width" height="$SiteConfig.FooterLogo.Height"<% if SiteConfig.FooterLogoDescription %> alt="$SiteConfig.FooterLogoDescription" title="$SiteConfig.FooterLogoDescription"<% end_if %> />
				<% if SiteConfig.FooterLogoLink %>
					</a>
				<% end_if %>
			<% else %>
				<a href="http://newzealand.govt.nz/">
					<img src="$ThemeDir/images/logo-btext-wbg.gif" width="150" height="40" alt="newzealand.govt.nz - connecting you to New Zealand central &amp; local government services" title="newzealand.govt.nz - connecting you to New Zealand central &amp; local government services" />
				</a>
			<% end_if %>
		</div>
	</div>

	<div class="col-md-5">
		<% if SiteConfig.FacebookURL || SiteConfig.TwitterUsername %>
			<aside class="socialLinks" role="complementary">
				<% if SiteConfig.TwitterUsername %>
					<a href="http://www.twitter.com/$SiteConfig.TwitterUsername" title="Follow us on Twitter" target="_blank">Follow us on Twitter</a>
				<% end_if %>
				<% if SiteConfig.FacebookURL %>
					<a href="http://www.facebook.com/$SiteConfig.FacebookURL" title="Join us on Facebook" target="_blank">Join us on Facebook</a>
				<% end_if %>
			</aside>
			<div class="footer-copyright">
				<p><small>$SiteConfig.Title &copy; $CurrentDatetime.Format(Y)</small></p>
			</div>
		<% end_if %>
	</div>
</footer>
