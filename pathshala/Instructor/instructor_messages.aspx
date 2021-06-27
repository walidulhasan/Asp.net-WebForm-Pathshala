﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Instructor/instructor.Master" AutoEventWireup="true" CodeBehind="instructor_messages.aspx.cs" Inherits="pathshala.Instructor.instructor_messages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper">
        <div class="sa4d25">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="st_title"><i class="uil uil-comments"></i>Messages</h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="all_msg_bg">
                            <div class="row no-gutters">
                                <div class="col-xl-4 col-lg-5 col-md-12">
                                    <div class="msg_search">
                                        <div class="ui search focus">
                                            <div class="ui left icon input swdh11 swdh15">
                                                <input class="prompt srch_explore" type="text" placeholder="Search Messages...">
                                                <i class="uil uil-search-alt icon icon8"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="simplebar-content-wrapper">
                                        <div class="group_messages">
                                            <div class="chat__message__dt active">
                                                <div class="user-status">
                                                    <div class="user-avatar">
                                                        <img src="images/left-imgs/img-1.jpg" alt="">
                                                        <div class="msg__badge">2</div>
                                                    </div>
                                                    <p class="user-status-title"><span class="bold">John Doe</span></p>
                                                    <p class="user-status-text">Hi! Sir, How are you. I ask you one thing please explain it this video price.</p>
                                                    <p class="user-status-time floaty">7 hours ago</p>
                                                </div>
                                            </div>
                                            <div class="chat__message__dt">
                                                <div class="user-status">
                                                    <div class="user-avatar">
                                                        <img src="images/left-imgs/img-2.jpg" alt="">
                                                        <div class="msg__badge">3</div>
                                                    </div>
                                                    <p class="user-status-title"><span class="bold">Kerstin Cable</span></p>
                                                    <p class="user-status-text">Hello, I paid you video tutorial but did not play error 404.</p>
                                                    <p class="user-status-time floaty">8 hours ago</p>
                                                </div>
                                            </div>
                                            <div class="chat__message__dt">
                                                <div class="user-status">
                                                    <div class="user-avatar">
                                                        <img src="images/left-imgs/img-3.jpg" alt="">
                                                        <div class="msg__badge">1</div>
                                                    </div>
                                                    <p class="user-status-title"><span class="bold">Jose Portilla</span></p>
                                                    <p class="user-status-text">Thanks Sir, Such a nice video.</p>
                                                    <p class="user-status-time floaty">15 hours ago</p>
                                                </div>
                                            </div>
                                            <div class="chat__message__dt">
                                                <div class="user-status">
                                                    <div class="user-avatar">
                                                        <img src="images/left-imgs/img-4.jpg" alt="">
                                                        <div class="msg__badge">7</div>
                                                    </div>
                                                    <p class="user-status-title"><span class="bold">Farhat Amin</span></p>
                                                    <p class="user-status-text">Hi! Sir, this is a purchase key CFKX12536ERUJSKLL</p>
                                                    <p class="user-status-time floaty">22 hours ago</p>
                                                </div>
                                            </div>
                                            <div class="chat__message__dt">
                                                <div class="user-status">
                                                    <div class="user-avatar">
                                                        <img src="images/left-imgs/img-5.jpg" alt="">
                                                        <div class="msg__badge">12</div>
                                                    </div>
                                                    <p class="user-status-title"><span class="bold">Kyle Pew</span></p>
                                                    <p class="user-status-text">Pls! Upload .NET Course</p>
                                                    <p class="user-status-time floaty">2 days ago</p>
                                                </div>
                                            </div>
                                            <div class="chat__message__dt">
                                                <div class="user-status">
                                                    <div class="user-avatar">
                                                        <img src="images/left-imgs/img-6.jpg" alt="">
                                                    </div>
                                                    <p class="user-status-title"><span class="bold">Eli Natoli</span></p>
                                                    <p class="user-status-text">Hi Sir thank you very very much for bootstrap full course.</p>
                                                    <p class="user-status-time floaty">5 days ago</p>
                                                </div>
                                            </div>
                                            <div class="chat__message__dt">
                                                <div class="user-status">
                                                    <div class="user-avatar">
                                                        <img src="images/left-imgs/img-7.jpg" alt="">
                                                        <div class="msg__badge">6</div>
                                                    </div>
                                                    <p class="user-status-title"><span class="bold">Jaysen Batchelor</span></p>
                                                    <p class="user-status-text">Thank you! Sir</p>
                                                    <p class="user-status-time floaty">7 days ago</p>
                                                </div>
                                            </div>
                                            <div class="chat__message__dt">
                                                <div class="user-status">
                                                    <div class="user-avatar">
                                                        <img src="images/left-imgs/img-8.jpg" alt="">
                                                        <div class="msg__badge">1</div>
                                                    </div>
                                                    <p class="user-status-title"><span class="bold">Quinton Batchelor</span></p>
                                                    <p class="user-status-text">Hey!</p>
                                                    <p class="user-status-time floaty">13 days ago</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-8 col-lg-7 col-md-12">
                                    <div class="chatbox_right">
                                        <div class="chat_header">
                                            <div class="user-status">
                                                <div class="user-avatar">
                                                    <img src="images/left-imgs/img-1.jpg" alt="">
                                                </div>
                                                <p class="user-status-title"><span class="bold">John Doe</span></p>
                                                <p class="user-status-tag online">Online</p>
                                                <div class="user-status-time floaty eps_dots eps_dots5 more_dropdown">
                                                    <a href="#"><i class="uil uil-ellipsis-h"></i></a>
                                                    <div class="dropdown-content">
                                                        <span><i class="uil uil-trash-alt"></i>Delete</span>
                                                        <span><i class="uil uil-ban"></i>Block</span>
                                                        <span><i class="uil uil-windsock"></i>Report</span>
                                                        <span><i class="uil uil-volume-mute"></i>Mute</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="messages-line simplebar-content-wrapper2 scrollstyle_4">
                                            <div class="mCustomScrollbar">
                                                <div class="main-message-box ta-right">
                                                    <div class="message-dt">
                                                        <div class="message-inner-dt">
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rutrum congue leo eget malesuada. Vivamus suscipit tortor eget felis porttitor.</p>
                                                        </div>
                                                        <span>Sat, April 10, 1:08 PM</span>
                                                    </div>
                                                </div>
                                                <div class="main-message-box st3">
                                                    <div class="message-dt st3">
                                                        <div class="message-inner-dt">
                                                            <p>Cras ultricies ligula.</p>
                                                        </div>
                                                        <span>5 minutes ago</span>
                                                    </div>
                                                </div>
                                                <div class="main-message-box ta-right">
                                                    <div class="message-dt">
                                                        <div class="message-inner-dt">
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rutrum congue leo eget malesuada. Vivamus suscipit tortor eget felis porttitor.</p>
                                                        </div>
                                                        <span>Sat, April 10, 1:08 PM</span>
                                                    </div>
                                                </div>
                                                <div class="main-message-box st3">
                                                    <div class="message-dt st3">
                                                        <div class="message-inner-dt">
                                                            <p>Lorem ipsum dolor sit amet</p>
                                                        </div>
                                                        <span>2 minutes ago</span>
                                                    </div>
                                                </div>
                                                <div class="main-message-box ta-right">
                                                    <div class="message-dt">
                                                        <div class="message-inner-dt">
                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rutrum congue leo eget malesuada. Vivamus suscipit tortor eget felis porttitor.</p>
                                                        </div>
                                                        <span>Sat, April 10, 1:08 PM</span>
                                                    </div>
                                                </div>
                                                <div class="main-message-box st3">
                                                    <div class="message-dt st3">
                                                        <div class="message-inner-dt">
                                                            <p>....</p>
                                                        </div>
                                                        <span>Typing...</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="message-send-area">
                                            <form>
                                                <div class="mf-field">
                                                    <button class="add_photo"><i class="uil uil-camera"></i></button>
                                                    <div class="ui search focus input__msg">
                                                        <div class="ui left icon input swdh19">
                                                            <input class="prompt srch_explore" type="text" id="chat-widget-message-text-2" name="chat_widget_message_text_2" placeholder="Write a message...">
                                                        </div>
                                                    </div>
                                                    <button class="add_msg" type="submit"><i class="uil uil-message"></i></button>
                                                </div>
                                            </form>
                                        </div>
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
