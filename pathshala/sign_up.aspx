<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sign_up.aspx.cs" Inherits="pathshala.sign_up" %>

<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from gambolthemes.net/html-items/edututsplus_demo/main_demo/sign_up.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 28 May 2021 08:36:06 GMT -->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, shrink-to-fit=9">
    <meta name="description" content="Gambolthemes">
    <meta name="author" content="Gambolthemes">
    <title>Pathshala - Sign Up</title>

    <link rel="icon" type="image/png" href="images/fav.png">

    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700,500" rel='stylesheet'>
    <link href='vendor/unicons-2.0.1/css/unicons.css' rel='stylesheet'>
    <link href="css/vertical-responsive-menu.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
    <link href="css/night-mode.css" rel="stylesheet">

    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
    <link href="vendor/OwlCarousel/assets/owl.carousel.css" rel="stylesheet">
    <link href="vendor/OwlCarousel/assets/owl.theme.default.min.css" rel="stylesheet">
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="vendor/semantic/semantic.min.css">
    <%--<style type="text/css">
        #ResultShow{
            margin-left:120px;
        }
    </style>--%>
</head>
<body>

    <div class="sign_in_up_bg">
        <div class="container">
            <div class="row justify-content-lg-center justify-content-md-center">
                <div class="col-lg-12">
                    <div class="main_logo25" id="logo">
                        <a href="index-2.html">
                            <img style="width: 139px" src="images/mylogos.png" alt="" /></a>
                        <a href="index-2.html">
                            <img class="logo-inverse" src="images/ct_logo.svg" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-8">
                    <div class="sign_form">
                        <h2>Welcome to Pathshala</h2>
                        <p>Sign Up and Start Learning!</p>
                        
                        <form runat="server">
                            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <%--<input id="result" value="" runat="server" visible="false" style="margin-left: 111px" name="" class="alert alert-info" type="text" />--%>
                            <div class="justify-content-between mb-25">
                                <asp:Label CssClass="alert alert-secondary" Text="" ID="ResultShow" Visible="false" runat="server" />
                            </div>
                            <div class="ui search focus">
                                <div class="ui left icon input swdh11 swdh19">
                                    <input runat="server" class="prompt srch_explore" type="text" name="fullname" value="" id="id_fullname" required="" maxlength="64" placeholder="User Name">
                                </div>
                            </div>
                            <div class="ui search focus mt-15">
                                <div class="ui left icon input swdh11 swdh19">
                                    <input runat="server" class="prompt srch_explore" type="email" name="emailaddress" value="" id="id_email" required="" maxlength="64" placeholder="Email Address">
                                </div>
                            </div>
                            <div class="ui search focus mt-15">
                                <div class="ui left icon input swdh11 swdh19">
                                    <input  runat="server" class="prompt srch_explore" id="id_Password" type="password" name="password" value="" required="" maxlength="64" placeholder="Password">
                                </div>
                            </div>
                            <div class="ui search focus mt-15">
                                <div class="ui left icon input swdh11 swdh19">
                                    <input runat="server" class="prompt srch_explore" type="password" name="password" id="id_ConfirmPassword" required="" maxlength="64" placeholder="Confirm Password">
                                </div>
                            </div>
                            <div class="ui form mt-30 checkbox_sign">
                                <div class="inline field">
                                    <div class="ui checkbox mncheck">
                                        <input type="checkbox" tabindex="0" class="hidden">
                                        <label>I’m in for emails with exciting discounts and personalized recommendations</label>
                                    </div>
                                </div>
                            </div>
                            <asp:Button ID="btnRegister" OnClick="btnRegister_Click" CssClass="login-btn" runat="server" Text="Register" />
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </form>
                        <p class="sgntrm145">By signing up, you agree to our <a href="terms_of_use.html">Terms of Use</a> and <a href="terms_of_use.html">Privacy Policy</a>.</p>
                        <p class="mb-0 mt-30">Already have an account? <a href="sign_in.aspx">Log In</a></p>
                    </div>
                    <div class="sign_footer">
                        <img src="images/sign_logo.png" alt="">© 2020 <strong>Pathshala</strong>. All Rights Reserved.</div>
                </div>
            </div>
        </div>
    </div>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="vendor/OwlCarousel/owl.carousel.js"></script>
    <script src="vendor/semantic/semantic.min.js"></script>
    <script src="js/custom.js"></script>
    <script src="js/night-mode.js"></script>
</body>

<!-- Mirrored from gambolthemes.net/html-items/edututsplus_demo/main_demo/sign_up.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 28 May 2021 08:36:06 GMT -->
</html>
