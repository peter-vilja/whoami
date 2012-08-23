<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!-- Consider adding a manifest.appcache: h5bp.com/d/Offline -->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->
<head>
<meta charset="utf-8">

<!-- Use the .htaccess and remove these lines to avoid edge case issues.
       More info: h5bp.com/i/378 -->
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<title><spring:message code="general.title" /></title>
<meta name="description" content="">

<!-- Mobile viewport optimized: h5bp.com/viewport -->
<meta name="viewport" content="width=device-width">

<!-- Place favicon.ico and apple-touch-icon.png in the root directory: -->

<link href="<spring:url value="/resources/css/main.css" />"
	rel="stylesheet" type="text/css" />

<!-- All JavaScript at the bottom, except this Modernizr build.
       Modernizr enables HTML5 elements & feature detects for optimal performance.
       Create your own custom Modernizr build: www.modernizr.com/download/ -->
<script src="/resources/js/modernizr-2.5.3.min.js"></script>
<script type="text/javascript" src="/resources/js/prettify.js"></script>
</head>
<body>
	<!-- Prompt IE 6 users to install Chrome Frame. Remove this if you support IE 6.
       chromium.org/developers/how-tos/chrome-frame-getting-started -->
	<!--[if lt IE 7]><p class=chromeframe>Your browser is <em>ancient!</em> <a href="http://browsehappy.com/">Upgrade to a different browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to experience this site.</p><![endif]-->
	<header>
		<div id="top">
			<nav>
				<ul class="outer">
					<li id="projects" class="nav nav-selected horizontal">
						<div class="nav-inner nav-project-img"></div> 
						<em><spring:message code="nav.projects" /></em>
					</li>
					<li id="others" class="nav horizontal">
						<div class="nav-inner nav-other-img"></div>
						<dfn><spring:message code="nav.other" /></dfn>
					</li>
				</ul>
			</nav>
		</div>
	</header>

	<div role="main">
		<div id="right">
			<div id="main-content"></div>
		</div>
		<div id="leftcontainer">
			<div id="lefttop">
				<p class="page">SOFTWARE DEVELOPER</p>
				<p class="name">PETER VILJA</p>
			</div>
			<div id="lefttopback"></div>
			<div id="left">
				<div id="sub-nav">
				</div>
			</div>
		</div>
	</div>

	<footer>
		<div id="bottomcontainer">
			<div id="bottomleft" class="bottom-header-left">
				<p class="bottomheader">LOOKING FOR A DEVELOPER?</p>
				<p>Got interested? Contact me:</p>
				<table>
					<tr>
						<td><div class="spring-contact-img"></div></td>
						<td>peter.vilja <span class="bottom-left-email"></span> Gmail
						</td>
					</tr>
					<tr>
						<td></td>
						<td>+35840 1349449</td>
					</tr>
				</table>
			</div>
			<div id="bottomcenter">
				<div id="bottompicture"></div>
			</div>
			<div id="bottomright" class="bottom-header-right">
				<p class="bottomheader">ELSEWHERE</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
					Integer in tortor sit amet sapien commodo hendreri. Phasellus
					vulputate tempor volutpat. Maecenas quam nisl, sodales et laoreet
					in, hendrerit eget dui.</p>
				<div class="bottom-right-image bottom-right-in"></div>
				<div class="bottom-right-image bottom-right-g"></div>
				<div class="bottom-right-image bottom-right-fb"></div>
				<div class="bottom-right-image bottom-right-sky"></div>
			</div>
		</div>
	</footer>


	<!-- JavaScript at the bottom for fast page loading -->

	<!-- Grab Google CDN's jQuery, with a protocol relative URL; fall back to local if offline -->
	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="/resources/js/jquery-1.7.1.min.js"><\/script>')
	</script>
	<script type="text/javascript">
		$(function() {

			$("#others").on("click", function() {
				$("#projects").removeClass("nav-selected");
				$(this).addClass("nav-selected");

				$.post("<spring:url value='/other'/>", function(data) {
					$("#main-content").hide().html(data).fadeIn(500);
				});
			});

			$("#projects").on("click", function() {
				$("#others").removeClass("nav-selected");
				$(this).addClass("nav-selected");

				$.post("<spring:url value='/projects'/>", function(data) {
					$("#main-content").hide().html(data).fadeIn(500);
				}).success(function() {
					prettyPrint();
				});
				
				$.post("<spring:url value='/projects-nav'/>", function(data) {
					$("#sub-nav").hide().html(data).fadeIn(500);
				});
				
			});

			$("#projects").click();
			
		});
	</script>
	<!-- scripts concatenated and minified via build script -->
	<script src="/resources/js/plugins.js"></script>
	<script src="/resources/js/script.js"></script>
	<!-- end scripts -->
</body>
</html>