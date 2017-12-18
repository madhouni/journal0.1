<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>
	LOGIN
  </title>

	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

  <!-- Roboto Web Font -->
  <link href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en" rel="stylesheet">

<link rel='stylesheet' type='text/css' href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700'>
    <link href='https://fonts.googleapis.com/css?family=Lato:400,300,300italic,400italic,700,700italic' rel='stylesheet'
         type='text/css'>
         
         
    <link rel='stylesheet' type='text/css' href='NewFile.css'>
    <script src="sweetalert.min.js"></script>
    <script type="text/javascript" src="assets/js/jquery/jquery-1.11.1.min.js"></script>
       
      

    <!-- -------------- CSS - theme -------------- -->
    <link rel="stylesheet" type="text/css" href="assets/skin/default_skin/css/theme.css">

    <!-- -------------- Favicon -------------- -->
    <link rel="shortcut icon" href="assets/img/favicon.ico">

      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    
  <!-- Roboto Web Font -->
  <link href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en" rel="stylesheet">
 
<%
String x=(String)session.getAttribute("z");

if(x=="invalid"){
%>  

 <script type="text/javascript">
  
  $(document).ready(function(){
     
     
      
      sweetAlert("Oops...", "login entré ne correspond à aucun compte. Veuillez créer un compte.", "error");
      
      
      
       });

</script>
<%}%>


 <script type="text/javascript">

 
 $(document).ready(function(){


//pour le login
            $("input#login").click(function(){
                   $("input#login").blur(function(){

                        var x=$("input#login").val().trim();
    
                      if (x=="" || x.length<=5)
                       {
                          $(".erreur1").css("display","block");
                          $(".m1").css("display","block");

                       }
                      else 
                       {
                          $(".erreur1").css("display","none");
                          $(".m1").css("display","none");
                        }   

                    });
             });


          //pour le password
             $("input#pwd").click(function(){
                   $("input#pwd").blur(function(){

                        var y=$("input#pwd").val().trim();
    
                      if (y=="" ||y.length<=5)
                       {
                          $(".erreur2").css("display","block");
                          $(".m2").css("display","block");

                       }
                      else 
                       {
                          $(".erreur2").css("display","none");
                          $(".m2").css("display","none");
                        }   

                    });
             });


 $("input#submit").click(function(){
	 
	 var y=$("input#pwd").val().trim();
	 var x=$("input#login").val().trim();
	 if ((y!="" && y.length>=6)&&(x!="" && x.length>=5))
		 $(".spinner").css("display","block");

	                                                
	 
      var valid=true;

              var a=$("input#login").val().trim();
             
                      if (a=="" ||  a.length<=5)
                       {
                          $(".erreur1").css("display","block");
                          $(".m1").css("display","block");
                          valid=false;

                       }
                      else 
                       {
                          $(".erreur1").css("display","none");
                          $(".m1").css("display","none");

                        }   



               var b=$("input#pwd").val().trim();
    
                      if (b=="" || b.length<=5)
                       {
                          $(".erreur2").css("display","block");
                          $(".m2").css("display","block");
                          valid=false;

                       }
                      else 
                       {
                          $(".erreur2").css("display","none");
                          $(".m2").css("display","none");
                        }   

      
                      
           return valid;


         






});
});












 </script>
	<style type="text/css">
   
    div.mere{
    	width:30%;
    	height:78%;
    	margin:5px auto;
    	background:black;
    	padding:20px;
    	position: relative;border:2px solid #2ECDDC;
    	 

    }
    label{
    	color:#2ECDDC;font-weight: lighter;font-size:15px;
    }

     .erreur1{

      background-color:RGB(209, 20, 46);width:150px;color:#FFF;padding:10px;position:absolute;left:-143px;top:161px;
      border-radius:5px;display:none;
    }
    .m1{
      width: 0; 
      height: 0; 
      border-left: 10px solid RGB(209, 20, 46) ;
      border-right: 10px solid transparent;
  
      border-top: 10px solid transparent;

      border-bottom: 10px solid transparent;

      border-radius:5px;
      position:absolute;left:5px;top:173px;display: none;
    }
    .erreur2{

      background-color:RGB(209, 20, 46);width:150px;color:#FFF;padding:10px;position:absolute;left:-142px;top:232px;
      border-radius:5px;display: none;
    }
    .m2{
      width: 0; 
      height: 0; 
      border-left: 10px solid RGB(209, 20, 46) ;
      border-right: 10px solid transparent;
  
      border-top: 10px solid transparent;

      border-bottom: 10px solid transparent;

      border-radius:5px;
      position:absolute;left:5px;top:253px;display: none;
    }
  .spinner {
  margin:45px 160px;display:none;
  width: 50px;
  height: 40px;
  text-align: center;
  font-size: 10px;position:absolute;
}

.spinner > div {
  background-color: #333;
  height: 100%;
  width: 6px;
  display: inline-block;
  
  -webkit-animation: sk-stretchdelay 1.2s infinite ease-in-out;
  animation: sk-stretchdelay 1.2s infinite ease-in-out;
}

.spinner .rect2 {
  -webkit-animation-delay: -1.1s;
  animation-delay: -1.1s;
}

.spinner .rect3 {
  -webkit-animation-delay: -1.0s;
  animation-delay: -1.0s;
}

.spinner .rect4 {
  -webkit-animation-delay: -0.9s;
  animation-delay: -0.9s;
}

.spinner .rect5 {
  -webkit-animation-delay: -0.8s;
  animation-delay: -0.8s;
}

@-webkit-keyframes sk-stretchdelay {
  0%, 40%, 100% { -webkit-transform: scaleY(0.4) }  
  20% { -webkit-transform: scaleY(1.0) }
}

@keyframes sk-stretchdelay {
  0%, 40%, 100% { 
    transform: scaleY(0.4);
    -webkit-transform: scaleY(0.4);
  }  20% { 
    transform: scaleY(1.0);
    -webkit-transform: scaleY(1.0);
  }
}

	</style>
</head>
<body class="utility-page sb-l-c sb-r-c">

<!-- -------------- Body Wrap  -------------- -->
<div id="main" class="animated fadeIn">

    <!-- -------------- Main Wrapper -------------- -->
    <section id="content_wrapper">

        <div id="canvas-wrapper">
            <canvas id="demo-canvas"></canvas>
        </div>

 
    </section>
    <!-- -------------- /Main Wrapper -------------- -->


<div class="mere">
  
   <div  style="background:#FFF;width:100%;height:20%;position: relative;">

         <div style="padding-left:70px;padding-top:10px;width:20%;position:relative;float:left;"><i class="material-icons md-36 text-muted" style="font-size:50px;color:#2ECDDC;background-color:#DBE0EF;border-radius:50%;padding:5px;">lock</i></div> 
          <div style="position:relative;float:left;padding-top:6px;padding-left:70px;">
          <h4 style="color:#2ECDDC;">Login</h4>
          <p style="color:#DBE0EF;">Access your account</p>

          </div>
        
      
       
   	
   </div>

	<form style="margin-top:20px; " action="Authen" method="Get">
  <div class="form-group">
    <label for="email" >Login:</label>
    <input type="text" class="form-control" name="nom" id="login"  placeholder="Nom d'utilisateur">
    <label >${errnom}</label>
    <div class="erreur1">Entrez votre login ?</div><div class="m1"></div>
  </div>
 
     
 <div class="spinner">
  <div class="rect1"></div>
  <div class="rect2"></div>
  <div class="rect3"></div>
  <div class="rect4"></div>
  <div class="rect5"></div>
</div>
  
  <div class="form-group">
    <label for="pwd">Password:</label>
    <input type="password" placeholder="Mot de passe" class="form-control" name="pass" id="pwd">
    <label>${errpass}</label>
     <div class="erreur2">Entrez votre mot de passe ?</div><div class="m2"></div>
  
  </div>
<br>
<div class="form-group">
      <input class="form-control btn btn-info"  type="submit"  id="submit" value="Login">
    </div>
  </form>


<div style="padding-left:107px;position: relative;margin-top:20px;"><a href="inscriptionjsp.jsp" style="color:#2ECDDC;font-size:15px;">Create Account</a></div>


  
   
 


</div>
<!-- -------------- /Body Wrap  -------------- -->


<!-- -------------- Scripts -------------- -->

<!-- -------------- jQuery -------------- -->
<script src="assets/js/jquery/jquery-1.11.3.min.js"></script>
<script src="assets/js/jquery/jquery_ui/jquery-ui.min.js"></script>

<!-- -------------- CanvasBG JS -------------- -->
<script src="assets/js/plugins/canvasbg/canvasbg.js"></script>

<!-- -------------- Theme Scripts -------------- -->
<script src="assets/js/utility/utility.js"></script>
<script src="assets/js/demo/demo.js"></script>
<script src="assets/js/main.js"></script>

<!-- -------------- Page JS -------------- -->
<script type="text/javascript">
    jQuery(document).ready(function () {

        "use strict";

        // Init Theme Core
        Core.init();

        // Init Demo JS
        Demo.init();

        // Init CanvasBG
        CanvasBG.init({
            Loc: {
                x: window.innerWidth / 5,
                y: window.innerHeight / 10
            }
        });

    });
</script>

</body>
</html>