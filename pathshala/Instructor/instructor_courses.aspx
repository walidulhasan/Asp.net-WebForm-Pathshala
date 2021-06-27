<%@ Page Title="" Language="C#" MasterPageFile="~/Instructor/instructor.Master" AutoEventWireup="true" CodeBehind="instructor_courses.aspx.cs" Inherits="pathshala.Instructor.instructor_courses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--<link href="../Content/bootstrap-datepicker.standalone.min.css" rel="stylesheet" />--%>
    <%-- <link href="../datedropper/datedropper.css" rel="stylesheet" />--%>
    <link href="../datedropper/Datedropper3/datedropper.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper">
        <div class="sa4d25">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="st_title"><i class="uil uil-book-alt"></i>Courses</h2>
                    </div>
                    <div class="col-md-12">
                        <div class="card_dash1">
                            <div class="card_dash_left1">
                                <i class="uil uil-book-alt"></i>
                                <h1>Jump Into Course Creation</h1>
                            </div>
                            <div class="card_dash_right1">
                                <button class="create_btn_dash" onclick="window.location.href = 'Default.aspx';">Create Your Course</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="my_courses_tabs">
                            <ul class="nav nav-pills my_crse_nav" id="pills-tab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="pills-my-courses-tab" data-toggle="pill" href="#pills-my-courses" role="tab" aria-controls="pills-my-courses" aria-selected="true"><i class="uil uil-book-alt"></i>My Courses</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="pills-my-purchases-tab" data-toggle="pill" href="#pills-my-purchases" role="tab" aria-controls="pills-my-purchases" aria-selected="false"><i class="uil uil-download-alt"></i>My Purchases</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="pills-upcoming-courses-tab" data-toggle="pill" href="#pills-upcoming-courses" role="tab" aria-controls="pills-upcoming-courses" aria-selected="false"><i class="uil uil-upload-alt"></i>Upcoming Courses</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="pills-discount-tab" data-toggle="pill" href="#pills-discount" role="tab" aria-controls="pills-discount" aria-selected="false"><i class="uil uil-tag-alt"></i>Discounts</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="pills-promotions-tab" data-toggle="pill" href="#pills-promotions" role="tab" aria-controls="pills-promotions" aria-selected="false"><i class="uil uil-megaphone"></i>Promotions</a>
                                </li>
                            </ul>
                            <div class="tab-content" id="pills-tabContent">
                                <div class="tab-pane fade show active" id="pills-my-courses" role="tabpanel">
                                    <div class="table-responsive mt-30">
                                        <table class="table ucp-table">
                                            <thead class="thead-s">
                                                <tr>
                                                    <th class="text-center" scope="col">Item No.</th>
                                                    <th>Title</th>
                                                    <th class="text-center" scope="col">Publish Date</th>
                                                    <th class="text-center" scope="col">Sales</th>
                                                    <th class="text-center" scope="col">Parts</th>
                                                    <th class="text-center" scope="col">Category</th>
                                                    <th class="text-center" scope="col">Status</th>
                                                    <th class="text-center" scope="col">Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="text-center">IT-001</td>
                                                    <td>Course Title Here</td>
                                                    <td class="text-center">06 April 2020 | 08:31</td>
                                                    <td class="text-center">15</td>
                                                    <td class="text-center">5</td>
                                                    <td class="text-center"><a href="#">Web Development</a></td>
                                                    <td class="text-center"><b class="course_active">Active</b></td>
                                                    <td class="text-center">
                                                        <a href="#" title="Edit" class="gray-s"><i class="uil uil-edit-alt"></i></a>
                                                        <a href="#" title="Delete" class="gray-s"><i class="uil uil-trash-alt"></i></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="text-center">IT-002</td>
                                                    <td>Course Title Here</td>
                                                    <td class="text-center">05 April 2020 | 05:15</td>
                                                    <td class="text-center">30</td>
                                                    <td class="text-center">3</td>
                                                    <td class="text-center"><a href="#">Graphic Design</a></td>
                                                    <td class="text-center"><b class="course_active">Active</b></td>
                                                    <td class="text-center">
                                                        <a href="#" title="Edit" class="gray-s"><i class="uil uil-edit-alt"></i></a>
                                                        <a href="#" title="Delete" class="gray-s"><i class="uil uil-trash-alt"></i></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="text-center">IT-003</td>
                                                    <td>Course Title</td>
                                                    <td class="text-center">03 April 2020 | 01:30</td>
                                                    <td class="text-center">14</td>
                                                    <td class="text-center">5</td>
                                                    <td class="text-center"><a href="#">Bootstrap</a></td>
                                                    <td class="text-center"><b class="course_active">Active</b></td>
                                                    <td class="text-center">
                                                        <a href="#" title="Edit" class="gray-s"><i class="uil uil-edit-alt"></i></a>
                                                        <a href="#" title="Delete" class="gray-s"><i class="uil uil-trash-alt"></i></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="text-center">IT-004</td>
                                                    <td>Course Title Here</td>
                                                    <td class="text-center">02 April 2020 | 05:15</td>
                                                    <td class="text-center">110</td>
                                                    <td class="text-center">9</td>
                                                    <td class="text-center"><a href="#">Game Development</a></td>
                                                    <td class="text-center"><b class="course_active">Active</b></td>
                                                    <td class="text-center">
                                                        <a href="#" title="Edit" class="gray-s"><i class="uil uil-edit-alt"></i></a>
                                                        <a href="#" title="Delete" class="gray-s"><i class="uil uil-trash-alt"></i></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="text-center">IT-002</td>
                                                    <td>Course Title Here</td>
                                                    <td class="text-center">28 March 2020 | 05:15</td>
                                                    <td class="text-center">185</td>
                                                    <td class="text-center">10</td>
                                                    <td class="text-center"><a href="#">C++</a></td>
                                                    <td class="text-center"><b class="course_active">Active</b></td>
                                                    <td class="text-center">
                                                        <a href="#" title="Edit" class="gray-s"><i class="uil uil-edit-alt"></i></a>
                                                        <a href="#" title="Delete" class="gray-s"><i class="uil uil-trash-alt"></i></a>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="pills-my-purchases" role="tabpanel">
                                    <div class="table-responsive mt-30">
                                        <table class="table ucp-table">
                                            <thead class="thead-s">
                                                <tr>
                                                    <th class="text-center" scope="col">Item No.</th>
                                                    <th class="cell-ta" scope="col">Title</th>
                                                    <th class="cell-ta" scope="col">Vendor</th>
                                                    <th class="cell-ta" scope="col">Category</th>
                                                    <th class="text-center" scope="col">Delivery Type</th>
                                                    <th class="text-center" scope="col">Price</th>
                                                    <th class="text-center" scope="col">Purchase Date</th>
                                                    <th class="text-center" scope="col">Actions</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="text-center">001</td>
                                                    <td class="cell-ta">Course Title Here</td>
                                                    <td class="cell-ta"><a href="#">Zoena Singh</a></td>
                                                    <td class="cell-ta"><a href="#">Web Development</a></td>
                                                    <td class="text-center"><b class="course_active">Download</b></td>
                                                    <td class="text-center">$15</td>
                                                    <td class="text-center">25 March 2020</td>
                                                    <td class="text-center">
                                                        <a href="#" title="Download" class="gray-s"><i class="uil uil-download-alt"></i></a>
                                                        <a href="#" title="Delete" class="gray-s"><i class="uil uil-trash-alt"></i></a>
                                                        <a href="#" title="Print" class="gray-s"><i class="uil uil-print"></i></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="text-center">002</td>
                                                    <td class="cell-ta">Course Title Here</td>
                                                    <td class="cell-ta"><a href="#">Rock William</a></td>
                                                    <td class="cell-ta"><a href="#">C++</a></td>
                                                    <td class="text-center"><b class="course_active">Download</b></td>
                                                    <td class="text-center">$20</td>
                                                    <td class="text-center">20 March 2020</td>
                                                    <td class="text-center">
                                                        <a href="#" title="Download" class="gray-s"><i class="uil uil-download-alt"></i></a>
                                                        <a href="#" title="Delete" class="gray-s"><i class="uil uil-trash-alt"></i></a>
                                                        <a href="#" title="Print" class="gray-s"><i class="uil uil-print"></i></a>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="pills-upcoming-courses" role="tabpanel">
                                    <div class="table-responsive mt-30">
                                        <table class="table ucp-table">
                                            <thead class="thead-s">
                                                <tr>
                                                    <th class="text-center" scope="col">Item No.</th>
                                                    <th class="cell-ta">Title</th>
                                                    <th class="text-center" scope="col">Thumbnail</th>
                                                    <th class="text-center">Category</th>
                                                    <th class="text-center">Price</th>
                                                    <th class="text-center">Date</th>
                                                    <th class="text-center" scope="col">Status</th>
                                                    <th class="text-center" scope="col">Actions</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="text-center">01</td>
                                                    <td class="cell-ta">Course Title Here</td>
                                                    <td class="text-center"><a href="#">View</a></td>
                                                    <td class="text-center"><a href="#">Web Development</a></td>
                                                    <td class="text-center">$15</td>
                                                    <td class="text-center">9 April 2020</td>
                                                    <td class="text-center"><b class="course_active">Pending</b></td>
                                                    <td class="text-center">
                                                        <a href="#" title="Edit" class="gray-s"><i class="uil uil-edit-alt"></i></a>
                                                        <a href="#" title="Delete" class="gray-s"><i class="uil uil-trash-alt"></i></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="text-center">02</td>
                                                    <td class="cell-ta">Course Title Here</td>
                                                    <td class="text-center"><a href="#">View</a></td>
                                                    <td class="text-center"><a href="#">Graphic Design</a></td>
                                                    <td class="text-center">$12</td>
                                                    <td class="text-center">8 April 2020</td>
                                                    <td class="text-center"><b class="course_active">Pending</b></td>
                                                    <td class="text-center">
                                                        <a href="#" title="Edit" class="gray-s"><i class="uil uil-edit-alt"></i></a>
                                                        <a href="#" title="Delete" class="gray-s"><i class="uil uil-trash-alt"></i></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="text-center">03</td>
                                                    <td class="cell-ta">Course Title Here</td>
                                                    <td class="text-center"><a href="#">View</a></td>
                                                    <td class="text-center"><a href="#">Photography</a></td>
                                                    <td class="text-center">$6</td>
                                                    <td class="text-center">7 April 2020</td>
                                                    <td class="text-center"><b class="course_active">Pending</b></td>
                                                    <td class="text-center">
                                                        <a href="#" title="Edit" class="gray-s"><i class="uil uil-edit-alt"></i></a>
                                                        <a href="#" title="Delete" class="gray-s"><i class="uil uil-trash-alt"></i></a>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="pills-discount" role="tabpanel">
                                    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                        <div class="panel panel-default">
                                            <div class="panel-heading" role="tab" id="headingOne">
                                                <div class="panel-title adcrse1250">
                                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne">New Discount
                                                    </a>
                                                </div>
                                            </div>
                                            <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                                                <div class="panel-body adcrse_body">
                                                    <div class="row">
                                                        <div class="col-lg-8">
                                                            <div class="discount_form">
                                                                <div>
                                                                    <div class="col-lg-4 col-md-10">
                                                                        <div class="mt-30 lbel25">
                                                                            <label>Crouse Id*</label>
                                                                        </div>
                                                                        <asp:DropDownList ID="comboBox1" CssClass="ui hj145 dropdown cntry152 prompt srch_explore" runat="server" DataSourceID="SqlDataSource1" DataTextField="courseId" DataValueField="courseId" AppendDataBoundItems="True">
                                                                            <asp:ListItem Enabled="true" Selected="True" Value="" Text="--Select--"></asp:ListItem>
                                                                        </asp:DropDownList>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-lg-4 col-md-6">
                                                                        <div class="mt-30 lbel25">
                                                                            <label>Course Category*</label>
                                                                        </div>
                                                                        <asp:DropDownList AppendDataBoundItems="true" ID="comboBox" CssClass="ui hj145 dropdown cntry152 prompt srch_explore" runat="server" DataSourceID="SqlDataSource1" DataTextField="category" DataValueField="category">
                                                                            <asp:ListItem Enabled="true" Selected="True" Value="" Text="--Select--"></asp:ListItem>
                                                                        </asp:DropDownList>
                                                                    </div>
                                                                    <div class="col-lg-6 col-md-6">
                                                                        <div class="ui search focus mt-25 lbel25">
                                                                            <label>Discount Percentage</label>
                                                                            <div class="ui left icon input swdh19">
                                                                                <input runat="server" id="id_DiscountPercentage" class="prompt srch_explore" type="number" name="off" value="" required="" min="1" max="99" placeholder="Percent (eg. 20 for 20%)">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-6 col-md-6">
                                                                        <div class="ui search focus mt-20 lbel25">
                                                                            <label>Start Date</label>
                                                                            <div class="ui left icon input swdh19">
                                                                                <%--<input runat="server" value="" id="id_StartDate" name="insertJoin" class="prompt srch_explore datepicker-here" type="text" data-language="en" placeholder="dd/mm/yyyy">--%>
                                                                                <asp:TextBox ID="StartDate" AutoCompleteType="Disabled" placeholder="dd/mm/yyyy" CssClass="prompt srch_explore datepicker-here insertJoin" runat="server"></asp:TextBox>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-6 col-md-6">
                                                                        <div class="ui search focus mt-20 lbel25">
                                                                            <label>End Date</label>
                                                                            <div class="ui left icon input swdh19">
                                                                                <%--<input runat="server" value="" id="id_EndDate" name="insertJoin" class="prompt srch_explore datepicker-here" type="text" data-language="en" placeholder="dd/mm/yyyy">--%>
                                                                                <asp:TextBox AutoCompleteType="Disabled" ID="EndDate" placeholder="dd/mm/yyyy" CssClass="prompt srch_explore datepicker-here insertJoin" runat="server"></asp:TextBox>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-6 col-md-6">
                                                                        <asp:Button Text="Save Changes" ID="btnDiscount" OnClick="btnDiscount_Click" CssClass="discount_btn" runat="server" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="table-responsive mt-30">
                                        <%--<table class="table ucp-table">
                                            <thead class="thead-s">
                                                <tr>
                                                    <th class="text-center" scope="col">Item No.</th>
                                                    <th class="cell-ta">Course</th>
                                                    <th class="text-center" scope="col">Start Date</th>
                                                    <th class="text-center" scope="col">End Date</th>
                                                    <th class="text-center" scope="col">Discount</th>
                                                    <th class="text-center" scope="col">Status</th>
                                                    <th class="text-center" scope="col">Actions</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="text-center"  >01</td>
                                                    <td class="cell-ta">Course Title Here</td>
                                                    <td class="text-center">02 November 2019</td>
                                                    <td class="text-center">19 November 2019</td>
                                                    <td class="text-center">20%</td>
                                                    <td class="text-center"><b class="course_active">Active</b></td>
                                                    <td class="text-center">
                                                        <a href="#" title="Edit" class="gray-s"><i class="uil uil-edit-alt"></i></a>
                                                        <a href="#" title="Delete" class="gray-s"><i class="uil uil-trash-alt"></i></a>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>--%>
                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>


                                        <asp:GridView HeaderStyle-CssClass="bg-dark text-white" CssClass=" table table-bordered" ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="discountId" DataSourceID="SqlDataSource2">
                                            <Columns>
                                                <asp:BoundField DataField="discountId" HeaderText="Discount ID" InsertVisible="False" ReadOnly="True" SortExpression="discountId" />
                                                <asp:BoundField DataField="courseId" HeaderText="Course" SortExpression="courseId" />
                                                <asp:BoundField DataField="courseCategory" HeaderText="Course Category" SortExpression="courseCategory" />
                                                <asp:BoundField DataField="discountAmount" HeaderText="Discount Amount" SortExpression="discountAmount" />
                                                <asp:BoundField DataField="offerStart" HeaderText="Offer Start Date" SortExpression="offerStart" />
                                                <asp:BoundField DataField="offerEnd" HeaderText="Offer End Date" SortExpression="offerEnd" />
                                                <asp:TemplateField HeaderText="Action" ShowHeader="False">
                                                    <EditItemTemplate>
                                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CssClass="btn btn-warning btn-sm" CommandName="Update"><i class="fa fa-save"></i></asp:LinkButton>
                                                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CssClass="btn btn-primary btn-sm" CommandName="Cancel"><i class="fas fa-window-close"></i></asp:LinkButton>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CssClass="btn btn-info btn-sm" CommandName="Edit"><i class="fas fa-edit"></i></asp:LinkButton>
                                                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CssClass="btn btn-danger btn-sm" CommandName="Delete"><i class="fa fa-trash"></i></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:pathshalaDBCon %>" DeleteCommand="DELETE FROM [tbl_Discount] WHERE [discountId] = @discountId" InsertCommand="INSERT INTO [tbl_Discount] ([courseId], [courseCategory], [discountAmount], [offerStart], [offerEnd]) VALUES (@courseId, @courseCategory, @discountAmount, @offerStart, @offerEnd)" SelectCommand="SELECT * FROM [tbl_Discount]" UpdateCommand="UPDATE [tbl_Discount] SET [courseId] = @courseId, [courseCategory] = @courseCategory, [discountAmount] = @discountAmount, [offerStart] = @offerStart, [offerEnd] = @offerEnd WHERE [discountId] = @discountId">
                                            <DeleteParameters>
                                                <asp:Parameter Name="discountId" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="courseId" Type="Int32" />
                                                <asp:Parameter Name="courseCategory" Type="String" />
                                                <asp:Parameter Name="discountAmount" Type="String" />
                                                <asp:Parameter DbType="Date" Name="offerStart" />
                                                <asp:Parameter DbType="Date" Name="offerEnd" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="courseId" Type="Int32" />
                                                <asp:Parameter Name="courseCategory" Type="String" />
                                                <asp:Parameter Name="discountAmount" Type="String" />
                                                <asp:Parameter DbType="Date" Name="offerStart" />
                                                <asp:Parameter DbType="Date" Name="offerEnd" />
                                                <asp:Parameter Name="discountId" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                    </div>
                                </div>
                                
                                <div class="tab-pane fade" id="pills-promotions" role="tabpanel" aria-labelledby="pills-promotions-tab">
                                    <div class="promotion_tab mb-10">
                                        <img src="images/dashboard/promotion.svg" alt="">
                                        <h4>promotion plan is activated!</h4>
                                        <p>By activating promotion plans you can improve course views and sales.</p>
                                        <button class="plan_link_btn" onclick="window.location.href = '#';">Change New Plan</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pathshalaDBCon %>" SelectCommand="SELECT DISTINCT * FROM [tbl_courseInformation]"></asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="foot">
    <%--<script src="../Scripts/bootstrap-datepicker.min.js"></script>--%>
    <script src="../datedropper/Datedropper3/datedropper.js"></script>
    <%--<script src="../datedropper/datedropper.js"></script>--%>
    <script>
        $(document).ready(() => {
            $(".insertJoin").dateDropper(/*"{0:MM/dd/yyyy}"*/);
        });
    </script>
</asp:Content>
