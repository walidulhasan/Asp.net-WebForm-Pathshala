﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Instructor/instructor.Master" AutoEventWireup="true" CodeBehind="instructor_analyics.aspx.cs" Inherits="pathshala.Instructor.instructor_analyics" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper">
        <div class="sa4d25">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="st_title"><i class="uil uil-analysis"></i>Analyics</h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xl-4 col-sm-6">
                        <div class="card card-mini analysis_card">
                            <div class="card-body">
                                <h2 class="mb-2">839</h2>
                                <p>Subscribers</p>
                                <div class="chartjs-wrapper">
                                    <canvas id="barChart"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-sm-6">
                        <div class="card card-mini analysis_card">
                            <div class="card-body">
                                <h2 class="mb-1">950</h2>
                                <p>Weekly Visitors</p>
                                <div class="chartjs-wrapper">
                                    <canvas id="dual-line"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-sm-6">
                        <div class="card card-mini analysis_card">
                            <div class="card-body">
                                <h2 class="mb-1">20</h2>
                                <p>Weekly Sales</p>
                                <div class="chartjs-wrapper">
                                    <canvas id="line"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xl-12 col-md-12">

                        <div class="card card-default analysis_card p-0" data-scroll-height="450">
                            <div class="card-header">
                                <h2>Sales Of The Year</h2>
                            </div>
                            <div class="card-body p-5" style="height: 450px;">
                                <canvas id="linechart" class="chartjs"></canvas>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">

                        <div class="card card-default analysis_card p-0" id="user-activity">
                            <div class="row no-gutters">
                                <div class="col-xl-8">
                                    <div class="border-right">
                                        <div class="card-header justify-content-between">
                                            <h2 class="m-0">User Activity</h2>
                                            <div class="date-range-report ">
                                                <span></span>
                                            </div>
                                        </div>
                                        <ul class="nav nav-tabs justify-content-between justify-content-xl-start nav-fill" role="tablist">
                                            <li class="nav-item">
                                                <a class="nav-link active pb-md-0" data-toggle="tab" href="#user" role="tab" aria-selected="true">
                                                    <span class="type-name">User</span>
                                                    <h4 class="views_title d-inline-block mt-2 mr-2 mb-3">5248</h4>
                                                    <span class="text-success1">5%
                                                        <i class="uil uil-top-arrow-from-top"></i>
                                                    </span>
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link pb-md-0" data-toggle="tab" href="#session" role="tab" aria-selected="false">
                                                    <span class="type-name">Sessions</span>
                                                    <h4 class="views_title d-inline-block mt-2 mr-2 mb-3">638</h4>
                                                    <span class="text-success">20%
                                                        <i class="uil uil-top-arrow-from-top"></i>
                                                    </span>
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link pb-md-0" data-toggle="tab" href="#bounce" role="tab" aria-selected="false">
                                                    <span class="type-name">Bounce Rate</span>
                                                    <h4 class="views_title d-inline-block mt-2 mr-2 mb-3">36.9%</h4>
                                                    <span class="text-danger">7%
                                                        <i class="uil uil-arrow-to-bottom"></i>
                                                    </span>
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link pb-md-0" data-toggle="tab" href="#session-duration" role="tab" aria-selected="false">
                                                    <span class="type-name">Session Duration</span>
                                                    <h4 class="views_title d-inline-block mt-2 mr-2 mb-3">4m 49s</h4>
                                                    <span class="text-success">15%
                                                        <i class="uil uil-top-arrow-from-top"></i>
                                                    </span>
                                                </a>
                                            </li>
                                        </ul>
                                        <div class="card-body">
                                            <div class="tab-content" id="myTabContent">
                                                <div class="tab-pane fade show active" id="user" role="tabpanel">
                                                    <canvas id="activity" class="chartjs p-4" style="height: 350px;"></canvas>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-footer d-flex flex-wrap bg-white border-top">
                                            <a href="#" class="text-uppercase py-3 ovrvew-1">Audience Overview</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-4">
                                    <div data-scroll-height="350">
                                        <div class="card-header justify-content-between">
                                            <h2 class="m-0">Current Users</h2>
                                        </div>
                                        <div class="curntusr145">
                                            <p class="my-2">Ave Page views per minute</p>
                                            <h4>09</h4>
                                        </div>
                                        <div class="border-bottom"></div>
                                        <div class="card-body p-5">
                                            <canvas id="currentUser" class="chartjs" style="height: 300px"></canvas>
                                        </div>
                                        <div class="card-footer d-flex flex-wrap bg-white">
                                            <a href="#" class="text-uppercase py-3 ovrvew-1">Audience Overview</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="table-responsive mt-30">
                            <table class="table ucp-table">
                                <thead class="thead-s">
                                    <tr>
                                        <th class="text-center" scope="col">Item No.</th>
                                        <th class="cell-ta" scope="col">Thumbnail</th>
                                        <th class="cell-ta" scope="col">Title</th>
                                        <th class="text-center" scope="col">Purchases</th>
                                        <th class="text-center" scope="col">Comments</th>
                                        <th class="text-center" scope="col">Views</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="text-center">001</td>
                                        <td class="cell-ta">
                                            <div class="thumb_img">
                                                <img src="images/courses/img-2.jpg" alt=""></div>
                                        </td>
                                        <td class="cell-ta">Course Title Here</td>
                                        <td class="text-center">70</td>
                                        <td class="text-center">1150</td>
                                        <td class="text-center">1850</td>
                                    </tr>
                                    <tr>
                                        <td class="text-center">002</td>
                                        <td class="cell-ta">
                                            <div class="thumb_img">
                                                <img src="images/courses/img-3.jpg" alt=""></div>
                                        </td>
                                        <td class="cell-ta">Course Title Here</td>
                                        <td class="text-center">86</td>
                                        <td class="text-center">2150</td>
                                        <td class="text-center">6850</td>
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
