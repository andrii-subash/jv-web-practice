<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <title>All cars</title>
    </head>
    <body>
        <a href="${pageContext.request.contextPath}/index"><- back</a>
        <h1>All cars: </h1>
        <table>
        	<tr>
        		<td>ID</td>
        		<td>MODEL</td>
        		<td>MANUFACTURER NAME</td>
        		<td>MANUFACTURER COUNTRY</td>
                <td>DRIVERS</td>
                <td>DELETE</td>
        	</tr>
        	<c:forEach items="${cars}" var="car">
        		<tr>
        			<td><c:out value="${car.getId()}" /></td>
        			<td><c:out value="${car.getModel()}" /></td>
        			<td><c:out value="${car.getManufacturer().getName()}" /></td>
        			<td><c:out value="${car.getManufacturer().getCountry()}" /></td>
        			<td>
                        <c:forEach items="${car.getDrivers()}" var="driver">
                            ${driver.getId()} ${driver.getName()} ${driver.getLicenseNumber()}
                        </c:forEach>
                    </td>
                    <td>
                        <a href="${pageContext.request.contextPath}/cars/delete?id=${car.getId()}">
                            delete
                        </a>
                    </td>
        		</tr>
        	</c:forEach>
        </table>
    </body>
</html>