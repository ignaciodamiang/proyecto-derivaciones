<%@ page import="org.springframework.web.servlet.ModelAndView" %>
<%@ page import="org.dom4j.rule.Mode" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String rolMenu = request.getSession().getAttribute("ROL").toString();
   String classMenu = rolMenu.toLowerCase();
%>
<div class="row">
    <% switch (rolMenu){
            case "Solicitador":
            {%> <nav class="navbar navbar-expand-md navbar-dark fixed-top solicitador">
                <a class="navbar-brand" href="/proyecto_derivaciones_war_exploded/BuscarPaciente">Bienvenido solicitador</a>
                <a class="text-decoration-none text-white nav-link" href="/proyecto_derivaciones_war_exploded/BuscarPaciente">Inicio</a><%}
            break;
            case "Derivador":
            {%> <nav class="navbar navbar-expand-md navbar-dark fixed-top derivador">
                <a class="navbar-brand" href="/proyecto_derivaciones_war_exploded/listado-derivacion">Bienvenido derivador</a>
                <a class="text-decoration-none text-white nav-link" href="/proyecto_derivaciones_war_exploded/listado-derivacion">Inicio</a>
            <%}
            break;
            case "Administrativo":
            {%> <nav class="navbar navbar-expand-md navbar-dark fixed-top administrativo">
                <a class="navbar-brand" href="/proyecto_derivaciones_war_exploded/solicitudes-derivaciones">Bienvenido administrativo</a>
                <a class="text-decoration-none text-white nav-link" href="/proyecto_derivaciones_war_exploded/solicitudes-derivaciones">Inicio</a><%}
            break;
            default:
            {%><nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
                <a class="navbar-brand" href="#">QUE HACE FLACO?!</a><%}
            break;}%>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="true" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="navbar-collapse collapse show" id="navbarCollapse" style="">
            <ul class="navbar-nav mr-auto">

            <%
            switch (rolMenu){
                case "Solicitador":
            {%>
<%--                <div class="col-2 d-flex flex-column solicitador" id="sticky-sidebar">--%>
<%--                <div class="sticky-top">--%>

<%--                <p class="text-decoration-none text-white nav-link">Bienvenido Solicitador</p>--%>
                <li class="nav-item">
                <a href="/proyecto_derivaciones_war_exploded/historialDerivaciones" class="text-decoration-none text-white nav-link">Historial derivacion</a>
                </li>
                <li class="nav-item">
                <a href="/proyecto_derivaciones_war_exploded/BuscarPaciente" class="text-decoration-none text-white nav-link">Buscar paciente</a>
                </li>
            <%}
                    break;
                case "Derivador":
                {%>
<%--                <div class="col-2 d-flex flex-column derivador" id="sticky-sidebar">--%>
<%--                <div class="sticky-top">--%>
<%--                <p class="text-decoration-none text-white nav-link">Bienvenido Derivador</p>--%>
                <li class="nav-item">
                <a href="/proyecto_derivaciones_war_exploded/BuscarPaciente" class="text-decoration-none text-white nav-link">Buscar paciente</a>
                </li>
                <li class="nav-item">
                <a href="/proyecto_derivaciones_war_exploded/listado-derivacion" class="text-decoration-none text-white nav-link">Listado derivaciones</a>
                </li>
                <li class="nav-item">
                <a href="/proyecto_derivaciones_war_exploded/historialDerivaciones" class="text-decoration-none text-white nav-link">Historial derivaciones</a>
                </li>
            <%}
                    ;break;
                case "Administrativo":
                {%>
<%--            <div class="col-2 d-flex flex-column administrativo" id="sticky-sidebar">--%>
<%--            <div class="sticky-top">--%>
<%--            <p class="text-decoration-none text-white nav-link">Bienvenido Administrativo</p>--%>
                <li class="nav-item">
                <a href="/proyecto_derivaciones_war_exploded/BuscarPaciente" class="text-decoration-none text-white nav-link">Buscar paciente</a>
                </li>
                <li class="nav-item">
                <a href="/proyecto_derivaciones_war_exploded/solicitudes-derivaciones" class="text-decoration-none text-white nav-link">Solicitud de derivaciones</a>
                </li>
                <li class="nav-item">
                <a href="/proyecto_derivaciones_war_exploded/RequerimientosMedicos" class="text-decoration-none text-white nav-link">Requerimientos Médicos</a>
                </li>
                <li class="nav-item">
                <a href="/proyecto_derivaciones_war_exploded/historialDerivaciones" class="text-decoration-none text-white nav-link">Historial derivaciones</a>
                </li>
            <%} ;break;
                default:
                {%>
            <p class="text-decoration-none text-white nav-link">Usted no deberia estar aca ¬¬</p>
            <%} ;break;
            }%>

            </ul>
            <a href="/proyecto_derivaciones_war_exploded/notificaciones" class="btn btn-default text-white"> <i class="fas fa-bell"></i>(${cantNotificacion})</a>
            <form class="form-inline my-auto" action="buscar-derivacion">
                <input name="codigoDerivacion" class="form-control mr-sm-2" type="search" placeholder="Buscar derivacion por codigo" aria-label="Search">
                <button type="submit" class="btn btn-default text-white">
                    <i class="fas fa-search"></i> Buscar
                </button>

            </form>
                <a href="/proyecto_derivaciones_war_exploded/logout" class="text-decoration-none text-white nav-link mx-2">
                    <button type="button" class="btn btn-default text-white">
                        <i class="fas fa-power-off"></i> Loguout
                    </button></a>
        </div>

<%--        </div>--%>
    </nav>
</div>