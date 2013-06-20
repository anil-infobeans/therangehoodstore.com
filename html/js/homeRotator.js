var oddBanner = new Array("http://www.therangehoodstore.com/media/banner-ad3.jpg","Get Your Range Hood Store Discount Coupon Code!");
var weekendBanner = new Array("http://www.therangehoodstore.com/media/banner-ad2.jpg","Get Your Range Hood Store Discount Coupon Code!");
var evenBanner = new Array("http://www.therangehoodstore.com/media/banner-ad.jpg","Get Your Range Hood Store Discount Coupon Code!");

/*NO EDITING BELOW*/

//var d=new Date(2012,2,12);
var d = new Date();
var weekDay 	= d.getDay();
var days		= parseInt(d.getTime()/86400000)-weekDay+1;
var displayBanner = new Array();

/*var weekday=new Array(7);
weekday[0]="Sunday";
weekday[1]="Monday";
weekday[2]="Tuesday";
weekday[3]="Wednesday";
weekday[4]="Thursday";
weekday[5]="Friday";
weekday[6]="Saturday";

console.log(days);
console.log("Today is "+d.getDate()+" - " + weekday[d.getDay()]+" - last Monday was on "+days);*/


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

document.write('<img src="'+displayBanner[0]+'" border="0" id="bannerImage" alt="'+displayBanner[1]+'" title="'+displayBanner[1]+'" />');

