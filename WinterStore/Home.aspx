﻿<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WinterStore.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <%--  <h1>Hello, User How Are You !</h1>--%>
    <%--Crousel--%>
    <div class="container-fluid mt-2" style="width: 100%">

        <div class="row">

            <div id="carouselExample" class="carousel slide d-none d-sm-none d-md-block" data-ride="carousel">

                <div class="carousel-inner">

                    <div class="carousel-item active">

                        <div class="row">
                            <div class="col-md-4">
                                <img class="d-block w-100" src="Images/s1.jpg" alt="First slide">
                            </div>
                            <div class="col-md-4">
                                <img class="d-block w-100" src="Images/s6.jpg" alt="First slide">
                            </div>
                            <div class="col-md-4">
                                <img class="d-block w-100" src="Images/s2.jpg" alt="First slide">
                            </div>
                        </div>

                    </div>
                    <!-- Carousel Item 1 -->

                    <div class="carousel-item">

                        <div class="row">
                            <div class="col-md-4">
                                <img class="d-block w-100" src="Images/s3.jpg" alt="First slide">
                            </div>
                            <div class="col-md-4">
                                <img class="d-block w-100" src="Images/s4.jpg" alt="First slide">
                            </div>
                            <div class="col-md-4">
                                <img class="d-block w-100" src="Images/s5.jpg" alt="First slide">
                            </div>

                        </div>

                    </div>


                </div>

                <a class="carousel-control-prev" href="#carouselExample" role="button" data-slide="prev">

                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>

                    <span class="sr-only">Previous</span>

                </a>
                <!-- Carousel Control Prev -->

                <a class="carousel-control-next" href="#carouselExample" role="button" data-slide="next">

                    <span class="carousel-control-next-icon" aria-hidden="true"></span>

                    <span class="sr-only">Next</span>

                </a>
                <!-- Carousel Control Next -->

            </div>


            <%--mobile view--%>

            <div id="carouselExampleMobile" class="carousel slide d-md-none d-lg-none d-xl-none" data-ride="carousel">

                <div class="carousel-inner">

                    <div class="carousel-item active">

                        <img class="d-block w-100" src="Images/s1.jpg" alt="First slide">
                    </div>
                    <!-- Carousel Item 1 -->

                    <div class="carousel-item">

                        <img class="d-block w-100" src="Images/s4.jpg" alt="Second slide">
                    </div>
                    <!-- Carousel Item 2 -->

                    <div class="carousel-item">

                        <img class="d-block w-100" src="Images/s6.jpg" alt="Third slide">
                    </div>
                    <!-- Carousel Item 3 -->

                    <div class="carousel-item">

                        <img class="d-block w-100" src="Images/s2.jpg" alt="Fourth slide">
                    </div>
                    <!-- Carousel Item 4 -->

                    <div class="carousel-item">

                        <img class="d-block w-100" src="Images/s3.jpg" alt="Fifth slide">
                    </div>   
                    <div class="carousel-item">

                        <img class="d-block w-100" src="Images/s5.jpg" alt="Fifth slide">
                    </div>

                </div>

                <a class="carousel-control-prev" href="#carouselExampleMobile" role="button" data-slide="prev">

                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>

                    <span class="sr-only">Previous</span>

                </a>
                <!-- Carousel Control Prev -->

                <a class="carousel-control-next" href="#carouselExampleMobile" role="button" data-slide="next">

                    <span class="carousel-control-next-icon" aria-hidden="true"></span>

                    <span class="sr-only">Next</span>

                </a>
                <!-- Carousel Control Next -->

            </div>


        </div>

    </div>
    <%--Category Section--%>



    <%--Feature Products--%>



    <%--Category section--%>
        <div class="text-center mt-2">
            <hr  style="height:2px;border-width:0;color:gray;background-color:gray"/>
        <h3>Top Categories to choose from</h3>
            <hr style="height:2px;border-width:0;color:gray;background-color:gray" />
    </div>

    <div class="container-fluid mt-2 mb-4" style="margin: auto">
        <div class="row row-cols-1 row-cols-md-3 g-4 ">
            <div class="col mb-2">
                <div class="card h-100">
                    <img src="Images/male.jpg" class="card-img-top" alt="Mens's Section" />
                    <div class="card-body">
                        <h5 class="card-title">Awesome Male Section</h5>
                       
                    </div>
                    
                        <asp:Button ID="Men" CssClass="btn btn-outline-dark text-center w-50 m-auto" runat="server" Text="Shop Men " OnClick="Men_Click" />
                    <br />
                </div>
            </div>
            <div class="col mb-2">
                <div class="card h-100">
                    <img src="Images/female.jpg" class="card-img-top" alt="Women's Section" />
                    <div class="card-body">
                        <h5 class="card-title">Fantastic Female Section</h5>
                    </div>
                        <asp:Button ID="Women"  CssClass="btn btn-outline-dark text-center w-50 m-auto" runat="server" Text="Shop Women " OnClick="Women_Click" />
                    <br />
                </div>
            </div>
            <div class="col mb-2">
                <div class="card h-100">
                    <img src="Images/kids2.jpg" class="card-img-top" alt="Kids Section" />
                    <div class="card-body">
                        <h5 class="card-title">Amazing Kids Section</h5>
                    </div>
                        <asp:Button ID="kids" CssClass="btn btn-outline-dark w-50 m-auto" runat="server" Text="Shop Kids " OnClick="kids_Click" />
                    <br />
                </div>
            </div>

        </div>
    </div>
    <%--Productive Section--%>
    <section class="pt-7">
        <div class="container">
            <div class="row pb-7 border-bottom">
                <div class="col-12 col-md-6 col-lg-3">

                    <!-- Item -->
                    <div class="d-flex mb-6 mb-lg-0">

                        <!-- Icon -->
                        <h1><i class="bi bi-truck mr-3" style="color: red; height: 40%; width: 40%"></i></h1>

                        <!-- Body -->
                        <div class="ms-6">

                            <!-- Heading -->
                            <h6 class="heading-xxs mb-1">Free shipping
                            </h6>

                            <!-- Text -->
                            <p class="mb-0 fs-sm text-muted">
                                From all orders over $100
                            </p>

                        </div>

                    </div>

                </div>
                <div class="col-12 col-md-6 col-lg-3">

                    <!-- Item -->
                    <div class="d-flex mb-6 mb-lg-0">

                        <!-- Icon -->
                        <h1><i class="bi bi-recycle mr-3" style="color: red; height: 40%; width: 40%"></i></h1>


                        <!-- Body -->
                        <div class="ms-6">

                            <!-- Heading -->
                            <h6 class="mb-1 heading-xxs">Free returns
                            </h6>

                            <!-- Text -->
                            <p class="mb-0 fs-sm text-muted">
                                Return money within 30 days
                            </p>

                        </div>

                    </div>

                </div>
                <div class="col-12 col-md-6 col-lg-3">

                    <!-- Item -->
                    <div class="d-flex mb-6 mb-md-0">

                        <!-- Icon -->
                        <h1><i class="bi bi-shield-lock mr-3" style="color: red; height: 40%; width: 40%"></i></h1>


                        <!-- Body -->
                        <div class="ms-6">

                            <!-- Heading -->
                            <h6 class="mb-1 heading-xxs">Secure shopping
                            </h6>

                            <!-- Text -->
                            <p class="mb-0 fs-sm text-muted">
                                You're in safe hands
                            </p>

                        </div>

                    </div>

                </div>
                <div class="col-12 col-md-6 col-lg-3">

                    <!-- Item -->
                    <div class="d-flex">

                        <!-- Icon -->
                        <h1><i class="bi bi-tags mr-3" style="color: red; height: 40%; width: 40%"></i></h1>


                        <!-- Body -->
                        <div class="ms-6">

                            <!-- Heading -->
                            <h6 class="mb-1 heading-xxs">Over 10,000 Styles
                            </h6>

                            <!-- Text -->
                            <p class="mb-0 fs-sm text-muted">
                                We have everything you need
                            </p>

                        </div>

                    </div>

                </div>
            </div>
        </div>
    </section>

  


   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>


    <script src="js/main.js"></script>
</asp:Content>
