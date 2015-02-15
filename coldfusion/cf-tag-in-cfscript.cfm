<cfscript>
  /**
   * some examples on cf-tags within cfscript
   * - pretty much the format is the same for every single tag
   **/
   
  // param
  cfparam( name="form.firstname", default="John" );
   
  // cfform 
  cfform ( name="myform", action="myaction.cfm", method="post" ){
  // cfinput
    cfinput( type="text", name="firstname", value=form.firstname );
    cfinput( type="submit", name="submit", value="Submit" );
  }
   
  /**
   * cfscpreadsheet (for example) has some benefits. 
   * if you look at the current support for spreadsheet scripts, it is lacking. 
   * so, one would typically mix cfscripts/tag-based - or create a component that implements
   * the tag method then call the method within the script. 
   **/
  cfspreadsheet( 
    action="write", 
    filename="/mydirectory/myfile.xls", 
    name="MySheet", 
    sheetname="Sheet1", 
    overwrite="true" ); 
  
  /**
   * cffile and file
   **/
  FileWrite('/mydirectory/myfile.txt',theContent);
  // vs
  cffile( action="write", file="/mydirectory/myfile.txt", output=theContent );
  
  /**
   * writing it with argument collection
   **/
  stcArgs = {};
  stcArgs.from = "some.name@u.me";
  stcArgs.to = "to.you@from.me";
  stcArgs.server = "mystmp.server.yes";
  stcArgs.username = "test";
  stcArgs.password = "extreme";
  stcArgs.subject = "My Tag Script";
  cfmail( ArgumentCollection = stcArgs ){
    cfmailParam( name="header", value="myHeadValue" );
    cfmailParam( file="/mydirectory/myfile.txt", type="text/plain" );
    writeOutput('Hello, there!');
  }
  
  
</cfscript>
