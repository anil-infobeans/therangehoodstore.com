var oddBanner = new Array("http://www.therangehoodstore.com/media/banner-ad3.jpg","Get Your Range Hood Store Discount Coupon Code!");
var weekendBanner = new Array("http://www.therangehoodstore.com/media/banner-ad2.jpg","Get Your Range Hood Store Discount Coupon Code!");
var evenBanner = new Array("http://www.therangehoodstore.com/media/banner-ad.jpg","Get Your Range Hood Store Discount Coupon Code!");

/*NO EDITING BELOW*/

//var d=new Date(2012,2,12);
var d = new Date();
var weekDay 	= d.getDay();
var days		= parseInt(d.getTime()/86400000)-weekDay+1;
var displayBanner = new Array();

if(weekDay == 6 || weekDay == 0 ){
	//Do Sat/Sun Banner
	displayBanner = weekendBanner;
	}
else 
if(days%2 == 0){
	//odd day
	displayBanner = oddBanner;
	}
else{
	//even day
	displayBanner = evenBanner;
	}	

jQuery("#rotator").html('<img src="'+displayBanner[0]+'" border="0" id="bannerImage" alt="'+displayBanner[1]+'" title="'+displayBanner[1]+'" />');

