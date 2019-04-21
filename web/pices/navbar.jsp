<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Navbar start-->
<nav class="navbar navbar-expand-lg navbar-dark navbar-vlastniNav sticky-top rounded-bottom" style="margin-bottom: 0">       
  <a class="navbar-brand" href="index.jsp">
    <div id="logo">
      <span style="font-size: 1.8rem">Úvodní strana</span>
    </div>
  </a>       
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarObsah" aria-controls="navbarObsah" aria-expanded="false" aria-label="Toggle navigation">             
    <span class="navbar-toggler-icon"></span>      
  </button>       
  <div class="collapse navbar-collapse" id="navbarObsah">             
    <ul class="navbar-nav ml-auto">                   
      <li class="nav-item active">                         
        <a class="nav-link" href="index.jsp">Domů<span class="sr-only">(current)</span></a>                  
      </li>  
      <li class="nav-item dropdown">                         
        <a class="nav-link dropdown-toggle" href="formCableHead.jsp" id="navbarDropdownKabel" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Editace Kabelových hlav</a>                         
        <div class="dropdown-menu" aria-labelledby="navbarDropdownKabel">                               
          <a class="dropdown-item" href="formCableHead.jsp">Založit novou Kabelovou hlavu</a>                               
          <a class="dropdown-item" href="formCableHead.jsp">Editovat existující Kabelovou hlavu</a>
          <a class="dropdown-item" href="formCableHead.jsp">Odstranit Kabelovou hlavu</a>                            
          <div class="dropdown-divider">                    
          </div>                               
          <a class="dropdown-item" href="sort.html">Všechny nabídky</a>                         
        </div>                   
      </li>                     
      <li class="nav-item dropdown">                         
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownDataDevice" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Editace Datových prvků</a>                         
        <div class="dropdown-menu" aria-labelledby="navbarDropdownDataDevice">                               
          <a class="dropdown-item" href="sort.html">Založit nový Datový prvek</a>                               
          <a class="dropdown-item" href="sort.html">Editovat existující Datový prvek</a>
          <a class="dropdown-item" href="sort.html">Odstranit Datový prvek</a>                              
          <div class="dropdown-divider">                    
          </div>                               
          <a class="dropdown-item" href="sort.html">Všechny nabídky</a>                         
        </div>                   
      </li>  
      <li class="nav-item dropdown">                         
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPBX" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Editace PBX</a>                         
        <div class="dropdown-menu" aria-labelledby="navbarDropdownPBX">                               
          <a class="dropdown-item" href="sort.html">Založit novou PBX</a>                               
          <a class="dropdown-item" href="sort.html">Editovat PBX</a>
          <a class="dropdown-item" href="sort.html">Odstranit PBX</a>                             
          <div class="dropdown-divider">                    
          </div>                               
          <a class="dropdown-item" href="sort.html">Všechny nabídky</a>                         
        </div>                  
      </li>
      <li class="nav-item dropdown">                         
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownTelExchange" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Editace telefonních ústředen</a>                         
        <div class="dropdown-menu" aria-labelledby="navbarDropdownTelExchange">                               
          <a class="dropdown-item" href="sort.html">Založit novou telefonní ústřednu</a>                               
          <a class="dropdown-item" href="sort.html">Editovat telefonní ústřednu</a>
          <a class="dropdown-item" href="sort.html">Odstranit telefonní ústřednu</a>                              
          <div class="dropdown-divider">                    
          </div>                               
          <a class="dropdown-item" href="sort.html">Všechny nabídky</a>                         
        </div>                  
      </li>             
    </ul>             
    <form class="form-inline my-lg-0" action="../">                   
      <input class="form-control mr-sm-2" type="search" placeholder="Vyhledat klapku" aria-label="Vyhledat">                   
      <button class="btn btn-vyhledat my-2 my-sm-0" type="submit"><i class="fas fa-search" data-fa-transform="left-5"></i>Vyhledat             
      </button>             
    </form>       
  </div>
</nav> 
<!-- Navbar end--> 
