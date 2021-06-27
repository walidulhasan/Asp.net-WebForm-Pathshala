<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VerifiedInstructor.aspx.cs" Inherits="pathshala.Instructor.VerifiedInstructor" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, shrink-to-fit=9">
    <meta name="description" content="Gambolthemes">
    <meta name="author" content="Gambolthemes">
    <title>Pathshala - Sign In</title>

    <link rel="icon" type="image/png" href="../images/fav.png">

    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700,500" rel='stylesheet'>
    <link href='../vendor/unicons-2.0.1/css/unicons.css' rel='stylesheet'>
    <link href="../css/vertical-responsive-menu1.min.css" rel="stylesheet">
    <link href="../css/instructor-dashboard.css" rel="stylesheet">
    <link href="../css/instructor-responsive.css" rel="stylesheet">
    <link href="../css/night-mode.css" rel="stylesheet">
    <link href="../css/jquery-steps.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet" />
    <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
    <link href="../vendor/OwlCarousel/assets/owl.carousel.css" rel="stylesheet">
    <link href="../vendor/OwlCarousel/assets/owl.theme.default.min.css" rel="stylesheet">
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../vendor/semantic/semantic.min.css">
</head>
<body>

    <div class="wrapper">
        <div class="sa4d25">
            <div style="margin-left: 166px">
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="st_title"><i class="uil uil-check-circle"></i>Verification</h2>
                    </div>
                </div>
                <div class=" justify-content-xl-center justify-content-lg-center justify-content-md-center">
                    <div class="col-xl-6 col-lg-8 col-md-8">
                                <h4>Verify Your ID</h4>
                                <form runat="server">
                                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <ContentTemplate>


                                            <div class="ui search focus mt-50 lbel25">
                                                <label>Job ID*</label>
                                                 <asp:UpdateProgress DynamicLayout="true" DisplayAfter="300" ID="UpdateProgress1" runat="server">
                                                <ProgressTemplate>
                                                    <img style="margin-top:6px; margin-left:210px; margin-bottom:4px;"  src="../AjazProcessImage/Spinnerx.gif"  />
                                                </ProgressTemplate>
                                            </asp:UpdateProgress>
                                                <div class="ui left icon input swdh19">
                                                    <input runat="server" class="prompt srch_explore text-center" type="text" placeholder="Job ID" name="fullname" maxlength="60" id="id_jobId" value="">
                                                </div>
                                            </div>
                                            <%--<div class="part_input mt-30 lbel25">
                                        <label>Upload Document*</label>
                                        <div class="input-group">
                                            <div class="custom-file">
                                                <input type="file" class="custom-file-input" id="inputGroupFile06">
                                                <label class="custom-file-label" for="inputGroupFile06">No Choose</label>
                                            </div>
                                        </div>
                                    </div>--%>
                                            <%-- <button class="verify_submit_btn" id="id_btnVerificationCheck" runat="server" onserverclick="id_btnVerificationCheck_ServerClick"  type="button">Application to Register</button>--%>
                                            <asp:Button  ID="id_btnVerification" CssClass="verify_submit_btn" OnClick="id_btnVerification_Click" Text="Application to Register" runat="server" />
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
