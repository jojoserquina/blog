<cfscript>
	// there are 5 vegetables in our basket
	vegetableBasket = 'Bitter Melon,Eggplant,Pole Beans,Okra,Zucchini';

	// do something with them
	writeOutput(listGetAt(vegetableBasket,1) 
				& ' is bitter, yet highly nutritious - must try. ');
	writeOutput(listGetAt(vegetableBasket,2) 
				& ' is certainly best when grilled, skinned, and added to an omelette. ');
	
	/**
	 * This is how we'll simulate a failure:
	 * Since there are only 5 elements in our vegetable basket,
	 * let's see if we can get one that does not exist.
	 **/
	 writeOutput('However, I most definitely dislike ' 
	 			& listGetAt(vegetableBasket,6) 
	 			& '. There isn''t much you can do with it! ');
	 
</cfscript>