<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<div id="spring-javaconf" class="sub-nav">
	<span class="icon-broadcast"></span>
	<div class="sub-nav-bottom">
		<p class="sub-nav-first">JAVA</p>
		<p class="sub-nav-second">CONF</p>
	</div>
</div>
<br />
<div class="sub-nav"></div>
<br />
<div class="sub-nav"></div>

<script type="text/javascript">
	$(function() {
		$("#spring-javaconf").on("click", function() {

			$.post("<spring:url value='/projects'/>", function(data) {
				$("#main-content").hide().html(data).fadeIn(500);
			}).success(function() {
				prettyPrint();
			});
		});
	});
</script>