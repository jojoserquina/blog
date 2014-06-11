<cfset lbrk = '<br />' />
<cfscript>
	// five vegetables I like to eat
	vegetableList = 'Bitter Melon,Eggplant,Pole Beans,Okra,Zucchini';

	writeOutput(listGetAt(vegetableList,1) & ' is bitter, yet highly nutritious - must try. ');
	writeOutput(listGetAt(vegetableList,2) & ' is certainly best when grilled, skinned, and added to an omelette. ');
	writeOutput(lbrk & '...' & lbrk);
	
</cfscript>