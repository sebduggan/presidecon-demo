<!---
	This view file has been automatically created by the preside dev tools
	scaffolder. Please fill with meaningful content and remove this comment
--->

<cf_presideparam name="args.title"         field="page.title"        editable="true" />
<cf_presideparam name="args.main_image"    field="page.main_image" />
<cf_presideparam name="args.main_content"  field="page.main_content" editable="true" />


<cfoutput>
	#renderAsset( assetId=args.main_image, context="banner" )#

	<div class="page-content">
		<h1>#args.title#</h1>

		#args.main_content#
	</div>
</cfoutput>