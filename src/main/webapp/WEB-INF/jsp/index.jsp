<%@ include file="comunes/cabecero.jsp" %>
<%@ include file="comunes/navegacion.jsp" %>

<div class="text-center" style="margin: 30px;">
    <h3>Sistema de empleados </h3>
</div>

<div class="container">
    <table class="table table-striped table-hover table-bordered align-middle">
        <thead class="table-dark text-center">
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Nombre</th>
            <th scope="col">Departamento</th>
            <th scope="col">Sueldo</th>
            <th scope="col"></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="empleado" items="${empleados}">
            <tr>
                <th scope="row">${empleado.idEmpleado}</th>
                <td>${empleado.nombreEmpleado}</td>
                <td>${empleado.departamento}</td>
                <td>
                    <fmt:setLocale value="en_US"/>
                    <fmt:formatNumber type="currency" value="${empleado.sueldo}"/>
                </td>
                <td class="text-center">
                        <%-- Editar  --%>
                    <c:set var="urlEditar">
                        <c:url value="${application.contextPath}/editar">
                            <c:param name="idEmpleado" value="${empleado.idEmpleado}"/>
                        </c:url>
                    </c:set>
                    <a href="${urlEditar}" class="btn btn-warning btn-sm me-3">Editar</a>
                        <%--  Borrar  --%>
                    <c:set var="urlEliminar">
                        <c:url value="${application.contextPath}/eliminar">
                            <c:param name="idEmpleado" value="${empleado.idEmpleado}"/>
                        </c:url>
                    </c:set>
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-danger btn-sm" data-bs-toggle="modal"
                            data-bs-target="#exampleModal">
                        Eliminar
                    </button>
                    <!-- Modal -->
                    <%@ include file="comunes/modal-eliminar.jsp" %>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<%@ include file="comunes/pie-pagina.jsp" %>
