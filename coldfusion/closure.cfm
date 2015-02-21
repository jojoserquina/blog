<cfscript>

public string function sayHello( string name, numeric age=0 ){
    var myClosureFunction = function( string name){
        return 'Hello, ' & arguments.name & '!';
    }
    return myClosureFunction;
}

</cfscript>
