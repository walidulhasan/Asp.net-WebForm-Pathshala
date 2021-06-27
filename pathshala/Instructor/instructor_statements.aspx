﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Instructor/instructor.Master" AutoEventWireup="true" CodeBehind="instructor_statements.aspx.cs" Inherits="pathshala.Instructor.instructor_statements" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper">
        <div class="sa4d25">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="st_title"><i class="uil uil-file-alt"></i>Statements</h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8 col-md-7">
                        <div class="top_countries mt-30">
                            <div class="top_countries_title">
                                <h2>Earnings</h2>
                            </div>
                            <div class="statement_content">
                                <p class="tt-body">Your sales earnings over the last 30 days</p>
                                <table class="statement-summary__table">
                                    <thead>
                                        <tr>
                                            <th>
                                                <p class="t-heading">My funds</p>
                                            </th>
                                            <th>
                                                <p class="t-heading">Earnings</p>
                                            </th>
                                            <th>
                                                <p class="t-heading">Pathshala Fees</p>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="statement-summary__funds">
                                                <p class="js-earnings__instructor-funds-wrapper">
                                                    <span class=""></span>
                                                    <span class="js-earnngs__instructor-funds t-currency">$289.64</span>
                                                </p>
                                            </td>
                                            <td class="statement-summary__earnings">
                                                <p class="js-earnings__earnings-wrapper">
                                                    <span class="tt__earning">+</span>
                                                    <span class="js-earnings__earnings t-currency">$458.00</span>
                                                </p>
                                            </td>
                                            <td class="statement-summary__fees">
                                                <p class="js-earnings__fees-wrapper">
                                                    <span class="tt__earning">-</span>
                                                    <span class="js-earnings__fees t-currency">$154.86</span>
                                                </p>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-5">
                        <div class="top_countries mt-30">
                            <div class="top_countries_title">
                                <h2>View Invoices</h2>
                            </div>
                            <div class="statement_invoice_content">
                                <div class="date_selector mt-0">
                                    <div class="ui selection dropdown skills-search vchrt-dropdown invoice-dropdown">
                                        <input name="date" type="hidden" value="default">
                                        <i class="dropdown icon d-icon"></i>
                                        <div class="text">Monthly Invoices</div>
                                        <div class="menu">
                                            <div class="item" data-value="0">April 2020</div>
                                            <div class="item" data-value="1">March 2020</div>
                                        </div>
                                    </div>
                                    <button class="st_download_btn"><i class="uil uil-download-alt"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12">
                        <ul class="more_options_tt">
                            <li>
                                <button class="more_items_14 active">This Month</button></li>
                            <li>
                                <button class="more_items_14">Last Month</button></li>
                            <li>
                                <div class="explore_search">
                                    <div class="ui search focus">
                                        <div class="ui left icon input swdh11 swdh15">
                                            <input class="prompt srch_explore" type="text" placeholder="Document Number">
                                            <i class="uil uil-search-alt icon icon8"></i>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="col-lg-12 col-md-12">
                        <div class="table-responsive mt-30">
                            <table class="table ucp-table earning__table">
                                <thead class="thead-s">
                                    <tr>
                                        <th scope="col">Date</th>
                                        <th scope="col">Order ID</th>
                                        <th scope="col">Type</th>
                                        <th scope="col">Title</th>
                                        <th scope="col">Amount</th>
                                        <th scope="col">Fees</th>
                                        <th scope="col">Invoice</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>13 Apr 2020</td>
                                        <td>123456</td>
                                        <td>Sale</td>
                                        <td>Course Title Here</td>
                                        <td>$10</td>
                                        <td>-$5</td>
                                        <td><a href="#">View</a></td>
                                    </tr>
                                    <tr>
                                        <td>12 Apr 2020</td>
                                        <td>123456</td>
                                        <td>Sale</td>
                                        <td>Course Title Here</td>
                                        <td>$10</td>
                                        <td>-$5</td>
                                        <td><a href="#">View</a></td>
                                    </tr>
                                    <tr>
                                        <td>11 Apr 2020</td>
                                        <td>123456</td>
                                        <td>Sale</td>
                                        <td>Course Title Here</td>
                                        <td>$10</td>
                                        <td>-$5</td>
                                        <td><a href="#">View</a></td>
                                    </tr>
                                    <tr>
                                        <td>10 Apr 2020</td>
                                        <td>123456</td>
                                        <td>Sale</td>
                                        <td>Course Title Here</td>
                                        <td>$10</td>
                                        <td>-$5</td>
                                        <td><a href="#">View</a></td>
                                    </tr>
                                    <tr>
                                        <td>9 Apr 2020</td>
                                        <td>123456</td>
                                        <td>Sale</td>
                                        <td>Course Title Here</td>
                                        <td>$10</td>
                                        <td>-$5</td>
                                        <td><a href="#">View</a></td>
                                    </tr>
                                    <tr>
                                        <td>8 Apr 2020</td>
                                        <td>123456</td>
                                        <td>Sale</td>
                                        <td>Course Title Here</td>
                                        <td>$10</td>
                                        <td>-$5</td>
                                        <td><a href="#">View</a></td>
                                    </tr>
                                    <tr>
                                        <td>7 Apr 2020</td>
                                        <td>123456</td>
                                        <td>Sale</td>
                                        <td>Course Title Here</td>
                                        <td>$10</td>
                                        <td>-$5</td>
                                        <td><a href="#">View</a></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
