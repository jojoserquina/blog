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
  
</cfscript>
