<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="pathshala.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <div class="wrapper">
        <div class="sa4d25">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xl-9 col-lg-8">

                        <div class="section3125">
                            <h4 class="item_title">Live Streams</h4>
                            <a href="live_streams.html" class="see150">See all</a>
                            <div class="la5lo1">
                                <div class="owl-carousel live_stream owl-theme">
                                    <asp:Repeater ID="Repeater2" DataSourceID="SqlDataSource2" runat="server">
                                        <HeaderTemplate>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <div class="item">
                                                <div class="stream_1">
                                                    <a href="live_output.aspx" class="stream_bg">
                                                        <%--<img src='<%# Eval("InstructorImage", "~/InstructorImage/{0}") %>' alt="">--%>
                                                        <asp:Image ID="idInImage" runat="server" ImageUrl='<%# Eval("InstructorImage", "~/InstructorImage/{0}") %>' CssClass="img-rounded" />
                                                        <h4><%# Eval("firstName") %></h4>
                                                        <p>live<span></span></p>
                                                    </a>
                                                    &nbsp;&nbsp;&nbsp;
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                    </div>
                                </div>
                           
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:pathshalaDBCon %>" SelectCommand="SELECT * FROM [tbl_basicProfileInstructor]"></asp:SqlDataSource>
                        <div class="section3125 mt-50">
                            <h4 class="item_title">Featured Courses</h4>
                            <a href="#" class="see150">See all</a>
                            <div class="la5lo1">
                                <div class="owl-carousel featured_courses owl-theme">
                                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                        <HeaderTemplate>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <div class="item">
                                                <div class="fcrse_1 mb-20">
                                                    <a href='course_detail_view.aspx?id=<%# Eval("courseId") %>' class="fcrse_img">
                                                        <%--<img src="images/courses/img-1.jpg" alt="">--%>
                                                        <asp:Image ID="productIamge" runat="server" ImageUrl='<%# Eval("coverImage", "~/Uploads/{0}") %>' CssClass="img-rounded" />
                                                        <div class="course-overlay">
                                                            <div class="badge_seller">Bestseller</div>
                                                            <div class="crse_reviews">
                                                                <i class='uil uil-star'></i>4.5
                                                            </div>
                                                            <span class="play_btn1"><i class="uil uil-play"></i></span>
                                                            <div class="crse_timer">
                                                                <%# Eval("lectureDuration") %> Hours
                                                            </div>
                                                        </div>
                                                    </a>
                                                    <div class="fcrse_content">
                                                        <div class="eps_dots more_dropdown">
                                                            <a href="#"><i class='uil uil-ellipsis-v'></i></a>
                                                            <div class="dropdown-content">
                                                                <span><i class='uil uil-share-alt'></i>Share</span>
                                                                <span><i class="uil uil-clock-three"></i>Watch Later</span>
                                                                <span><i class='uil uil-ban'></i>Not Interested</span>
                                                                <span><i class="uil uil-windsock"></i>Report</span>
                                                            </div>
                                                        </div>
                                                        <div class="vdtodt">
                                                            <span class="vdt14">109k views</span>
                                                            <span><%=DateTime.Now.Day%> Days</span>
                                                        </div>
                                                        <a href='course_detail_view.aspx?id=<%# Eval("courseId") %>' class="crse14s"><%# Eval("courseTitle") %></a>
                                                        <a href="#" class="crse-cate"><%# Eval("category") %></a>
                                                        <div class="auth1lnkprce">
                                                            <p class="cr1fot">By <a href="#">John Doe</a></p>
                                                            <div class="prce142"><%# Eval("price", "{0:0.0}") %> <i><%# Eval("currency") %></i></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                            </div>
                        </div>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pathshalaDBCon %>" SelectCommand="SELECT * FROM [tbl_courseInformation]"></asp:SqlDataSource>
                        <%--<div class="section3125 mt-30">
                            <h4 class="item_title">Newest Courses</h4>
                            <a href="#" class="see150">See all</a>
                            <div class="la5lo1">
                                <div class="owl-carousel featured_courses owl-theme">
                                    <div class="item">
                                        <div class="fcrse_1 mb-20">
                                            <a href="#" class="fcrse_img">
                                                <img src="images/courses/img-12.jpg" alt="">
                                                <div class="course-overlay">
                                                    <div class="crse_reviews">
                                                        <i class='uil uil-star'></i>3.5
                                                    </div>
                                                    <span class="play_btn1"><i class="uil uil-play"></i></span>
                                                    <div class="crse_timer">
                                                        28 hours
                                                    </div>
                                                </div>
                                            </a>
                                            <div class="fcrse_content">
                                                <div class="eps_dots more_dropdown">
                                                    <a href="#"><i class='uil uil-ellipsis-v'></i></a>
                                                    <div class="dropdown-content">
                                                        <span><i class='uil uil-share-alt'></i>Share</span>
                                                        <span><i class="uil uil-clock-three"></i>Watch Later</span>
                                                        <span><i class='uil uil-ban'></i>Not Interested</span>
                                                        <span><i class="uil uil-windsock"></i>Report</span>
                                                    </div>
                                                </div>
                                                <div class="vdtodt">
                                                    <span class="vdt14">45 views</span>
                                                    <span class="vdt14">20 hours ago</span>
                                                </div>
                                                <a href="course_detail_view.aspx" class="crse14s">Advanced CSS and Sass: Flexbox, Grid, Animations and More!</a>
                                                <a href="#" class="crse-cate">Development | Sass</a>
                                                <div class="auth1lnkprce">
                                                    <p class="cr1fot">By <a href="#">Rock William</a></p>
                                                    <div class="prce142">$6</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="fcrse_1 mb-20">
                                            <a href="#" class="fcrse_img">
                                                <img src="images/courses/img-13.jpg" alt="">
                                                <div class="course-overlay">
                                                    <span class="play_btn1"><i class="uil uil-play"></i></span>
                                                    <div class="crse_timer">
                                                        30 hours
                                                    </div>
                                                </div>
                                            </a>
                                            <div class="fcrse_content">
                                                <div class="eps_dots more_dropdown">
                                                    <a href="#"><i class='uil uil-ellipsis-v'></i></a>
                                                    <div class="dropdown-content">
                                                        <span><i class='uil uil-share-alt'></i>Share</span>
                                                        <span><i class="uil uil-clock-three"></i>Watch Later</span>
                                                        <span><i class='uil uil-ban'></i>Not Interested</span>
                                                        <span><i class="uil uil-windsock"></i>Report</span>
                                                    </div>
                                                </div>
                                                <div class="vdtodt">
                                                    <span class="vdt14">20 Views</span>
                                                    <span class="vdt14">1 day ago</span>
                                                </div>
                                                <a href="course_detail_view.aspx" class="crse14s">The Complete Node.js Developer Course (3rd Edition)</a>
                                                <a href="#" class="crse-cate">Development | Node.js</a>
                                                <div class="auth1lnkprce">
                                                    <p class="cr1fot">By <a href="#">John Doe</a></p>
                                                    <div class="prce142">$3</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="fcrse_1 mb-20">
                                            <a href="#" class="fcrse_img">
                                                <img src="images/courses/img-20.jpg" alt="">
                                                <div class="course-overlay">
                                                    <div class="crse_reviews">
                                                        <i class='uil uil-star'></i>5.0
                                                    </div>
                                                    <span class="play_btn1"><i class="uil uil-play"></i></span>
                                                    <div class="crse_timer">
                                                        21 hours
                                                    </div>
                                                </div>
                                            </a>
                                            <div class="fcrse_content">
                                                <div class="eps_dots more_dropdown">
                                                    <a href="#"><i class='uil uil-ellipsis-v'></i></a>
                                                    <div class="dropdown-content">
                                                        <span><i class='uil uil-share-alt'></i>Share</span>
                                                        <span><i class="uil uil-clock-three"></i>Watch Later</span>
                                                        <span><i class='uil uil-ban'></i>Not Interested</span>
                                                        <span><i class="uil uil-windsock"></i>Report</span>
                                                    </div>
                                                </div>
                                                <div class="vdtodt">
                                                    <span class="vdt14">200 Views</span>
                                                    <span class="vdt14">4 days ago</span>
                                                </div>
                                                <a href="course_detail_view.aspx" class="crse14s">WordPress Development - Themes, Plugins &amp; Gutenberg</a>
                                                <a href="#" class="crse-cate">Design | Wordpress</a>
                                                <div class="auth1lnkprce">
                                                    <p class="cr1fot">By <a href="#">Joy Dua</a></p>
                                                    <div class="prce142">$14</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="fcrse_1 mb-20">
                                            <a href="course_detail_view.aspx" class="fcrse_img">
                                                <img src="images/courses/img-16.jpg" alt="">
                                                <div class="course-overlay">
                                                    <span class="play_btn1"><i class="uil uil-play"></i></span>
                                                    <div class="crse_timer">
                                                        22 hours
                                                    </div>
                                                </div>
                                            </a>
                                            <div class="fcrse_content">
                                                <div class="eps_dots more_dropdown">
                                                    <a href="#"><i class='uil uil-ellipsis-v'></i></a>
                                                    <div class="dropdown-content">
                                                        <span><i class='uil uil-share-alt'></i>Share</span>
                                                        <span><i class="uil uil-clock-three"></i>Watch Later</span>
                                                        <span><i class='uil uil-ban'></i>Not Interested</span>
                                                        <span><i class="uil uil-windsock"></i>Report</span>
                                                    </div>
                                                </div>
                                                <div class="vdtodt">
                                                    <span class="vdt14">11 Views</span>
                                                    <span class="vdt14">5 Days ago</span>
                                                </div>
                                                <a href="course_detail_view.aspx" class="crse14s">Vue JS 2 - The Complete Guide (incl. Vue Router & Vuex)</a>
                                                <a href="#" class="crse-cate">Development | Vue JS</a>
                                                <div class="auth1lnkprce">
                                                    <p class="cr1fot">By <a href="#">Manreet Kaur</a></p>
                                                    <div class="prce142">$10</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>--%>
                        <div class="section3126">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="value_props">
                                        <div class="value_icon">
                                            <i class='uil uil-history'></i>
                                        </div>
                                        <div class="value_content">
                                            <h4>Go at your own pace</h4>
                                            <p>Enjoy lifetime access to courses on Pathshala's website</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="value_props">
                                        <div class="value_icon">
                                            <i class='uil uil-user-check'></i>
                                        </div>
                                        <div class="value_content">
                                            <h4>Learn from industry experts</h4>
                                            <p>Select from top instructors around the world</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="value_props">
                                        <div class="value_icon">
                                            <i class='uil uil-play-circle'></i>
                                        </div>
                                        <div class="value_content">
                                            <h4>Find video courses on almost any topic</h4>
                                            <p>Build your library for your career and personal growth</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="value_props">
                                        <div class="value_icon">
                                            <i class='uil uil-presentation-play'></i>
                                        </div>
                                        <div class="value_content">
                                            <h4>100,000 online courses</h4>
                                            <p>Explore a variety of fresh topics</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section3125 mt-50">
                            <h4 class="item_title">Popular Instructors</h4>
                            <a href="all_instructor.html" class="see150">See all</a>
                            <div class="la5lo1">
                                <div class="owl-carousel featured_courses owl-theme">
                                    <div class="item">
                                        <div class="fcrse_1 mb-20">
                                            <div class="tutor_img">
                                                <a href="instructor_profile_view.aspx">
                                                    <img src="images/left-imgs/img-1.jpg" alt=""></a>
                                            </div>
                                            <div class="tutor_content_dt">
                                                <div class="tutor150">
                                                    <a href="instructor_profile_view.aspx" class="tutor_name">John Doe</a>
                                                    <div class="mef78" title="Verify">
                                                        <i class="uil uil-check-circle"></i>
                                                    </div>
                                                </div>
                                                <div class="tutor_cate">Wordpress &amp; Plugin Tutor</div>
                                                <ul class="tutor_social_links">
                                                    <li><a href="#" class="fb"><i class="fab fa-facebook-f"></i></a></li>
                                                    <li><a href="#" class="tw"><i class="fab fa-twitter"></i></a></li>
                                                    <li><a href="#" class="ln"><i class="fab fa-linkedin-in"></i></a></li>
                                                    <li><a href="#" class="yu"><i class="fab fa-youtube"></i></a></li>
                                                </ul>
                                                <div class="tut1250">
                                                    <span class="vdt15">100K Students</span>
                                                    <span class="vdt15">15 Courses</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="fcrse_1 mb-20">
                                            <div class="tutor_img">
                                                <a href="instructor_profile_view.aspx">
                                                    <img src="images/left-imgs/img-2.jpg" alt=""></a>
                                            </div>
                                            <div class="tutor_content_dt">
                                                <div class="tutor150">
                                                    <a href="instructor_profile_view.aspx" class="tutor_name">Kerstin Cable</a>
                                                    <div class="mef78" title="Verify">
                                                        <i class="uil uil-check-circle"></i>
                                                    </div>
                                                </div>
                                                <div class="tutor_cate">Language Learning Coach, Writer, Online Tutor</div>
                                                <ul class="tutor_social_links">
                                                    <li><a href="#" class="fb"><i class="fab fa-facebook-f"></i></a></li>
                                                    <li><a href="#" class="tw"><i class="fab fa-twitter"></i></a></li>
                                                    <li><a href="#" class="ln"><i class="fab fa-linkedin-in"></i></a></li>
                                                    <li><a href="#" class="yu"><i class="fab fa-youtube"></i></a></li>
                                                </ul>
                                                <div class="tut1250">
                                                    <span class="vdt15">14K Students</span>
                                                    <span class="vdt15">11 Courses</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="fcrse_1 mb-20">
                                            <div class="tutor_img">
                                                <a href="instructor_profile_view.aspx">
                                                    <img src="images/left-imgs/img-3.jpg" alt=""></a>
                                            </div>
                                            <div class="tutor_content_dt">
                                                <div class="tutor150">
                                                    <a href="instructor_profile_view.aspx" class="tutor_name">Jose Portilla</a>
                                                    <div class="mef78" title="Verify">
                                                        <i class="uil uil-check-circle"></i>
                                                    </div>
                                                </div>
                                                <div class="tutor_cate">Head of Data Science, Pierian Data Inc.</div>
                                                <ul class="tutor_social_links">
                                                    <li><a href="#" class="fb"><i class="fab fa-facebook-f"></i></a></li>
                                                    <li><a href="#" class="tw"><i class="fab fa-twitter"></i></a></li>
                                                    <li><a href="#" class="ln"><i class="fab fa-linkedin-in"></i></a></li>
                                                    <li><a href="#" class="yu"><i class="fab fa-youtube"></i></a></li>
                                                </ul>
                                                <div class="tut1250">
                                                    <span class="vdt15">1M Students</span>
                                                    <span class="vdt15">25 Courses</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="fcrse_1 mb-20">
                                            <div class="tutor_img">
                                                <a href="instructor_profile_view.aspx">
                                                    <img src="images/left-imgs/img-4.jpg" alt=""></a>
                                            </div>
                                            <div class="tutor_content_dt">
                                                <div class="tutor150">
                                                    <a href="instructor_profile_view.aspx" class="tutor_name">Farhat Amin</a>
                                                    <div class="mef78" title="Verify">
                                                        <i class="uil uil-check-circle"></i>
                                                    </div>
                                                </div>
                                                <div class="tutor_cate">Cookery Coach</div>
                                                <ul class="tutor_social_links">
                                                    <li><a href="#" class="fb"><i class="fab fa-facebook-f"></i></a></li>
                                                    <li><a href="#" class="tw"><i class="fab fa-twitter"></i></a></li>
                                                    <li><a href="#" class="ln"><i class="fab fa-linkedin-in"></i></a></li>
                                                    <li><a href="#" class="yu"><i class="fab fa-youtube"></i></a></li>
                                                </ul>
                                                <div class="tut1250">
                                                    <span class="vdt15">1.5K Students</span>
                                                    <span class="vdt15">9 Courses</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="fcrse_1 mb-20">
                                            <div class="tutor_img">
                                                <a href="instructor_profile_view.aspx">
                                                    <img src="images/left-imgs/img-5.jpg" alt=""></a>
                                            </div>
                                            <div class="tutor_content_dt">
                                                <div class="tutor150">
                                                    <a href="instructor_profile_view.aspx" class="tutor_name">Kyle Pew</a>
                                                    <div class="mef78" title="Verify">
                                                        <i class="uil uil-check-circle"></i>
                                                    </div>
                                                </div>
                                                <div class="tutor_cate">Microsoft Certified Trainer - 380,000+ Udemy Students</div>
                                                <ul class="tutor_social_links">
                                                    <li><a href="#" class="fb"><i class="fab fa-facebook-f"></i></a></li>
                                                    <li><a href="#" class="tw"><i class="fab fa-twitter"></i></a></li>
                                                    <li><a href="#" class="ln"><i class="fab fa-linkedin-in"></i></a></li>
                                                    <li><a href="#" class="yu"><i class="fab fa-youtube"></i></a></li>
                                                </ul>
                                                <div class="tut1250">
                                                    <span class="vdt15">300K Students</span>
                                                    <span class="vdt15">18 Courses</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="fcrse_1 mb-20">
                                            <div class="tutor_img">
                                                <a href="instructor_profile_view.aspx">
                                                    <img src="images/left-imgs/img-7.jpg" alt=""></a>
                                            </div>
                                            <div class="tutor_content_dt">
                                                <div class="tutor150">
                                                    <a href="instructor_profile_view.aspx" class="tutor_name">Jaysen Batchelor</a>
                                                    <div class="mef78" title="Verify">
                                                        <i class="uil uil-check-circle"></i>
                                                    </div>
                                                </div>
                                                <div class="tutor_cate">Illustrator &amp; Designer</div>
                                                <ul class="tutor_social_links">
                                                    <li><a href="#" class="fb"><i class="fab fa-facebook-f"></i></a></li>
                                                    <li><a href="#" class="tw"><i class="fab fa-twitter"></i></a></li>
                                                    <li><a href="#" class="ln"><i class="fab fa-linkedin-in"></i></a></li>
                                                    <li><a href="#" class="yu"><i class="fab fa-youtube"></i></a></li>
                                                </ul>
                                                <div class="tut1250">
                                                    <span class="vdt15">491K Students</span>
                                                    <span class="vdt15">13 Courses</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="fcrse_1 mb-20">
                                            <div class="tutor_img">
                                                <a href="instructor_profile_view.aspx">
                                                    <img src="images/left-imgs/img-8.jpg" alt=""></a>
                                            </div>
                                            <div class="tutor_content_dt">
                                                <div class="tutor150">
                                                    <a href="instructor_profile_view.aspx" class="tutor_name">Quinton Batchelor</a>
                                                    <div class="mef78" title="Verify">
                                                        <i class="uil uil-check-circle"></i>
                                                    </div>
                                                </div>
                                                <div class="tutor_cate">Photographer & Instructor</div>
                                                <ul class="tutor_social_links">
                                                    <li><a href="#" class="fb"><i class="fab fa-facebook-f"></i></a></li>
                                                    <li><a href="#" class="tw"><i class="fab fa-twitter"></i></a></li>
                                                    <li><a href="#" class="ln"><i class="fab fa-linkedin-in"></i></a></li>
                                                    <li><a href="#" class="yu"><i class="fab fa-youtube"></i></a></li>
                                                </ul>
                                                <div class="tut1250">
                                                    <span class="vdt15">364K Students</span>
                                                    <span class="vdt15">6 Courses</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="fcrse_1 mb-20">
                                            <div class="tutor_img">
                                                <a href="instructor_profile_view.aspx">
                                                    <img src="images/left-imgs/img-6.jpg" alt=""></a>
                                            </div>
                                            <div class="tutor_content_dt">
                                                <div class="tutor150">
                                                    <a href="instructor_profile_view.aspx" class="tutor_name">Eli Natoli</a>
                                                    <div class="mef78" title="Verify">
                                                        <i class="uil uil-check-circle"></i>
                                                    </div>
                                                </div>
                                                <div class="tutor_cate">Entrepreneur - Passionate Teacher</div>
                                                <ul class="tutor_social_links">
                                                    <li><a href="#" class="fb"><i class="fab fa-facebook-f"></i></a></li>
                                                    <li><a href="#" class="tw"><i class="fab fa-twitter"></i></a></li>
                                                    <li><a href="#" class="ln"><i class="fab fa-linkedin-in"></i></a></li>
                                                    <li><a href="#" class="yu"><i class="fab fa-youtube"></i></a></li>
                                                </ul>
                                                <div class="tut1250">
                                                    <span class="vdt15">615K Students</span>
                                                    <span class="vdt15">12 Courses</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-4">
                        <div class="right_side">
                            <div class="fcrse_2 mb-30">
                                <div class="tutor_img">
                                    <a href="my_instructor_profile_view.aspx">
                                        <img src="images/left-imgs/img-10.png" alt=""></a>
                                </div>
                                <div class="tutor_content_dt">
                                    <div class="tutor150">
                                        <a href="my_instructor_profile_view.aspx" class="tutor_name">Boni Amin</a>
                                        <div class="mef78" title="Verify">
                                            <i class="uil uil-check-circle"></i>
                                        </div>
                                    </div>
                                    <div class="tutor_cate">Web Developer, Designer</div>
                                    <ul class="tutor_social_links">
                                        <li><a href="#" class="fb"><i class="fab fa-facebook-f"></i></a></li>
                                        <li><a href="#" class="tw"><i class="fab fa-twitter"></i></a></li>
                                        <li><a href="#" class="ln"><i class="fab fa-linkedin-in"></i></a></li>
                                        <li><a href="#" class="yu"><i class="fab fa-youtube"></i></a></li>
                                    </ul>
                                    <div class="tut1250">
                                        <span class="vdt15">615K Students</span>
                                        <span class="vdt15">12 Courses</span>
                                    </div>
                                    <a href="my_instructor_profile_view.aspx" class="prfle12link">Go To Profile</a>
                                </div>
                            </div>
                            <div class="get1452">
                                <h4>Get personalized recommendations</h4>
                                <p>Answer a few questions for your top picks</p>
                                <button class="Get_btn" onclick="window.location.href = '#';">Get Started</button>
                            </div>
                            <div class="fcrse_3">
                                <div class="cater_ttle">
                                    <h4>Top Categories</h4>
                                </div>
                                <ul class="allcate15">
                                    <li><a href="#" class="ct_item"><i class='uil uil-arrow'></i>Development</a></li>
                                    <li><a href="#" class="ct_item"><i class='uil uil-graph-bar'></i>Business</a></li>
                                    <li><a href="#" class="ct_item"><i class='uil uil-monitor'></i>IT and Software</a></li>
                                    <li><a href="#" class="ct_item"><i class='uil uil-ruler'></i>Design</a></li>
                                    <li><a href="#" class="ct_item"><i class='uil uil-chart-line'></i>Marketing</a></li>
                                    <li><a href="#" class="ct_item"><i class='uil uil-book-open'></i>Personal Development</a></li>
                                    <li><a href="#" class="ct_item"><i class='uil uil-camera'></i>Photography</a></li>
                                    <li><a href="#" class="ct_item"><i class='uil uil-music'></i>Music</a></li>
                                </ul>
                            </div>
                            <div class="strttech120">
                                <h4>Become an Instructor</h4>
                                <p>Top instructors from around the world teach millions of students on Pathshala. We provide the tools and skills to teach what you love.</p>
                                <button class="Get_btn" onclick="window.location.href = '#';">Start Teaching Today</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-12 col-lg-12">
                        <div class="section3125 mt-30">
                            <h4 class="item_title">What Our Student Have Today</h4>
                            <div class="la5lo1">
                                <div class="owl-carousel Student_says owl-theme">
                                    <div class="item">
                                        <div class="fcrse_4 mb-20">
                                            <div class="say_content">
                                                <p>"Donec ac ex eu arcu euismod feugiat. In venenatis bibendum nisi, in placerat eros ultricies vitae. Praesent pellentesque blandit scelerisque. Suspendisse potenti."</p>
                                            </div>
                                            <div class="st_group">
                                                <div class="stud_img">
                                                    <img src="images/left-imgs/img-4.jpg" alt="">
                                                </div>
                                                <h4>Jassica William</h4>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="fcrse_4 mb-20">
                                            <div class="say_content">
                                                <p>"Cras id enim lectus. Fusce at arcu tincidunt, iaculis libero quis, vulputate mauris. Morbi facilisis vitae ligula id aliquam. Nunc consectetur malesuada bibendum."</p>
                                            </div>
                                            <div class="st_group">
                                                <div class="stud_img">
                                                    <img src="images/left-imgs/img-1.jpg" alt="">
                                                </div>
                                                <h4>Rock Smith</h4>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="fcrse_4 mb-20">
                                            <div class="say_content">
                                                <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos."</p>
                                            </div>
                                            <div class="st_group">
                                                <div class="stud_img">
                                                    <img src="images/left-imgs/img-7.jpg" alt="">
                                                </div>
                                                <h4>Luoci Marchant</h4>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="fcrse_4 mb-20">
                                            <div class="say_content">
                                                <p>"Nulla bibendum lectus pharetra, tempus eros ac, sagittis orci. Suspendisse posuere dolor neque, at finibus mauris lobortis in. Pellentesque vitae laoreet tortor."</p>
                                            </div>
                                            <div class="st_group">
                                                <div class="stud_img">
                                                    <img src="images/left-imgs/img-6.jpg" alt="">
                                                </div>
                                                <h4>Poonam Sharma</h4>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="fcrse_4 mb-20">
                                            <div class="say_content">
                                                <p>"Curabitur placerat justo ac mauris condimentum ultricies. In magna tellus, eleifend et volutpat id, sagittis vitae est. Pellentesque vitae laoreet tortor."</p>
                                            </div>
                                            <div class="st_group">
                                                <div class="stud_img">
                                                    <img src="images/left-imgs/img-3.jpg" alt="">
                                                </div>
                                                <h4>Davinder Singh</h4>
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
    </div>
</asp:Content>
