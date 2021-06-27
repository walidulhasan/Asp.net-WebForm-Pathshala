﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Instructor/instructor.Master" AutoEventWireup="true" CodeBehind="instructor_payout.aspx.cs" Inherits="pathshala.Instructor.instructor_payout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper">
        <div class="sa4d25">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="st_title"><i class="uil uil-wallet"></i>Payout</h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-md-5">
                        <div class="top_countries mt-30">
                            <div class="top_countries_title">
                                <h2>Next payout</h2>
                            </div>
                            <div class="payout_content">
                                <span><strong>$4568.50</strong></span>
                                <div class="payout__via">
                                    <strong>via Payoneer</strong>
                                </div>
                                <p><small class="payout__small-notification">Your payout will be processed on <strong>April 15, 2020</strong></small></p>
                            </div>
                        </div>
                        <div class="top_countries mt-30">
                            <div class="top_countries_title">
                                <h2>Payout account</h2>
                            </div>
                            <div class="payout_content">
                                <img src="images/payoneer.svg" alt="">
                                <div class="payout__added">
                                    <strong>Added:</strong>
                                    01 Mar 2020
                                </div>
                                <p><a href="#" class="payout__btn">Set Account</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8 col-md-7">
                        <div class="table-responsive mt-30">
                            <table class="table ucp-table earning__table">
                                <thead class="thead-s">
                                    <tr>
                                        <th scope="col">Amount</th>
                                        <th scope="col">Payout Method</th>
                                        <th scope="col">Date Processed</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>$2550.54</td>
                                        <td>Payoneer</td>
                                        <td>15 Mar 2020</td>
                                    </tr>
                                    <tr>
                                        <td>$1950.14</td>
                                        <td>Payoneer</td>
                                        <td>15 Feb 2020</td>
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
