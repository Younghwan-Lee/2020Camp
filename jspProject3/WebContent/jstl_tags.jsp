<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL TAGS</title>
<style>
div {
	padding: 10px;
	width: 80%;
	border: 2px solid tomato;
}
</style>
</head>
<body>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<h1>Core Tags</h1>
<div>
<h2>&lt;c:out&gt; Tag</h2>
<c:out value="${'Welcome to javaTpoint'}"/>

<br><br><h2>&lt;c:import&gt; Tag</h2>
<p>&lt;c:import var="data" url="http://www.javatpoint.com"/&gt;</p>
<p>&lt;c:out value="${data}"/&gt;</p>

<br><h2>&lt;c:set&gt; Tag</h2>
<c:set var="Income" scope="session" value="${4000 * 4}"/>
<c:out value="${Income}"/>

<br><h2>&lt;c:remove&gt; Tag</h2>
<c:set var="income" scope="session" value="${4000*4}"/>  
<p>Before Remove Value is: <c:out value="${income}"/></p>  
<c:remove var="income"/>  
<p>After Remove Value is: <c:out value="${income}"/></p> 

<br><h2>&lt;c:catch&gt; Tag & &lt;c:if&gt; Tag</h2>
<c:catch var ="catchtheException">  
   <% int x = 2/0;%>  
</c:catch>  
<p>&lt;% int x = 2/0;%&gt;</p>
<c:if test = "${catchtheException != null}">  
   <p>The type of exception is : ${catchtheException} <br />  
   There is an exception: ${catchtheException.message}</p>  
</c:if>

<br><h2>&lt;c:choose&gt; Tag & &lt;c:when&gt; Tag & &lt;c:otherwise&gt; Tag</h2>
<c:set var="income" scope="session" value="${4000*4}"/>  
<p>Your income is : <c:out value="${income}"/></p>  
<c:choose>  
    <c:when test="${income <= 1000}">  
       Income is not good.  
    </c:when>  
    <c:when test="${income > 10000}">  
        Income is very good.  
    </c:when>  
    <c:otherwise>  
       Income is undetermined...  
    </c:otherwise>  
</c:choose>

<br><h2>&lt;c:forEach&gt; Tag</h2>
<c:forEach var="j" begin="1" end="3">  
   Item <c:out value="${j}"/><p>  
</c:forEach>

<br><h2>&lt;c:forTokens&gt; Tag</h2>
<c:forTokens items="Rahul-Nakul-Rajesh" delims="-" var="name">
	<c:out value="${name}"/><br>
</c:forTokens>

<br><h2>&lt;c:param&gt; Tag & &lt;c:url&gt; Tag</h2>
<c:url value="/index1.jsp" var="completeURL">  
 <c:param name="trackingId" value="786"/>  
 <c:param name="user" value="Nakul"/>
</c:url>
</div>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<br><h1>Function Tags</h1>
<div>
<h2>fn:contains() Function</h2>
<c:set var="String" value="Welcome to javatpoint"/>  
<c:if test="${fn:contains(String, 'javatpoint')}">  
   <p>Found javatpoint string<p>  
</c:if>  
<c:if test="${fn:contains(String, 'JAVATPOINT')}">  
   <p>Found JAVATPOINT string<p>  
</c:if>  

<br><h2>fn:containsIgnoreCase() Function</h2>
<c:set var="String" value="Welcome to javatpoint"/>  
<c:if test="${fn:containsIgnoreCase(String, 'javatpoint')}">  
   <p>Found javatpoint string<p>  
</c:if>  
<c:if test="${fn:containsIgnoreCase(String, 'JAVATPOINT')}">  
   <p>Found JAVATPOINT string<p>  
</c:if>  

<br><h2>fn:endsWith() Function</h2>
<c:set var="String" value="Welcome to JSP programming"/>  
<c:if test="${fn:endsWith(String, 'programming')}">  
   <p>String ends with programming<p>  
</c:if>  
<c:if test="${fn:endsWith(String, 'JSP')}">  
   <p>String ends with JSP<p>  
</c:if>  

<br><h2>fn:escapeXml() Function</h2>
<c:set var="string1" value="It is first String."/>  
<c:set var="string2" value="It is <xyz>second String.</xyz>"/>  
<p>With escapeXml() Function:</p>  
<p>string-1 : ${fn:escapeXml(string1)}</p>  
<p>string-2 : ${fn:escapeXml(string2)}</p>  
<p>Without escapeXml() Function:</p>  
<p>string-1 : ${string1}</p>  
<p>string-2 : ${string2}</p>  

<br><h2>fn:indexOf() Function</h2>
<c:set var="string1" value="It is first String."/>  
<c:set var="string2" value="It is <xyz>second String.</xyz>"/>
<p>Return the index of "first" in "It is first String"</p>  
<p>Index-1 : ${fn:indexOf(string1, "first")}</p> 
<p>Return the index of "second" in "It is <xyz>second String.</xyz>"</p> 
<p>Index-2 : ${fn:indexOf(string2, "second")}</p>

<br><h2>fn:trim() Function</h2>
<c:set var="str1" value="Welcome to JSP        programming         "/>  
<p>String-1 Length is : ${fn:length(str1)}</p>  
  
<c:set var="str2" value="${fn:trim(str1)}" />  
<p>String-2 Length is : ${fn:length(str2)}</p>  
<p>Final value of string is : ${str2}</p>

<br><h2>fn:startsWith() Function</h2>
<c:set var="msg" value="The Example of JSTL fn:startsWith() Function"/>  
The string starts with "The": ${fn:startsWith(msg, 'The')}  
<br>The string starts with "Example": ${fn:startsWith(msg, 'Example')} 
<br><h2>fn:split() Function</h2>
<c:set var="str1" value="Welcome-to-JSP-Programming."/>  
<c:set var="str2" value="${fn:split(str1, '-')}" />  
<c:set var="str3" value="${fn:join(str2, ' ')}" />  
<p>String-3 : ${str3}</p>  
<c:set var="str4" value="${fn:split(str3, ' ')}" />  
<c:set var="str5" value="${fn:join(str4, '-')}" />  
<p>String-5 : ${str5}</p>

<br><h2>fn:toLowerCase() Function</h2>
<c:set var="string" value="Welcome to JSP Programming"/>  
${fn:toLowerCase("HELLO,")}  
${fn:toLowerCase(string)} 
<p>Opposite: toUpperCase()

<br><h2>fn:substring() Function</h2>
<c:set var="string" value="This is the first string."/>  
${fn:substring(string, 5, 17)}

<br><h2>fn:replace() Function</h2>
<c:set var="author" value="Ramesh Kumar"/>  
<c:set var="string" value="pqr xyz abc PQR"/>  
${fn:replace(author, "Ramesh", "Suresh")}  
${fn:replace(string, "pqr", "hello")}
</div>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>

<br><h1>Formatting Tags</h1>
<div>
<h2>&lt;c:parseNumber&gt; Tag</h2>
<c:set var="Amount" value="786.970"/>
<fmt:parseNumber var="j" type="number" value="${Amount}"/>
<p><i>Amount is:</i> <c:out value="${j}"/></p>
<fmt:parseNumber var="j" integerOnly="true" type="number" value="${Amount}"/>
<p><i>Amount is:</i> <c:out value="${j}"/></p>

<br><h2>&lt;fmt:timeZone&gt; Tag</h2>
<c:set var="str" value="<%=new java.util.Date() %>"/>
<table border="2" width="80%">
	<tr>
		<td width="100%" colspan="2" bgcolor="#FF7F50">
			<p align="center">
				<b>
					<font color="#000000" size="6">Formatting:
					<fmt:formatDate value="${str}" type="both"
					timeStyle="long" dateStyle="long"/>
					</font>
				</b>
			</p>
		</td>
	</tr>
	
	<c:forEach var="zone"
	items="<%=java.util.TimeZone.getAvailableIDs() %>">
	<tr>
		<td width="50%" bgcolor="#C0C0C0">
		<c:out value="${zone}"/>
		</td>
		<td width="50%" bgcolor="#FFEBCD">
			<fmt:timeZone value="${zone}">
				<fmt:formatDate value="${str}" timeZone="${zn}" type="both"/>
			</fmt:timeZone>
		</td>
	</tr>
	</c:forEach>
</table>

<br><h2>&lt;fmt:formatNumber&gt; Tag</h2>
<c:set var="Amount" value="9850.14115"/>
<p>Formatted Number-1:
<fmt:formatNumber value="${Amount}" type="currency"/></p>
<p>Formatted Number-2:
<fmt:formatNumber type="number" groupingUsed="true" value="${Amount}"/></p>
<p>Formatted Number-3:  
<fmt:formatNumber type="number" maxIntegerDigits="3" value="${Amount}" /></p>  
<p>Formatted Number-4:  
<fmt:formatNumber type="number" maxFractionDigits="6" value="${Amount}" /></p>  
<p>Formatted Number-5:  
<fmt:formatNumber type="percent" maxIntegerDigits="4" value="${Amount}" /></p>  
<p>Formatted Number-6:  
<fmt:formatNumber type="number" pattern="###.###$" value="${Amount}" /></p> 

<br><h2>&lt;fmt:bundle&gt; Tag</h2>
<fmt:bundle basename="jsp3.bundle" prefix="colour.">
	<fmt:message key="Violet"/><br/>
	<fmt:message key="Indigo"/><br/>
	<fmt:message key="Blue"/><br/>
</fmt:bundle>

<br><h2>&lt;fmt:setBundle&gt; Tag</h2>
<fmt:setBundle basename="jsp3.SetBundle" var="lang"/>
<fmt:message key="vegetable.Potato" bundle="${lang}"/>
<fmt:message key="vegetable.Tomato" bundle="${lang}"/>
<fmt:message key="vegetable.Carrot" bundle="${lang}"/>
</div>
</body>
</html>