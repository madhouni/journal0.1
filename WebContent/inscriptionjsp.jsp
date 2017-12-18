<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">

    <title>Inscirption </title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <meta name="keywords" content="HTML5, Bootstrap 3, Admin Template, UI Theme"/>
    <meta name="description" content="Alliance - A Responsive HTML5 Admin UI Framework">
    <meta name="author" content="ThemeREX">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel='stylesheet' type='text/css' href='NewFile.css'>
    <script src="sweetalert.min.js"></script>
      
    <link rel='stylesheet' type='text/css' href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700'>
    <link href='https://fonts.googleapis.com/css?family=Lato:400,300,300italic,400italic,700,700italic' rel='stylesheet'
          type='text/css'>

    <!-- -------------- CSS - theme -------------- -->
    <link rel="stylesheet" type="text/css" href="assets/skin/default_skin/css/theme.css">

    <!-- -------------- Favicon -------------- -->
    <link rel="shortcut icon" href="assets/img/favicon.ico">

      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

  <!-- Roboto Web Font -->
  <link href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en" rel="stylesheet">

                                                    
<%
String x=(String)session.getAttribute("v");
String login=(String)session.getAttribute("l");
if(x=="invalid"){
%>  

 <script type="text/javascript">
  
  $(document).ready(function(){
	  
	  
	 
  $("#alert_login").css("display","block");
  });

</script>
<%} %>

  <script type="text/javascript">
  
  $(document).ready(function(){


           //pour le nom
            $("input#nom").click(function(){
                   $("input#nom").blur(function(){

                        var x=$("input#nom").val().trim();
    
                      if (x=="" || x.length<=3)
                       {
                          $(".erreur1").css("display","block");
                          $(".m1").css("display","block");
                          swal("Good job!", "You clicked the button!", "success");

                       }
                      else 
                       {
                          $(".erreur1").css("display","none");
                          $(".m1").css("display","none");
                        }   

                    });
             });


          //pour le login
             $("input#login").click(function(){
                   $("input#login").blur(function(){

                        var y=$("input#login").val().trim();
    
                      if (y=="" || y.length<=5)
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
  
        //pour le password
             $("input#pwd").click(function(){
                   $("input#pwd").blur(function(){

                        var y=$("input#pwd").val().trim();
    
                      if (y=="" ||  y.length<=5)
                       {
                          $(".erreur3").css("display","block");
                          $(".m3").css("display","block");
                       }
                      else 
                       {
                          $(".erreur3").css("display","none");
                          $(".m3").css("display","none");
                        }   

                    });
             });
             

    $("input#submit").click(function(){
      
      var valid=true;

              var a=$("input#nom").val().trim();
    
                      if (a=="" ||  a.length<=3)
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



               var b=$("input#login").val().trim();
    
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


                var c=$("input#pwd").val().trim();
    
                      if (c=="" ||  c.length<=5)
                       {
                          $(".erreur3").css("display","block");
                          $(".m3").css("display","block");
                          valid=false;
                       }
                      else 
                       {
                          $(".erreur3").css("display","none");
                          $(".m3").css("display","none");
                        }   


                 var d=$("input#pwd-c").val().trim();
    
                      if (c!=d)
                       {
                          $(".erreur4").css("display","block");
                          $(".m4").css("display","block");
                          valid=false;
                       }
                      else 
                       {
                          $(".erreur4").css("display","none");
                          $(".m4").css("display","none");
                        }   
                       


    return valid;
      });




});


  </script>
 
  <style type="text/css">
    body{
      overflow-y:hidden;

    
    }
    div.mere{
      width:33%;
      height:50%;
      margin:0px auto;
      background:#333547;
      padding:20px;
      position: relative;
       

    }
    label{
      color:#2ECDDC;font-weight: lighter;font-size:15px;
    }

    .erreur1{

      background-color:RGB(209, 20, 46);width:150px;color:#FFF;padding:10px;position:absolute;left:-143px;top:149px;
      border-radius:5px;display: none;
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

      background-color:RGB(209, 20, 46);width:150px;color:#FFF;padding:10px;position:absolute;left:-142px;top:242px;display:none;
      border-radius:5px;
    }
    
    .m2{
      width: 0; 
      height: 0; 
      border-left: 10px solid RGB(209, 20, 46) ;
      border-right: 10px solid transparent;
  
      border-top: 10px solid transparent;

      border-bottom: 10px solid transparent;

      border-radius:5px;
      position:absolute;left:5px;top:253px;display:none;
    }
    .erreur3{

      background-color:RGB(209, 20, 46);width:320px;color:#FFF;padding:10px;position:absolute;left:-310px;top:312px;
      border-radius:5px;display:none;
    }
    .m3{
      width: 0; 
      height: 0; 
      border-left: 10px solid RGB(209, 20, 46) ;
      border-right: 10px solid transparent;
  
      border-top: 10px solid transparent;

      border-bottom: 10px solid transparent;

      border-radius:5px;
      position:absolute;left:5px;top:333px;display: none;
    }
     .erreur4{

      background-color:RGB(209, 20, 46);width:320px;color:#FFF;padding:10px;position:absolute;left:-310px;top:394px;
      border-radius:5px;display:none;
    }
    .m4{
      width: 0; 
      height: 0; 
      border-left: 10px solid RGB(209, 20, 46) ;
      border-right: 10px solid transparent;
  
      border-top: 10px solid transparent;

      border-bottom: 10px solid transparent;

      border-radius:5px;
      position:absolute;left:5px;top:415px;display:none;
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
  <div style="width:100%;height:92px;background:#FFF;">


   <div style="padding-left:70px;padding-top:13px;width:20%;float:left;">
         <i class="material-icons md-36 text-muted" style="font-size:50px;color:#2ECDDC;background-color:#DBE0EF;border-radius:50%;padding:5px;">edit</i>
      </div> 

      <div style="float:left;padding-top:11px;padding-left:70px;">
          <h4 style="color:#2ECDDC;">Sign Up</h4>

          <p style="color:##DBE0EF;">Create a new account</p>

      </div>
        
     

  </div>
  <form  action="Servlet" method="post" style="margin-top:20px; ">
    <div class="form-group">
    <label for="name">Nom:</label>
    <input type="text"  class="form-control"  name="nom" id="nom">
    <div class="erreur1">Quel est votre nom ?<br>(Au moins 4 lettres)</div><div class="m1"></div>
  </div>

  <div class="form-group">
     
    <label for="login">Prenom:</label>
    <input type="text" class="form-control" name="prenom" id="login">
     <div class="erreur2">Entrez votre prenom </div><div class="m2"></div>
  
     </div>
     <div  id="alert_login" style="width:345px;height:80px;display:none;" class="alert alert-danger">
     <a href="#"  class="close" data-dismiss="alert" aria-label="close">&times;</a>
     <strong>Attention ! </strong> login (<%=login %>) semble étre associée à un autre compte. 
     </div>
  <div class="form-group">
    <label for="pwd">Mot de passe :</label>
    <input type="password" class="form-control" id="pwd" name="pass">
     <div class="erreur3">Saisissez une combinaison d'au moins six chiffres,<br>
     lettres et signes de ponctuation (tels que ! et &)</div><div class="m3"></div>
  </div>

  <div class="form-group">
    <label for="pwd-confermation">Confirmer mot de passe:</label>
    <input type="password" class="form-control" id="pwd-c" name="passbis">
    <div class="erreur4">vous avez entré une fausse confirmation,<br>Veuillez resaisir votre mot de passe !! </div><div class="m4"></div>
  </div>


<br>
<div class="form-group">
      <input class="form-control btn btn-info"  id="submit" type="submit" value="Sign Up">
    </div>
  </form>

<div style="padding-left:90px;position: relative;margin-top:18px;"><input class="terms" type="checkbox" />&nbsp; <span style="color:#D5CDDC;"> I agree to the</span> <a href="#" style="color:#2ECDDC;font-size:15px;">Terms of Use</a></div>

<div style="background:#FFF;width:100%;position:relative;margin-top:5px;padding:12px 0px 2px 93px;">
    <p style="font-size:15px;">Already signed up? <a href="authent.jsp" style="color:#2ECDDC;">Log in</a><p>
   </div>


</div>







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

<!-- -------------- /Scripts -------------- -->

</body>


<!-- Mirrored from alliance-html.themerex.net/utility-confirmation.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 11 Feb 2016 19:10:31 GMT -->
</html>
