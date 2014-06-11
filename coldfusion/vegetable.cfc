/**
 * This is my vegetable object
 * 
 * @author	Jojo Serquina
 **/
component 
	hint="My vegetable object" 
	output="false" 
	persistent="false" {

	property name='Name' default="" type="string";
	property name='Type' default="" type="string";
	property name='Class' default="" type="string";
	property name='Color' default="" type="string";
	property name='Edible' default="true" type="boolean";
	
	/**
	 * Init method - I don't do much here.
	 **/
	public any function init(){
		return this;
	}
	
	
}