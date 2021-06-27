<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="all_instructor.aspx.cs" Inherits="pathshala.all_instructor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <div class="wrapper">
        <div class="sa4d25">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xl-12 col-lg-8">
                        <div class="section3125">
                            <div class="explore_search">
                                <div class="ui search focus">
                                    <div class="ui left icon input swdh11">
                                        <input class="prompt srch_explore" type="text" placeholder="Search Tutors...">
                                        <i class="uil uil-search-alt icon icon2"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="_14d25">
                            <div class="row">
                                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="id_SqlDSAllInstructor">
                                    <HeaderTemplate></HeaderTemplate>
                                    <ItemTemplate>
                                        <div class="col-lg-3 col-md-4">
                                            <div class="fcrse_1 mt-30">
                                                <div class="tutor_img">
                                                    <a href="instructor_profile_view.aspx">
                                                        <asp:Image ID="InstructorImage" runat="server" ImageUrl='<%# Eval("InstructorImage", "~/InstructorImage/{0}") %>' CssClass="img-rounded" />
                                                </div>
                                                <div class="tutor_content_dt">
                                                    <div class="tutor150">
                                                        <a href="instructor_profile_view.aspx" class="tutor_name"><%# Eval("firstName") %></a>
                                                        <div class="mef78" title="Verify">
                                                            <i class="uil uil-check-circle"></i>
                                                        </div>
                                                    </div>
                                                    <div class="tutor_cate"><%# Eval("instructorHeadline") %> Tutor</div>
                                                    <ul class="tutor_social_links">
                                                        <%--<li><a target="_blank" href='<%# Eval("fb") %>' class="western"><i class="fab fa-sitemap"></i></a></li>--%>
                                                        <li><a target="_blank" href='<%# Eval("fb") %>' class="fb"><i class="fab fa-facebook-f"></i></a></li>
                                                        <li><a href='<%# Eval("tw") %>'' class="tw"><i class="fab fa-twitter"></i></a></li>
                                                        <li><a href='<%# Eval("li") %>'' class="ln"><i class="fab fa-linkedin-in"></i></a></li>
                                                        <li><a href='<%# Eval("yt") %>'' class="yu"><i class="fab fa-youtube"></i></a></li>
                                                    </ul>
                                                    <div class="tut1250">
                                                        <span class="vdt15">100K Students</span>
                                                        <span class="vdt15">15 Courses</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                                <asp:SqlDataSource ID="id_SqlDSAllInstructor" ConnectionString="<%$ ConnectionStrings:pathshalaDBCon %>" SelectCommand="SELECT * FROM [tbl_basicProfileInstructor]" runat="server"></asp:SqlDataSource>
                                <div class="col-md-12">
                                    <div class="main-loader mt-50">
                                        <div class="spinner">
                                            <div class="bounce1"></div>
                                            <div class="bounce2"></div>
                                            <div class="bounce3"></div>
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
