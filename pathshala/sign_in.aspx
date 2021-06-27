<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sign_in.aspx.cs" Inherits="pathshala.sign_in" %>

<%@ Import Namespace="Microsoft.AspNet.FriendlyUrls" %>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from gambolthemes.net/html-items/edututsplus_demo/main_demo/sign_in.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 28 May 2021 08:35:55 GMT -->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, shrink-to-fit=9">
    <meta name="description" content="Gambolthemes">
    <meta name="author" content="Gambolthemes">
    <title>Pathshala - Sign In</title>

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
</head>
<body>
    <div class="sign_in_up_bg">
        <div class="container">
            <div class="row justify-content-lg-center justify-content-md-center">
                <div class="col-lg-12">
                    <div class="main_logo25" id="logo">
                        <a href="index-2.html">
                            <img style="width: 139px" src="images/mylogos.png" alt=""></a>
                        <a href="index-2.html">
                            <img class="logo-inverse" src="images/ct_logo.svg" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-8">
                    <div class="sign_form">
                        <h2>Welcome Back</h2>
                        <p>Log In to Your Pathshala Account!</p>
                        <button class="social_lnk_btn color_btn_fb"><i class="uil uil-facebook-f"></i>Continue with Facebook</button>
                        <button class="social_lnk_btn mt-15 color_btn_tw"><i class="uil uil-twitter"></i>Continue with Twitter</button>
                        <button runat="server" id="btnGoogleSingin" onserverclick="btnGoogleSingin_ServerClick" class="social_lnk_btn mt-15 color_btn_go"><i class="uil uil-google"></i>Continue with Google</button>
                        <form runat="server">
                            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <asp:UpdateProgress DisplayAfter="300" DynamicLayout="true" ID="UpdateProgress1" runat="server">
                                        <ProgressTemplate>
                                            <img src="AjazProcessImage/Spinner-1s-56px.gif" />
                                        </ProgressTemplate>
                                    </asp:UpdateProgress>
                                    <div class="justify-content-between mt-15">
                                        <asp:Label CssClass="alert alert-secondary" Text="" ID="ResultShowLogin" Visible="false" runat="server" />
                                    </div>
                                    <div class="ui search focus mt-15">
                                        <div class="ui left icon input swdh95">
                                            <input runat="server" class="prompt srch_explore" type="email" name="emailaddress" value="" id="id_email" required="" maxlength="64" placeholder="Email Address">
                                            <i class="uil uil-envelope icon icon2"></i>
                                        </div>
                                    </div>
                                    <div class="ui search focus mt-15">
                                        <div class="ui left icon input swdh95">
                                            <input runat="server" class="prompt srch_explore" type="password" name="password" value="" id="id_password" required="" maxlength="64" placeholder="Password">
                                            <i class="uil uil-key-skeleton-alt icon icon2"></i>
                                        </div>
                                    </div>
                                    <div class="ui form mt-30 checkbox_sign">
                                        <div class="inline field">
                                            <div class="ui checkbox mncheck">
                                                <input type="checkbox" tabindex="0" class="hidden">
                                                <label>Remember Me</label>
                                            </div>
                                        </div>
                                    </div>
                                    <asp:Button ID="btnSingIn" OnClick="btnSingIn_Click" CssClass="login-btn" Text="Sign In" runat="server" />
                                </ContentTemplate>
                            </asp:UpdatePanel>


                        </form>
                        <p class="sgntrm145">Or <a href="forgot_password.aspx">Forgot Password</a>.</p>
                        <p class="mb-0 mt-30">Don't have an account? <a href="sign_up.aspx">Sign Up</a></p>
                        <div style="padding-top: 20px;">
                            <a href="Instructor/VerifiedInstructor.aspx" class="upload_btn">Create New Course</a>
                        </div>
                    </div>
                    <div class="sign_footer">
                        <img src="images/sign_logo.png" alt="">© 2020 <strong>Pathshala</strong>. All Rights Reserved.
                    </div>
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

<!-- Mirrored from gambolthemes.net/html-items/edututsplus_demo/main_demo/sign_in.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 28 May 2021 08:35:57 GMT -->
</html>
