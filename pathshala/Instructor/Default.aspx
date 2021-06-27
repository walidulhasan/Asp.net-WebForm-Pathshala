<%@ Page Title="" Language="C#" MasterPageFile="~/Instructor/instructor.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="pathshala.Instructor.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper">
        <div class="sa4d25">
            <div id="Home" class="container-fluid">
                <asp:Panel Visible="false" CssClass="alert alert-info text-center" GroupingText="" ID="pn_Result" runat="server"></asp:Panel>
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="st_title"><i class="uil uil-analysis"></i>Create New Course</h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="course_tabs_1">
                            <div id="add-course-tab" class="step-app">
                                <ul class="step-steps">
                                    <li class="active">
                                        <a href="#tab_step1">
                                            <span class="number"></span>
                                            <span class="step-name">General Information</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#tab_step2">
                                            <span class="number"></span>
                                            <span class="step-name">View</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#tab_step3">
                                            <span class="number"></span>
                                            <span class="step-name">Course Content</span>
                                        </a>
                                    </li>
                                </ul>
                                <div class="step-content">
                                    <div class="step-tab-panel step-tab-info active" id="tab_step1">
                                        <div class="tab-from-content">
                                            <div class="title-icon">
                                                <h3 class="title"><i class="uil uil-info-circle"></i>General Information</h3>
                                            </div>
                                            <div class="course__form">
                                                <div class="general_info10">
                                                    <div class="row">
                                                        <div class="col-lg-10 col-md-10">
                                                            <div class="ui search focus mt-30 lbel25">
                                                                <label>Course Title*</label>
                                                                <div class="ui left icon input swdh19">
                                                                    <input runat="server" id="id_contentTitle" class="prompt srch_explore" type="text" placeholder="Insert your course title." name="title" data-purpose="edit-course-title" maxlength="60" value="">
                                                                    <div class="badge_num">60</div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-12 col-md-12">
                                                            <div class="course_des_textarea mt-30 lbel25">
                                                                <label>Course Description*</label>
                                                                <div class="course_des_bg">
                                                                    <ul class="course_des_ttle">
                                                                        <li><a href="#"><i class="uil uil-bold"></i></a></li>
                                                                        <li><a href="#"><i class="uil uil-italic"></i></a></li>
                                                                        <li><a href="#"><i class="uil uil-list-ul"></i></a></li>
                                                                        <li><a href="#"><i class="uil uil-left-to-right-text-direction"></i></a></li>
                                                                        <li><a href="#"><i class="uil uil-right-to-left-text-direction"></i></a></li>
                                                                        <li><a href="#"><i class="uil uil-list-ui-alt"></i></a></li>
                                                                        <li><a href="#"><i class="uil uil-link"></i></a></li>
                                                                        <li><a href="#"><i class="uil uil-text-size"></i></a></li>
                                                                        <li><a href="#"><i class="uil uil-text"></i></a></li>
                                                                    </ul>
                                                                    <div class="textarea_dt">
                                                                        <div class="ui form swdh339">
                                                                            <div class="field">
                                                                                <textarea runat="server" rows="5" name="description" id="id_course_description" placeholder="Insert your course description"></textarea>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4 col-md-12">
                                                            <div class="mt-30 lbel25">
                                                                <label>Language*</label>
                                                            </div>
                                                            <select runat="server" id="id_lenguage" class="ui hj145 dropdown cntry152 prompt srch_explore">
                                                                <option value="">Select Language</option>
                                                                <option value="English">English</option>
                                                                <option value="Bangla">Bangla</option>
                                                                <option value="Português">Português</option>
                                                                <option value="Deutsch">Deutsch</option>
                                                                <option value="Français">Français</option>
                                                                <option value="Türkçe">Türkçe</option>
                                                                <option value="Italiano">Italiano</option>
                                                                <option value="Polski">Polski</option>
                                                                <option value="Română">Română</option>
                                                            </select>
                                                        </div>
                                                        <div class="col-lg-4 col-md-6">
                                                            <div class="mt-30 lbel25">
                                                                <label>Course Category*</label>
                                                            </div>
                                                            <select id="id_category" runat="server" class="ui hj145 dropdown cntry152 prompt srch_explore">
                                                                <option value="">Select Category</option>
                                                                <option value="Development">Development</option>
                                                                <option value="Business">Business</option>
                                                                <option value="Finance & Accounting">Finance & Accounting</option>
                                                                <option value="IT & Software">IT & Software</option>
                                                                <option value="Office Productivity">Office Productivity</option>
                                                                <option value="Personal Development">Personal Development</option>
                                                                <option value="Design">Design</option>
                                                                <option value="Marketing">Marketing</option>
                                                                <option value="Lifestyle">Lifestyle</option>
                                                                <option value="Photography">Photography</option>
                                                                <option value="Health & Fitness">Health & Fitness</option>
                                                                <option value="Music">Music</option>
                                                                <option value="Teaching & Academics">Teaching & Academics</option>
                                                            </select>
                                                        </div>
                                                        <div class="col-lg-4 col-md-6">
                                                            <div class="mt-30 lbel25">
                                                                <label>Course Subcategory*</label>
                                                            </div>
                                                            <select id="id_subCategory" runat="server" class="ui hj145 dropdown cntry152 prompt srch_explore">
                                                                <option value="">Select Subcategory</option>
                                                                <option value="Javascript">Javascript</option>
                                                                <option value="Angular">Angular</option>
                                                                <option value="React">React</option>
                                                                <option value="4">CSS</option>
                                                                <option value="CSS">PHP</option>
                                                                <option value="Node.Js">Node.Js</option>
                                                                <option value="WordPress">WordPress</option>
                                                                <option value="Vue JS">Vue JS</option>
                                                                <option value="Shopify">Shopify</option>
                                                                <option value="Magento">Magento</option>
                                                                <option value="Open Cart">Open Cart</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="price_course">
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                            <div class="price_title">
                                                                <h4>Pricing</h4>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-2 col-md-3 col-sm-6">
                                                            <div class="mt-30 lbel25">
                                                                <label>Currency*</label>
                                                            </div>
                                                            <asp:DropDownList CssClass="ui hj145 dropdown cntry152 prompt srch_explore" ID="id_Currency" runat="server">
                                                                <asp:ListItem>--Select--</asp:ListItem>
                                                                <asp:ListItem>BDT</asp:ListItem>
                                                                <asp:ListItem>USD</asp:ListItem>
                                                                <asp:ListItem>EUR</asp:ListItem>
                                                                <asp:ListItem>GBP</asp:ListItem>
                                                            </asp:DropDownList>
                                                            <%--<select  runat="server" class="ui hj145 dropdown cntry152 prompt srch_explore">
                                                                <option value="">--Select--</option>
                                                                <option value="">BDT</option>
                                                                <option value="">USD</option>
                                                                <option value="">BRL</option>
                                                                <option value="">EUR</option>
                                                                <option value="">GBP</option>
                                                                <option value="">INR</option>
                                                                <option value="">CAD</option>
                                                            </select>--%>
                                                        </div>
                                                        <div class="col-lg-3 col-md-4 col-sm-6">
                                                            <div class="mt-30 lbel25">
                                                                <label>Money*</label>
                                                            </div>
                                                            <div class="ui left icon input swdh19">
                                                                <input id="id_Money" runat="server" class="prompt srch_explore" type="text" placeholder="Course Price." name="title" maxlength="60" value="">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="step-tab-panel step-tab-gallery" id="tab_step2">
                                        <div class="tab-from-content">
                                            <div class="title-icon">
                                                <h3 class="title"><i class="uil uil-image-upload"></i>View</h3>
                                            </div>
                                            <div class="course__form">
                                                <div class="view_info10">
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                            <div class="view_all_dt">
                                                                <div class="view_img_left">
                                                                    <div class="view__img">
                                                                        <%--<img src="images/courses/add_img.jpg" alt="">--%>
                                                                        <asp:Image CssClass="img-bx imgCoverPreview" Width="326.5px" Height="183.66" ID="Image1" runat="server" />
                                                                    </div>
                                                                </div>
                                                                <div class="view_img_right">
                                                                    <h4>Cover Image</h4>
                                                                    <p>Upload your course image here. It must meet our course image quality standards to be accepted. Important guidelines: 750x422 pixels; .jpg, .jpeg,. gif, or .png. no text on the image.</p>
                                                                    <div class="upload__input">
                                                                        <div class="input-group">
                                                                            <div class="custom-file">
                                                                                <asp:FileUpload ID="id_CoverImage2" CssClass="custom-file-input id_CoverImage2" runat="server" />
                                                                                <asp:Label ID="Label1" CssClass="custom-file-label" runat="server" Font-Size="16px" ForeColor="Red"></asp:Label>

                                                                                <%--<input runat="server" type="file" class="custom-file-input" id="FileUpload1">--%>
                                                                                <%--<label class="custom-file-label" id="Label1" for="inputGroupFile04">No Choose file</label>--%>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="view_all_dt">
                                                                <div class="view_img_left">
                                                                    <div class="view__img">
                                                                        <img src="images/courses/add_video.jpg" alt="">
                                                                    </div>
                                                                </div>
                                                                <div class="view_img_right">
                                                                    <h4>Promotional Video</h4>
                                                                    <p>Students who watch a well-made promo video are 5X more likely to enroll in your course. We've seen that statistic go up to 10X for exceptionally awesome videos. Learn how to make yours awesome!</p>
                                                                    <div class="upload__input">
                                                                        <div class="input-group">
                                                                            <div class="custom-file">
                                                                                <asp:FileUpload ID="id_PromotionalVideo" CssClass="custom-file-input myvideos" runat="server" />
                                                                                <asp:Label ID="Label2" CssClass="custom-file-label" runat="server" Font-Size="16px" ForeColor="Red"></asp:Label>
                                                                                <%--<input runat="server" type="file" class="custom-file-input" id="inputGroupFile05">
                                                                                <label class="custom-file-label" for="inputGroupFile05">No Choose file</label>--%>
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
                                    <div class="step-tab-panel step-tab-location" id="tab_step3">
                                        <div class="tab-from-content">
                                            <div class="title-icon">
                                                <h3 class="title"><i class="uil uil-film"></i>Course Content</h3>
                                            </div>
                                            <div class="course__form">
                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        <div class="extra_info">
                                                            <h4 class="part__title">New Course Content</h4>
                                                        </div>
                                                        <div class="view_info10">
                                                            <div class="row">
                                                                <div class="col-lg-12 col-md-12">
                                                                    <div class="ui search focus mt-30 lbel25">
                                                                        <label>Course Content Title*</label>
                                                                        <div class="ui left icon input swdh19">
                                                                            <input runat="server" class="prompt srch_explore" type="text" placeholder="Insert your course content title." data-purpose="edit-course-title" maxlength="60" id="id_courseContent" value="">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-12 col-md-12">
                                                                    <div class="lecture_title">
                                                                        <h4>Add Lecture</h4>
                                                                    </div>
                                                                </div>
                                                                <%-- <div class="col-lg-4 col-md-12">
                                                                    <div class="ui search focus mt-30 lbel25">
                                                                        <label>Lecture Title*</label>
                                                                        <div class="ui left icon input swdh19">
                                                                            <input runat="server" class="prompt srch_explore" type="text" placeholder="Insert your lecture title." name="title" data-purpose="edit-course-title" maxlength="60" id="id_lectureTitle" value="">
                                                                        </div>
                                                                    </div>
                                                                </div>--%>
                                                                <div class="col-lg-4 col-md-7">
                                                                    <div class="part_input mt-30 lbel25">
                                                                        <label>File*</label>
                                                                        <div class="input-group">
                                                                            <div class="custom-file">
                                                                                <asp:FileUpload ID="id_FileUp" CssClass="custom-file-input" runat="server" />
                                                                                <asp:Label ID="Label3" CssClass="custom-file-label" runat="server" Font-Size="16px" ForeColor="Red"></asp:Label>
                                                                                <%--<input type="file" class="custom-file-input" id="inputGroupFile06">
                                                                                <label class="custom-file-label" for="inputGroupFile06">(Pdf, Video)</label>--%>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-4 col-md-5">
                                                                    <div class="ui search focus mt-30 lbel25">
                                                                        <label>Sort</label>
                                                                        <div class="ui left icon input swdh19">
                                                                            <input id="id_Sort" value="" class="prompt srch_explore" type="number" name="sort" min="0" max="100" runat="server" placeholder="0">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-12 col-md-12">
                                                                    <div class="course_des_textarea mt-30 lbel25">
                                                                        <label>Description*</label>
                                                                        <div class="course_des_bg">
                                                                            <ul class="course_des_ttle">
                                                                                <li><a href="#"><i class="uil uil-bold"></i></a></li>
                                                                                <li><a href="#"><i class="uil uil-italic"></i></a></li>
                                                                                <li><a href="#"><i class="uil uil-list-ul"></i></a></li>
                                                                                <li><a href="#"><i class="uil uil-left-to-right-text-direction"></i></a></li>
                                                                                <li><a href="#"><i class="uil uil-right-to-left-text-direction"></i></a></li>
                                                                                <li><a href="#"><i class="uil uil-list-ui-alt"></i></a></li>
                                                                                <li><a href="#"><i class="uil uil-link"></i></a></li>
                                                                                <li><a href="#"><i class="uil uil-text-size"></i></a></li>
                                                                                <li><a href="#"><i class="uil uil-text"></i></a></li>
                                                                            </ul>
                                                                            <div class="textarea_dt">
                                                                                <div class="ui form swdh339">
                                                                                    <div class="field">
                                                                                        <textarea runat="server" rows="5" name="description" id="id_part_description" placeholder="Insert your course part description"></textarea>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-5 col-md-6">
                                                                    <div class="ui search focus mt-30 lbel25">
                                                                        <label>Volume*</label>
                                                                        <div class="ui left icon input swdh19 swdh95">
                                                                            <input id="id_Volume" value="" class="prompt srch_explore" type="number" min="0" name="size" required="" runat="server" placeholder="0">
                                                                            <div class="badge_mb">MB</div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-5 col-md-6">
                                                                    <div class="ui search focus mt-30 lbel25">
                                                                        <label>Duration*</label>
                                                                        <div class="ui left icon input swdh19 swdh55">
                                                                            <input id="id_Duration" value="" class="prompt srch_explore" type="number" min="0" name="duration" required="" runat="server" placeholder="0">
                                                                            <div class="badge_min">Minutes</div>
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
                                <div class="step-footer step-tab-pager">
                                    <button data-direction="prev" class="btn btn-default steps_btn">PREVIOUS</button>
                                    <button data-direction="next" class="btn btn-default steps_btn">Next</button>
                                    <button runat="server" data-direction="finish" onserverclick="Unnamed_ServerClick" class="btn btn-default steps_btn">Submit</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="foot">
    <script type="text/javascript">
        $('#ContentPlaceHolder1_id_CoverImage2').change(function (event) {
            var tmppath = URL.createObjectURL(event.target.files[0]);
            $(".imgCoverPreview").fadeIn("fast").attr('src', URL.createObjectURL(event.target.files[0]));
        });
        //$('#ContentPlaceHolder1_id_CoverImage2').change(function (event) {
        //    var tmppath = URL.createObjectURL(event.target.files[0]);
        //    $(".imgCoverPreview").fadeIn("fast").attr('src', URL.createObjectURL(event.target.files[0]));
        //});
    </script>
</asp:Content>
