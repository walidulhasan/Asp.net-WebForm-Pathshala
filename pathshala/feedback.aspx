<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="pathshala.feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <div class="wrapper">
        <div class="sa4d25">
            <div class="container-fluid">
                <%--<asp:Label ID="Label1"  CssClass="alert alert-info" runat="server" Text="ffff"></asp:Label>--%>
                <input id="result" runat="server" visible="false" style="margin-left:111px"   name="" class="alert alert-info" type="text" />
                <br />
                <div class="row">
                    <div class="col-lg-12 mt-25" style="margin-left:100px">
                        <h2 class="st_title"><i class="uil uil-comment-info-alt"></i>Send Feedback</h2>
                        <div class="row">
                            <div id="mailPage" runat="server" class="col-lg-6 col-md-8">
                                <div class="ui search focus">
                                    <div class="ui left icon input swdh11 swdh19">
                                        <asp:TextBox CssClass="prompt srch_explore" TextMode="Email" Placeholder="Email Address" ID="id_email" runat="server"></asp:TextBox>
                                    </div>
                                    <asp:RequiredFieldValidator CssClass="pl-3" ErrorMessage="Email is Required" ControlToValidate="id_email" ForeColor="Red" ValidationGroup="RequiredFieldValidator" ID="RequiredFieldValidator1" runat="server"></asp:RequiredFieldValidator>
                                </div>
                                <div class="ui search focus mt-1">
                                    <div class="ui left icon input swdh11 swdh19">
                                        <asp:TextBox CssClass="prompt srch_explore" Placeholder="Subject" ID="id_subject" runat="server"></asp:TextBox>
                                    </div>
                                    <asp:RequiredFieldValidator CssClass="pl-3" ErrorMessage="Subject is Required" ControlToValidate="id_subject" ForeColor="Red" ID="RequiredFieldValidator2" ValidationGroup="RequiredFieldValidator" runat="server"></asp:RequiredFieldValidator>
                                </div>
                                <div class="ui search focus mt-1">
                                    <div class="ui form swdh30">
                                        <div class="field">
                                            <asp:TextBox Rows="6" ID="id_about" TextMode="MultiLine" Placeholder="Describe your issue " runat="server"></asp:TextBox>
                                        </div>
                                        <asp:RequiredFieldValidator CssClass="pl-3" ErrorMessage="Body is Required" ControlToValidate="id_about" ForeColor="Red" ID="RequiredFieldValidator3" ValidationGroup="RequiredFieldValidator" runat="server"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-group1 mt-1">
                                    <label for="file5">Add Your File</label>
                                    <div class="image-upload-wrap">
                                        <%--<input class="file-upload-input" id="file5" type="file" onchange="readURL(this);" accept="image/*">--%>
                                        <asp:FileUpload CssClass="file-upload-input" ID="FileUpload1" runat="server" />
                                        <div class="drag-text">
                                            <div class="drag-text">
                                                <i class="fas fa-cloud-upload-alt"></i>
                                                <h4>Select screenshots to upload</h4>
                                                <p>or drag and drop screenshots</p>
                                            </div>
                                        </div>
                                    </div>
                                    <asp:Button CssClass="save_btn" ValidationGroup="RequiredFieldValidator" OnClick="btnSendFeedback_Click" ID="btnSendFeedback" runat="server" Text="Send Feedback" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
