<style type="text/css">
  <%@include file="css/navigation.css" %>
</style>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="index.jsp">Employee Management System</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="addemployee.jsp">Add Employee</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="displayemployee.jsp">Display All</a>
      </li>
   
     
    </ul>
    <form class="searchFrom form-inline" action= "SearchServlet" >
      <input class="" type="search" placeholder="Enter Id	" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>