<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <fmt:setLocale value="${sessionScope.local}"/>
    <fmt:setBundle basename="local" var="loc"/>

    <fmt:message bundle="${loc}" key="local.fn" var="fn"></fmt:message >
    <fmt:message bundle="${loc}" key="local.ln" var="ln"></fmt:message >
    <fmt:message bundle="${loc}" key="local.tasktype" var="tasktype"></fmt:message >
    <fmt:message bundle="${loc}" key="local.tasktext" var="tasktext"></fmt:message >
    <fmt:message bundle="${loc}" key="local.ofsender" var="ofsender"></fmt:message >
    <fmt:message bundle="${loc}" key="local.ofrecipient" var="ofrecipient"></fmt:message >
    <fmt:message bundle="${loc}" key="local.addnewtask" var="addnewtask"></fmt:message >
    <fmt:message bundle="${loc}" key="local.done" var="done"></fmt:message >
    <fmt:message bundle="${loc}" key="local.edittask" var="edittask"></fmt:message >
    <fmt:message bundle="${loc}" key="local.status" var="status"></fmt:message >
    <fmt:message bundle="${loc}" key="local.checked" var="checked"></fmt:message >
    <fmt:message bundle="${loc}" key="local.updatebutton" var="updatebutton"></fmt:message >



    <title>${edittask}</title>
</head>
<body>

<form method="POST" action='\edit_task' name="EditTask">
<table border="1">

    <tr>
        <td>${fn} ${ofsender}</td>
        <td><input type="text" name="firstnameOfSender" value='${task.firstnameOfSender}'/></td>
    </tr>
    <tr>
        <td>${ln} ${ofsender}</td>
        <td><input type="text" name="lastnameOfSender" value='${task.lastnameOfSender}'/></td>
    </tr>
    <tr>
        <td>${tasktype}</td>
        <td><input type="text" name="tasktype" value='${task.tasktype}'/></td>
    </tr>
    <tr>
        <td>${tasktext}</td>
        <td><input type="text" name="tasktext" value='${task.tasktext}'/></td>
    </tr>

    <tr>
        <td>${fn} ${ofrecipient}</td>
        <td><input type="text" name="firstnameOfRecipient" value='${task.firstnameOfRecipient}'/></td>
    </tr>
    <tr>
    <td>${ln} ${ofrecipient}</td>
    <td><input type="text" name="lastnameOfRecipient" value='${task.lastnameOfRecipient}'/></td>
</tr>
    <tr>
        <td>${status}</td>
        <td><input type="text" name="isdone" value='${task.isdone}'/></td>
    </tr>
    <tr>
        <td>${checked}</td>
        <td><input type="text" name="isconfirmed" value='${task.isconfirmed}'/></td>
    </tr>
</table>



<br>

    <input type="hidden" name="action" value="update"/>
    <td><input type="submit" value="${updatebutton}"/></td>
</form>


<c:out value='${taskWasEdited}'/>
</body>
</html>

