<cfscript>

// there are 5 vegetables in our basket
vegetableBasket = 'Bitter Melon,Eggplant,Pole Beans,Okra,Zucchini';

// do something with them
writeOutput(listGetAt(vegetableBasket,1) 
			& ' is bitter, yet highly nutritious - must try. ');
writeOutput(listGetAt(vegetableBasket,2) 
			& ' is certainly best when grilled, skinned, and added to an omelette. ');
writeOutput(listGetAt(vegetableBasket,4) 
			& ' is great for battered then fried! ');

/**
 * This is how we'll simulate a failure:
 * Since there are only 5 vegetables in our basket,
 * let's see if we can get one that does not exist.
 **/
 writeOutput('However, I most definitely dislike ' 
 			& listGetAt(vegetableBasket,6) 
 			& '. There isn''t much you can do with it! ');
	 

try{
	// do something with them
	writeOutput(listGetAt(vegetableBasket,1) 
				& ' is bitter, yet highly nutritious - must try. ');
	writeOutput(listGetAt(vegetableBasket,2) 
				& ' is certainly best when grilled, skinned, and added to an omelette. ');
	writeOutput(listGetAt(vegetableBasket,4) 
				& ' is great for battered then fried! ');
	
	/**
	 * This is how we'll simulate a failure:
	 * Since there are only 5 vegetables in our basket,
	 * let's see if we can get one that does not exist.
	 **/
	 writeOutput('However, I most definitely dislike ' 
	 			& listGetAt(vegetableBasket,6) 
	 			& '. There isn''t much you can do with it! ');

} catch( any err ){
	writeOutput('Hey! That silly cashier failed to add all the vegetables!');
}


if( listLen(vegetableBasket) < 6 )
	writeOutput('Hey! That silly cashier failed to add all the vegetables!');


// there are 5 vegetables in our basket
vegetableBasket = 'Bitter Melon,Eggplant,Pole Beans,Okra,Zucchini';

// do something with them
writeOutput(getToken(vegetableBasket,1) 
			& ' is bitter, yet highly nutritious - must try. ');
writeOutput(getToken(vegetableBasket,2) 
			& ' is certainly best when grilled, skinned, and added to an omelette. ');
writeOutput(getToken(vegetableBasket,4) 
			& ' is great for battered then fried! ');

/**
 * though the sixth vegetable doesn't exist
 * the method will not fail
 **/
 writeOutput('However, I most definitely dislike ' 
 			& getToken(vegetableBasket,6) 
 			& '. There isn''t much you can do with it! ');


</cfscript>