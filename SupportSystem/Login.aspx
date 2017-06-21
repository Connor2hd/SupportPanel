<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SupportSystem.Login" %>

<!DOCTYPE html>
<html>

<head>
  <title>Test Materialize Site</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.2/css/materialize.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.2/js/materialize.min.js"></script>
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
	<link rel="stylesheet" href="stylesheet.css">
<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
</head>

<body>
  <nav>
    <div class="nav-wrapper">
      <a href="#" class="brand-logo">Logo</a>
      <ul id="nav-mobile" class="right hide-on-med-and-down">
        <!--<li><a href="sass.html">Sass</a></li>-->
      </ul>
    </div>
  </nav>

  <ul id="slide-out" class="side-nav fixed">
    <li>
      <div class="userView">
        <img class="background" src="http://placehold.it/350x150">
        <a href="#!user"><img class="circle" src="http://placehold.it/350x300"></a>
        <a href="#!name"><span class="white-text name">John Doe</span></a>
        <a href="#!email"><span class="white-text email">Email Here Maybe</span></a>
      </div>
    </li>
    <li><a class="waves-effect" href="#!"><i class="material-icons">home</i>Home</a></li>
    <li><a class="waves-effect" href="#!"><i class="material-icons">chat</i>Tickets</a></li>
    <li><a class="waves-effect" href="#!"><i class="material-icons">settings</i>Settings</a></li>
    <li><a class="waves-effect" href="#!"><i class="material-icons">business</i>Business</a></li>
    <li>
      <div class="divider"></div>
    </li>
    <li><a class="subheader">Subheader</a></li>
    <li><a class="waves-effect" href="#!">Third Link With Waves</a></li>
  </ul>

  <div class="wrapper">
    <div class="row">
    <form class="col s12">
      <div class="row">
        <br>
        <div class="input-field col s6">
          <i class="material-icons prefix">account_circle</i>
          <input id="icon_prefix" type="text" class="validate">
          <label for="icon_prefix">Username</label>
        </div>
        <div class="input-field col s6">
          <i class="material-icons prefix">phone</i>
          <input id="icon_telephone" type="password" class="validate">
          <label for="icon_telephone">Password</label>
        </div>
        <div>
          <center><span><a href="#">I Forgot My Password</span></center>
      </div>
    </form>
  </div>
  <center><a class="waves-effect waves-light btn-large"><i class="material-icons left">done</i>Login</a></center>
  </div>
  

</body>
</html>
