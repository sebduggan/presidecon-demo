component extends="preside.system.config.Config" {

	public void function configure() {
		super.configure();

		settings.preside_admin_path  = "admin";
		settings.system_users        = "sysadmin";
		settings.default_locale      = "en";

		settings.default_log_name    = "presidecondemo";
		settings.default_log_level   = "information";
		settings.sql_log_name        = "presidecondemo";
		settings.sql_log_level       = "information";

		settings.autoSyncDb          = true;
		
		settings.ckeditor.defaults.stylesheets.append( "css-bootstrap" );
		settings.ckeditor.defaults.stylesheets.append( "css-layout" );

		settings.features.websiteUsers.enabled = false;

		settings.assetManager.derivatives.bannerImage = {
			  permissions     = "inherit"
			, transformations = [
				{
					  method = "resize"
					, args   = {
						  width               = 1300
						, height              = 400
						, maintainAspectRatio = true
					  }
				}
			  ]
		};
		settings.assetManager.derivatives.bannerImageMedium = {
			  permissions     = "inherit"
			, transformations = [
				{
					  method = "resize"
					, args   = {
						  width               = 800
						, height              = 400
						, maintainAspectRatio = true
					  }
				}
			  ]
		};
		settings.assetManager.derivatives.bannerImageSmall = {
			  permissions     = "inherit"
			, transformations = [
				{
					  method = "resize"
					, args   = {
						  width               = 600
						, height              = 400
						, maintainAspectRatio = true
						, useCropHint         = true
					  }
				}
			  ]
		};



		settings.assetManager.derivatives.avatar = {
			  permissions     = "inherit"
			, transformations = [
				{
					  method = "resize"
					, args   = {
						  width               = 150
						, height              = 150
						, maintainAspectRatio = true
						, useCropHint         = true
					  }
				}
			  ]
		};
	}
}
