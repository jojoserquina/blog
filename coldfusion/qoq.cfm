<cfset myQuery = QueryNew('ID,Name,Address','Integer,VarChar,Varchar') />
<cfset QueryAddRow(myQuery,1) />
<cfset QuerySetCell(myQuery,'ID',1,1) />
<cfset QuerySetCell(myQuery,'Name','John Doe',1) />
<cfset QuerySetCell(myQuery,'Address','Street Named Doe',1) />

<cfquery name="qNew" dbtype="query">
	SELECT * FROM myQuery WHERE ID = 1;
</cfquery>

<cfdump var="#qNew#">
<cfabort>
