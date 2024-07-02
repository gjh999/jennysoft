<%--
  Class Name : accessDenied.jsp
  Description : ���ٺҰ� �޽��� ȭ��(system)
  Modification Information
 
      ������         ������                   ��������
    -------    --------    ---------------------------
     2009.02.01    lee.m.j          ���� ����
     2011.08.31  JJY       �淮ȯ�� ���� ����
 
    author   : ���뼭�񽺰����� lee.m.j
    since    : 2009.02.01
--%>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<%@ page import="org.springframework.security.core.Authentication" %>
<%@ page import="org.springframework.security.web.access.AccessDeniedHandlerImpl" %> 

<%@ page isErrorPage="true"%>
<%@ page contentType="text/html; charset=euc-kr" %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%@ page import="org.egovframe.rte.fdl.string.EgovStringUtil" %>
<%@ page import="java.lang.String" %>
<%
  	boolean authenticateFail = false;
  	if(request.getAttribute("authenticateFail")!=null && !request.getAttribute("authenticateFail").toString().equals("")){
		authenticateFail = true;
  	}
  
  	boolean authFail = false;
  	if(request.getAttribute("authFail")!=null && !request.getAttribute("authFail").toString().equals("")){
		authFail = true;
  	}  

  	String target = EgovStringUtil.null2void((String)request.getAttribute("target"));
  	target = target.equals("") ? "_top" : target;  	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="<c:url value='/'/>css/base.css">
	<link rel="stylesheet" href="<c:url value='/'/>css/layout.css">
	<link rel="stylesheet" href="<c:url value='/'/>css/component.css">
	<link rel="stylesheet" href="<c:url value='/'/>css/page.css">
	<script src="<c:url value='/'/>js/jquery-1.11.2.min.js"></script>
	<script src="<c:url value='/'/>js/ui.js"></script>
	
<title>Access is denied</title>
<script type="text/javascript">
function fncGoAfterErrorPage(){
	if('<%=authenticateFail%>' == 'true' ){
		document.dummyForm.target="_top";
		document.dummyForm.action = "<c:url value='/empaftererrorpage.do'/>";
		document.dummyForm.submit();
	}else if('<%=authFail%>' == 'true'){
		document.dummyForm.target="<%=target%>";
		document.dummyForm.action = "<c:url value='/empaftererrorpage.do'/>";
		document.dummyForm.submit();
	}else{
		//document.location.href = "<c:url value='/empaftererrorpage.do'/>";
		history.back(-2);
	}
}
</script>
</head>
<body>

    <!-- skip navigation -->
    <a href="#contents" class="skip_navi">���� �ٷΰ���</a>

    <div class="wrap">
        <div class="error_page">
            <h1>Error</h1>
            <div class="inner">
<!--				<p>������ ����Ǿ����ϴ�.</p> -->
<!--				<p>������ ó�� �� ������ �߻��Ͽ����ϴ�.</p> -->
<!-- 				<p>������ ������ �߻��Ͽ����ϴ�.</p> -->
<!-- 				<p>�� �� ���� ������ �߻��Ͽ����ϴ�.</p> -->
				<%= request.getAttribute(org.springframework.security.web.WebAttributes.AUTHENTICATION_EXCEPTION) %>
				<%	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
					if (auth != null) { 
						
					}
				%>
				<p>${exception.message}</p>
                <br>
                <a href="#LINK" class="btn btn_blue_46 w_130" onclick="javascript:fncGoAfterErrorPage(); return false;">����������</a>
            </div>
        </div>
    </div>
    
</body>
</html>