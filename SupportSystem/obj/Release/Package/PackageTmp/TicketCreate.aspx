<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TicketCreate.aspx.cs" Inherits="SupportSystem.TicketCreate" %>

    <!DOCTYPE html>
    <html>
    <head>
        <title>Test Materialize Site</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.2/css/materialize.min.css" />
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet" />
        <link href="css/stylesheet.css" rel="stylesheet" />
        <script src="//code.jquery.com/jquery-2.1.2.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.2/js/materialize.min.js"></script>
        <script>
            $(document).ready(function () {
                $("select").material_select();
            });
        </script>
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
                    <a href="#!user"><img class="circle" src="http://placehold.it/350x300">
                    </a>
                    <a href="#!name"><span class="white-text name">John Doe</span></a>
                    <a href="#!email"><span class="white-text email">Email Here Maybe</span></a>
                </div>
            </li>
            <li><a class="waves-effect" href="#!"><i class="material-icons">home</i>Home</a>
            </li>
            <li><a class="waves-effect" href="#!"><i class="material-icons">chat</i>Tickets</a>
            </li>
            <li><a class="waves-effect" href="#!"><i class="material-icons">settings</i>Settings</a>
            </li>
            <li><a class="waves-effect" href="#!"><i class="material-icons">business</i>Business</a>
            </li>
            <li>
                <div class="divider"></div>
            </li>
            <li><a class="subheader">Subheader</a>
            </li>
            <li><a class="waves-effect" href="#!">Third Link With Waves</a>
            </li>
        </ul>

        <main>
            <div class="wrapper">
                <br>
                <span class="title">Create a New Ticket</span>
                <form runat="server" id="form">
                <div class="row">
                        <div class="row">
                            <div class="input-field col s6">
                                <asp:TextBox ID="txtTitle" runat="server" CssClass="validate"></asp:TextBox>
                                <label for="txtSubject">Subject</label>
                            </div>
                            <div class="input-field col s12">
                                <asp:DropDownList ID="ddlDepartment" runat="server"></asp:DropDownList>
                                <label>Department</label>
                            </div>
                            <div class="input-field col s12">
                                <asp:DropDownList ID="ddlUrgencyLevel" runat="server"></asp:DropDownList>
                                <label>Urgency Level</label>
                            </div>
                            <div class="row">
                                <div class="input-field col s12">
                                    <asp:TextBox ID="txtBody" runat="server"></asp:TextBox>
                                    <label for="txtBody">Description</label>
                                </div>
                            </div>
                            <center>
                                <asp:Button CssClass="btn waves-effect waves-light" ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"></asp:Button>
                                    <i class="material-icons right">send</i>
                            </center>
                        </div>
                </div>
                </form>
                </div>
        </main>

<%--        <footer class="page-footer" style="position:fixed;left:0px;bottom:0px;height:150px;width:100%;">--%>
        <footer class="page-footer" id="footer">
            <div class="container">
                <div class="row">
                    <div class="col l6 s12">
                        <h5 class="white-text">Support Ticket System</h5>
                        <p class="grey-text text-lighten-4">This is a support ticket system developed by Connor Mackay to demonstrate my UI and C# development skills. For more information please visit the github repository <a class="grey-text text-lighten-3" href="#!">here</a>
                        </p>
                    </div>
                    <div class="col l4 offset-l2 s12">
                        <h5 class="white-text">Connor Mackay</h5>
                        <ul>
                            <li><a class="grey-text text-lighten-3" href="#!">LinkedIn</a>
                            </li>
                            <li><a class="grey-text text-lighten-3" href="#!">Github</a>
                            </li>
                            <li><a class="grey-text text-lighten-3" href="#!">Portfolio Site</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="footer-copyright">
                <div class="container">
                    © 2017 Connor Mackay
                    <a class="grey-text text-lighten-4 right" href="#!">Designed with Google Materializa CSS</a>
                </div>
            </div>
        </footer>
    </body>
    </html>
