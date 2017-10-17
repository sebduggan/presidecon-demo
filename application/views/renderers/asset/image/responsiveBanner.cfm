<cfscript>
	id             = args.id    ?: "";
	label          = args.label ?: "";
	imageUrlLarge  = event.buildLink( assetId=id, derivative="bannerImage"       );
	imageUrlMedium = event.buildLink( assetId=id, derivative="bannerImageMedium" );
	imageUrlSmall  = event.buildLink( assetId=id, derivative="bannerImageSmall"  );
</cfscript>
<cfoutput>
    <div class="banner-image">
		<picture>
			<source srcset="#imageUrlLarge#"  media="(min-width: 901px)">
			<source srcset="#imageUrlMedium#" media="(min-width: 600px)">
			<source srcset="#imageUrlSmall#">
			<img src="#imageUrlMedium#" alt="#label#" title="#label#">
		</picture>
	</div>
</cfoutput>