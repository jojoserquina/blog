component
  output=false {
  
  public any function init(){
    return this;
  }
  
  /**
   * Create Date Time with timezone 
   * 
   * @yr - numeric, the year of the date. Default set to Now(). Valid year between (1970-2050)
   * @mo - numeric, the month of the date. Default set to Now(). Valid values (1-12) 
   * @dy - numeric, the day of the date. Default set to Now(). Valid values (1-31)
   * @hr - numeric, the hour of the date. Default value is 0. Valid values (0-23)
   * @mn - numeric, the minute of the date. Default value is 0. Valid values (0-59)
   * @sc - numeric, the seconds of the date. Default value is 0. Valid values (0-59)
   * @zonename - string. The timezone name associated to thed ate. Default is America/New_York (EST)
   **/ 
  public any function customCreateDateTime( numeric yr=Year(Now())
					  , numeric mo=Month(Now())-1
					  , numeric dy=Day(Now())
					  , numeric hr=0
					  , numeric mn=0
					  , numeric sc=0
					  , string zonename='America/New_York' ){
	
	var y = JavaCast("int",Arguments.yr);
	var m = JavaCast("int",Arguments.mo)-1;
	var d = JavaCast("int",Arguments.dy);
	var h = JavaCast("int",Arguments.hr);
	var mm = JavaCast("int",Arguments.mn);
	var s = JavaCast("int",Arguments.sc);
	
	/**
	 * perform some basic validations 
	 * or make it as complex as you'd like
	 **/
	if( y < 1970 || y > 2050 )
		return 'Year out of range.';
	if( m < 0 || m > 11 )
		return 'Month out of range.';
	if( (d < 1 || d > 31) || ( m == 1 && d > 29 ) )
		return 'Day out of range.';
	if( h < 0 || h > 23 )
		return 'Hour out of range.';
	if( mm < 0 || mm > 59 )
		return 'Minute out of range.';
	if( s < 0 || s > 59 )
		return 'Seconds out of range.';
	
	/**
	 * create a timezone object using Java's TimeZone utility
	 * and set the zone using the zonename arguments
	 **/
	var objTZ = createObject( "java", "java.util.TimeZone" );
	var tz = objTZ.getTimeZone( JavaCast("string", arguments.zonename) );
	
	/**
	 * create a calendar object using Java's calendar utility
	 * set the calendar's timezone to the timezone object we created
	 * then set the calendar date to the arguments
	 **/
	var objCal = createObject( "java", "java.util.GregorianCalendar" );
	var cal = objCal.init(tz);
		  cal.set(y,m,d,h,mm,s);
		  
	/**
	 * create a formatter using Java's SimpleDateFormat utility
	 * you can pretty much use whatever date formatting you want
	 **/
	var objDF = createObject( "java", "java.text.SimpleDateFormat" );
	var outputFormat = objDF.init( javaCast( "string", "yyyy-MM-dd HH:mm:ss" ) );
	    outputFormat.setTimeZone(tz);
	
	// voila - just format and return the calendar's date/time
	return outputFormat.format(cal.getTime());
  
}
