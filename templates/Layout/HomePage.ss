<% include Carousel %>

<!-- Main hero unit for a primary marketing message or call to action -->
<% include HeroUnit %>

$Form
$PageComments

<!-- Example row of columns -->
<div class="row">
	<% if Quicklinks %>
	<div class="col-md-3">
		<h2><i class="icon-link"></i> Quicklinks</h2>
		<ul class="linkSet">
			<% loop Quicklinks %>
				<li class="$EvenOdd $FirstLast"><a href="$Link" class="$FirstLast">$Name</a></li>
			<% end_loop %>
		</ul>
	</div>
	<% end_if %>

	<div class="col-md-4 feature">
		<% if $FeatureOneTitle %>
			<h2><% if $FeatureOneCategory %><i class="icon-$FeatureOneCategory"></i> <% end_if %>$FeatureOneTitle</h2>
		<% end_if %>
		<% if FeatureOneContent %>
			$FeatureOneContent
		<% end_if %>
		<% if $FeatureOneLink && $FeatureOneButtonText %>
			<% if FeatureOneLink %>
				<p><a class="btn btn-default" href="$FeatureOneLink.Link">$FeatureOneButtonText</a></p>
			<% end_if %>
		<% end_if %>

		<% if $FeatureTwoTitle %>
			<h2><% if $FeatureTwoCategory %><i class="icon-$FeatureTwoCategory"></i> <% end_if %>$FeatureTwoTitle</h2>
		<% end_if %>
		<% if FeatureTwoContent %>
			$FeatureTwoContent
		<% end_if %>
		<% if $FeatureTwoLink && $FeatureTwoButtonText %>
			<% if FeatureTwoLink %>
				<p><a class="btn btn-default" href="$FeatureTwoLink.Link">$FeatureTwoButtonText</a></p>
			<% end_if %>
		<% end_if %>
	</div>

	<% if NewsItems %>
	<div class="col-md-5 resultsList">
		<h2><i class="icon-th-list"></i> <a href="$NewsPage.Link">$NewsPage.Title</a></h2>
		<% loop NewsItems %>
			<article class="$EvenOdd $FirstLast">
				<% include NewsItem %>
			</article>
		<% end_loop %>
	</div>
	<% end_if %>
</div>

<div class="row">
	<div class="col-md-12">
		<% include LastEdited %>
	</div>
</div>