<cfscript>

public string function setAgeSayHello(string name, numeric age ){
    
    var sayHello = function ( string name ){
        return 'Hello, ' & arguments.name & '!' & ' You are ' & age & ' years old?';
    };
    
    return sayHello;
}

helloJojo = setAgeSayHello('Jojo',29);
helloArthur = setAgeSayhello('Arthur',33);
writeOutput( helloJojo('Jim') );

</cfscript>
