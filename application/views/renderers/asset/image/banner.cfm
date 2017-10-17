<cfscript>
    id       = args.id    ?: "";
    label    = args.label ?: "";
    imageUrl = event.buildLink(
    	  assetId    = id
    	, derivative = "bannerImage"
    );
</cfscript>
<cfoutput>
    <div class="banner-image">
        <img src="#imageUrl#" alt="#label#" title="#label#" />
    </div>
</cfoutput>