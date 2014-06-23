<cfscript>
	/**
	 * create a test query
	 **/
	testQuery = QueryNew('ID,Name,Address','Integer,VarChar,Varchar');
	QueryAddRow(testQuery,1);
	QuerySetCell(testQuery,'ID',1,1);
	QuerySetCell(testQuery,'Name','John Doe',1);
	QuerySetCell(testQuery,'Address','Street Named Doe',1);

	/**
	 * if we were to serialize this query and dump it, 
	 * the result will be something like
	 * {
	 *  "COLUMNS":["RECID","FULLNAME","STREETADDRESS"],
	 *  "DATA":[[1,"John Doe","Street Named Doe"]]
	 * }
	 **/
	writedump( SerializeJSON(testQuery) );

	/**
	 * create a structure based on the one record
	 **/ 
	stcTest = {};
	stcTest.recID = testQuery.RecID;
	stcTest.recFullName = testQuery.FullName;
	stcTest.recStreetAddress = testQuery.StreetAddress;
	
	/**
	 * if we were to serialize this structure and dump it, 
	 * the result will be something like
	 * {
	 *  "RECSTREETADDRESS":"Street Named Doe",
	 *  "RECID":1,"RECFULLNAME":"John Doe"
	 * }
	 **/
	writedump( SerializeJSON(stcTest) );
	
	
	/**
	 * @hint getMeSomething: my supercool remote method that returns json
	 **/ 
	remote any function getMeSomething() returnFormat='JSON' output='false'{
		
		// create me a structure
		var stcTest = {};
			stcTest.ID = 1;
			stcTest.recFullName = 'Janet Doe';
			stcTest.recStreetAddress = 'The Does Boulevard';
		
		// return me a serialized version of it
		return serializeJSON( stcTest );
	}
	
</cfscript>