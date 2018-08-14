<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script>
	$(document).ready(function(){
		$("#btn").click(function(){
			var data={
					"targetid" : "user01",
					"sender" : "user02",
					"message" : "Hello"
			}
			$.ajax({
				type:"post",
				url:"/gym/messages/",
				dataType:"JSON",
				contentType:"application/json; charset=UTF-8",
				data:JSON.stringify(data),
				success:function(data){
					
				},
				error:function(e){
					
				}
			})
		})
	})
	</script>
	<%@ include file="./include/header.jsp" %>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<button id="btn">Click</button><br>

<a href="/gym/sample/hello">hello</a><br>
<a href="/gym/sample/sendVO">sendVO</a><br>
<a href="/gym/sample/sendList">sendList</a><br>
<a href="/gym/sample/sendMap">sendMap</a><br>
<a href="/gym/sample/sendErrorAuth">sendErrorAuth</a><br>
<a href="/gym/sample/sendErrorNot">sendErrorNot</a><br>

<%@ include file="./include/footer.jsp" %>

</body>
</html>
