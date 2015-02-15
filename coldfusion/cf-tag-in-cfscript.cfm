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
   * cfmail/cfmailparam
   **/
  cfmail( 
    from = "some.name@u.me",
    to = "to.you@from.me",
    server = "mystmp.server.yes",
    username = "test",
    password = "extreme",
    subject = "My Tag Script"
  ){
    cfmailParam( name="header", value="myHeadValue" );
    cfmailParam( file="/mydirectory/myfile.txt", type="text/plain" );
    writeOutput('Hello, there!');
  }
  
</cfscript>
