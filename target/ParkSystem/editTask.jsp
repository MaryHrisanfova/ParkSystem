<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <fmt:setLocale value="${sessionScope.local}"/>
    <fmt:setBundle basename="local" var="loc"/>

    <fmt:message bundle="${loc}" key="local.tasktype" var="tasktype"></fmt:message>
    <fmt:message bundle="${loc}" key="local.tasktext" var="tasktext"></fmt:message>
    <fmt:message bundle="${loc}" key="local.tasksender" var="tasksender"></fmt:message>
    <fmt:message bundle="${loc}" key="local.recipient" var="recipient"></fmt:message>
    <fmt:message bundle="${loc}" key="local.addnewtask" var="addnewtask"></fmt:message>
    <fmt:message bundle="${loc}" key="local.done" var="done"></fmt:message>
    <fmt:message bundle="${loc}" key="local.back" var="back"></fmt:message>
    <fmt:message bundle="${loc}" key="local.addnewtask" var="addnewtask"></fmt:message>
    <fmt:message bundle="${loc}" key="local.edittask" var="edittask"></fmt:message>
    <fmt:message bundle="${loc}" key="local.updatebutton" var="updatebutton"></fmt:message>
    <fmt:message bundle="${loc}" key="local.isdone" var="isdone"></fmt:message>
    <fmt:message bundle="${loc}" key="local.isconfirmed" var="isconfirmed"></fmt:message>
    <fmt:message bundle="${loc}" key="local.back" var="back"></fmt:message>

    <h1 align="center"><title>${edittask}</title></h1>

    <link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>
<body>
<div align="center">
    <form method="POST" action='\edit_task' name="EditTask">
        <table border="1">

            <tr>
                <td>${tasksender}</td>
                <td>
                    <SELECT disabled required NAME="FLNamesSender">
                        <OPTION value='${currentUser.id}'>
                            <c:out value='${currentUser.lasttname}'/>
                            <c:out value='${currentUser.firstname}'/>
                        </OPTION>
                    </SELECT>
                </td>
            <tr>
                <td>${tasktype}</td>
                <td>
                    <SELECT required contenteditable NAME="tasktype">
                        <OPTION selected>${task.tasktype}</OPTION>
                        <OPTION>Высадка</OPTION>
                        <OPTION>Лечение</OPTION>
                        <OPTION>Обработка</OPTION>
                    </SELECT>

                </td>
            </tr>
            <tr>
                <td>${tasktext}</td>
                <td><input type="text" name="tasktext" value='${task.tasktext}'/></td>
            </tr>

            <td>${recipient}</td>
            <td>
                <SELECT required NAME="FLNamesRecipient">
                    <c:forEach items="${users}" var="users">
                        <OPTION value='${users.id}'>
                            <c:out value='${users.lasttname}'/>
                            <c:out value='${users.firstname}'/>
                        </OPTION>
                    </c:forEach>
                    <option selected
                            value="${id_recipient}">${task.lastnameOfRecipient} ${task.firstnameOfRecipient}</option>
                </SELECT>
            </td>


            <tr>
                <td>${isdone}</td>
                <td>
                    <SELECT required contenteditable NAME="isdone">
                        <OPTION selected>${task.isdone}</OPTION>
                        <OPTION>Выполнено</OPTION>
                        <OPTION>Не выполнено</OPTION>
                    </SELECT>
                </td>
            </tr>
            <tr>
                <td>${isconfirmed}</td>
                <td>
                    <SELECT required contenteditable NAME="isconfirmed">
                        <OPTION selected>${task.isconfirmed}</OPTION>
                        <OPTION>Подтверждено</OPTION>
                        <OPTION>Не подтверждено</OPTION>
                    </SELECT>
                </td>
            </tr>
        </table>


        <br>

        <input type="hidden" name="action" value="update"/>
        <td><input type="submit" value="${updatebutton}"/></td>
    </form>
</div>

<c:out value='${taskWasEdited}'/>
</body>
</html>

