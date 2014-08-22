/**
* Copyright Since 2005 Ortus Solutions, Corp
* www.coldbox.org | www.luismajano.com | www.ortussolutions.com | www.gocontentbox.org
**************************************************************************************
*/
component{
	this.name = "A TestBox Runner Suite " & hash( getCurrentTemplatePath() );
	// any other application.cfc stuff goes below:
	this.sessionManagement = true;

	// any mappings go here, we create one that points to the root called test.
	this.mappings[ "/test" ] = getDirectoryFromPath( getCurrentTemplatePath() );
	rootPath = REReplaceNoCase( this.mappings[ "/test" ], "test(\\|/)", "" );
	this.mappings[ "/root" ]   = rootPath;
	this.mappings[ "/cbvalidation" ]   = rootPath & "/modules/validation";

	this.datasource = "coolblog";
	this.ormEnabled = "true";

	this.ormSettings = {
		cfclocation = [ "resources" ],
		logSQL = true,
		dbcreate = "update",
		secondarycacheenabled = false,
		flushAtRequestEnd = false,
		skipcfcWithError = true
	};

	// request start
	public boolean function onRequestStart( String targetPage ){

		return true;
	}
}