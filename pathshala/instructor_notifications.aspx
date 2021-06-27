﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="instructor_notifications.aspx.cs" Inherits="pathshala.instructor_notifications" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
    <link href="css/instructor-dashboard.css" rel="stylesheet" />
    <title>Instructor Notification</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <div class="wrapper">
        <div class="sa4d25">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="st_title"><i class="uil uil-bell"></i>Notifications</h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <a href="#" class="setting_noti">Notification Setting</a>
                        <div class="all_msg_bg">
                            <div class="channel_my item all__noti5">
                                <div class="profile_link">
                                    <img src="images/left-imgs/img-1.jpg" alt="">
                                    <div class="pd_content">
                                        <h6>Rock William</h6>
                                        <p class="noti__text5">Like Your Comment On Video <strong>How to create sidebar menu</strong>.</p>
                                        <span class="nm_time">2 min ago</span>
                                    </div>
                                </div>
                            </div>
                            <div class="channel_my item all__noti5">
                                <div class="profile_link">
                                    <img src="images/left-imgs/img-2.jpg" alt="">
                                    <div class="pd_content">
                                        <h6>Jassica Smith</h6>
                                        <p class="noti__text5">Added New Review In Video <strong>Full Stack PHP Developer</strong>.</p>
                                        <span class="nm_time">12 min ago</span>
                                    </div>
                                </div>
                            </div>
                            <div class="channel_my item all__noti5">
                                <div class="profile_link">
                                    <img src="images/left-imgs/img-9.jpg" alt="">
                                    <div class="pd_content">
                                        <p class="noti__text5">Your Membership Activated.</p>
                                        <span class="nm_time">20 min ago</span>
                                    </div>
                                </div>
                            </div>
                            <div class="channel_my item all__noti5">
                                <div class="profile_link">
                                    <img src="images/left-imgs/img-9.jpg" alt="">
                                    <div class="pd_content">
                                        <p class="noti__text5">Your Course Approved Now. <a href="#" class="crse_bl">How to create sidebar menu</a>.</p>
                                        <span class="nm_time">20 min ago</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
