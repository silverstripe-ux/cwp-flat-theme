<% include Carousel %>

$Form
$PageComments

<!-- Example row of columns -->
<div class="row">
	
	<div class="col-md-5">
		
			<!-- Main hero unit for a primary marketing message or call to action -->
		<% include HeroUnit %>
		
		<% if Quicklinks %>
		<div>
			<h2><i class="icon-link"></i> Quicklinks</h2>
			<ul class="linkSet">
				<% loop Quicklinks %>
					<li class="$EvenOdd $FirstLast"><a href="$Link" class="$FirstLast">$Name</a></li>
				<% end_loop %>
			</ul>
		</div>
		<% end_if %>
	</div>

	<div class="col-md-6">
		<div class="feature feature-one">
			<% if $FeatureOneTitle %>
				<h2><% if $FeatureOneCategory %><i class="icon-$FeatureOneCategory"></i> <% end_if %>$FeatureOneTitle</h2>
			<% end_if %>
			<% if FeatureOneContent %>
				$FeatureOneContent
			<% end_if %>
			<% if $FeatureOneLinkID && $FeatureOneButtonText %>
				<% if FeatureOneLinkID %>
					<p><a class="btn btn-primary" href="$FeatureOneLink.Link">$FeatureOneButtonText</a></p>
				<% end_if %>
			<% end_if %>
		</div>

		<div class="feature feature-two">
			<% if $FeatureTwoTitle %>
				<h2><% if $FeatureTwoCategory %><i class="icon-$FeatureTwoCategory"></i> <% end_if %>$FeatureTwoTitle</h2>
			<% end_if %>
			<% if FeatureTwoContent %>
				$FeatureTwoContent
			<% end_if %>
			<% if $FeatureTwoLinkID && $FeatureTwoButtonText %>
				<% if FeatureTwoLinkID %>
					<p><a class="btn btn-primary" href="$FeatureTwoLink.Link">$FeatureTwoButtonText</a></p>
				<% end_if %>
			<% end_if %>
		</div>
	</div>

	<div class="col-md-5">
		<% if NewsItems %>
		<div class="resultsList">
			<h2><a href="$NewsPage.Link"><i class="icon-th-list"></i> $NewsPage.Title</a></h2>
			<% loop NewsItems %>
				<article class="$EvenOdd $FirstLast">
					<% include NewsItem %>
				</article>
			<% end_loop %>
		</div>
		<% end_if %>
	</div>
	
</div>

<div class="row">
	<div class="col-md-16 clearfix">
		<% include LastEdited %>
	</div>
</div>
