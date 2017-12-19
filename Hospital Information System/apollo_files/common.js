$(document).ready(function(){
	/*Mobile Left Menu*/
    $( ".mobile-leftnav" ).click(function() {
  $( ".leftnav-menu" ).slideToggle( "slow" );  
    });


$(".cancer-banner-slider").flexslider({
		animation: "slide",
		slideshow:true,
		animationSpeed: 1500,
		slideshowSpeed: 4500
	});

$(".main-menu nav > ul > li").hover(function() {
if(parseInt($(window).width())>=1024) {
$(".quick-links ul").stop().slideUp('fast');
$(".quick-links a.qlink").addClass('active');
$(this).find("> ul").stop().slideDown();
}
},function() {
if(parseInt($(window).width())>=1024) {
$(this).find("> ul").stop().slideUp();
}
});
$(".main-menu nav > ul > li > ul > li").hover(function() {
if(parseInt($(window).width())>=1024) {
$(this).find("> ul").stop().slideDown();
}
},function() {
if(parseInt($(window).width())>=1024) {
$(this).find("> ul").stop().slideUp();
}
});

$(".banner-block, .iam-here, .equipment, .key-medical-outer, .patients-speak-outer, footer, .main").hover(function() {
$(".quick-links ul").stop().slideUp('fast');
$(".quick-links a.qlink").addClass('active');
$(this).find("> ul").stop().slideDown();
},function() {
$(this).find("> ul").stop().slideUp();
});

$(".banner-slider").flexslider({
animation: "slide",
animationSpeed: 1500,
slideshowSpeed: 4500
});
$(".popup-cont").click(function(){
if ($(window).width() <= 680) {
$(this).find(".banner-hover-content").slideToggle('slow');
$(this).toggleClass('collapse-slide');
}
});
if($(window).scrollTop()>50) {
$(".icon-top").stop().animate({
bottom:5
},300);
} else {
$(".icon-top").stop().animate({
bottom:-45
},300);
}
$(window).scroll(function() {
if($(window).scrollTop()>50) {
$(".icon-top").stop().animate({
bottom:5
},300);
} else {
$(".icon-top").stop().animate({
bottom:-45
},300);
}
});
$(".icon-top").click(function() {
$("body,html").animate({
scrollTop:0
},500);
});
$(".icon-arrow").click(function() {
if($(this).attr('class')!='icon-arrow up-arrow') {
$(".hidden-social").show();
$(this).addClass('up-arrow');
} else {
$(".hidden-social").hide();
$(this).removeClass('up-arrow');
}
});
$('.equipment-slider').flexslider({
animation: "slide",
minItems: 1,
maxItems: 6,
move:6,
animationSpeed: 1500,
slideshowSpeed: 5000,
itemWidth:100,
controlNav:false
});

$('.keymedical').flexslider({
animation: "slide",
animationSpeed: 1500,
slideshowSpeed: 5000
});

$('.latest').flexslider({
animation: "slide",
animationLoop: true,
itemWidth: 247,
itemMargin: 5,
minItems: 1,
maxItems: 2 ,
animationSpeed: 1500,
slideshowSpeed: 5000
});
$('.patients').flexslider({
animation: "slide",
animationLoop: true,
itemWidth: 247,
itemMargin: 5,
minItems: 1,
maxItems: 1,
animationSpeed: 1500,
slideshowSpeed: 5000
});
/*Show Case*/
$('.ah-newsevents').flexslider({
		 animation: "slide",
		 animationLoop: true,
		slideshow:false,
		 //minItems: 1,
		 //maxItems: 1,
		 //itemWidth: 247,
		animationSpeed: 1500,
		slideshowSpeed: 5000
	 });






$('.mobilemenu').click(function(){
if($(".openmenu").attr('class')!='openmenu active') {
$('.mobilemenu').addClass('mobilemenu-close');
$(".openmenu").addClass('active');
$('.openmenu').animate({
right:0
},500);
$('header.ulp-header, .ulp-content, footer.ulp-footer').animate({
left:-250
},500);
$(".mobile-arrow").addClass('active');
$("body").css('overflow-y','hidden');
} else {
$('.mobilemenu').removeClass('mobilemenu-close');
$(".openmenu").removeClass('active');
$(".mobile-arrow").removeClass('active');
$('.openmenu').animate({
right:-250
},500);
$('header.ulp-header, .ulp-content, footer.ulp-footer').animate({
left:0
},500);
$("body").css('overflow-y','auto');
}
});
$('header.ulp-header, .ulp-content, footer.ulp-footer').click(function() {
if(parseInt($(this).css('left'))<0) {
$(".openmenu").removeClass('active');
$('.openmenu').animate({
right:-250
},500);
$(".mobile-arrow").removeClass('active');
$('.mobilemenu').removeClass('mobilemenu-close');
$('header.ulp-header, .ulp-content, footer.ulp-footer').animate({
left:0
},500);
$("body").css('overflow-y','auto');
}
});
$(".searchicon").click(function() {
if($(this).attr('class')=='searchicon active') {
$(".search-social .search").stop().slideDown('slow');
$(".searchicon").removeClass('active');
} else {
$(".search-social .search").stop().slideUp('slow');
$(".searchicon").addClass('active');
}
});
$(".quick-links a.qlink").click(function() {
if($(this).attr('class')=='qlink active') {
$(".quick-links ul").stop().slideDown('slow');
$(".quick-links a.qlink").removeClass('active');
} else {
$(".quick-links ul").stop().slideUp('slow');
$(".quick-links a.qlink").addClass('active');
}
});
$(".explore-blk ul li.popup-cont").each(function(index) {
$(this).hover(function(){
if ($(window).width() > 680) {
//$(".banner-hover-content").stop().fadeOut('medium').eq(index).stop().fadeIn('medium');
//$(".bg-banner").fadeIn('medium');
$(this).find(".banner-hover-content").stop().fadeIn('medium');
$(".bg-banner").stop().fadeIn('medium');
}
},function() {
if ($(window).width() > 680) {
//$(".banner-hover-content,.bg-banner").stop().fadeOut('medium');
$(".bg-banner").stop().fadeOut('medium');
$(this).find(".banner-hover-content").stop().fadeOut('medium');
}
});
});


// Filter container hide outer click hide
$(document).mouseup(function (e) {
if ($(window).width() > 680) {
var container = $("#nav-mobile");
if (!container.is(e.target) // if the target of the click isn't the container...
&& container.has(e.target).length === 0) // ... nor a descendant of the container
{
if($(window).width<=720)
$('nav').hide();
}
}
});
});
