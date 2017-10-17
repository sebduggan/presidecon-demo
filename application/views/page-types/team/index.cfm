<!---
	This view file has been automatically created by the preside dev tools
	scaffolder. Please fill with meaningful content and remove this comment
--->

<cf_presideparam name="args.title"         field="page.title"        editable="true" />
<cf_presideparam name="args.main_content"  field="page.main_content" editable="true" />

<cfscript>
	team = args.team ?: queryNew("");
</cfscript>


<cfoutput>
	<h1 class="center">#args.title#</h1>
	#args.main_content#

	<div class="team">
		<cfloop query="team">
			<div class="team-member">
				<a href="#event.buildLink( assetId=team.photo )#">#renderAsset(
					  assetId = team.photo
					, args    = {
						  derivative = "avatar"
						, class      = "avatar"
					  }
				)#</a>
				<h2>#team.name#</h2>
			</div>
		</cfloop>
	</div>
</cfoutput>