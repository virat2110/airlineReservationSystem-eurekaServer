<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
    window.history.forward();
    function noBack() {
        window.history.forward();
    }
</script>

<%
            response.setHeader("Pragma", "no-cache");
			response.setHeader("Cache-control", "no-cache, no-store");
            response.setHeader("Expires", "0");
            response.setDateHeader("Expires", -1);
            session.invalidate();
          
			

%>

</head>
<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
<%
response.sendRedirect("http:/users/");
%>


<h3>Hello</h3>
</body>
</html>