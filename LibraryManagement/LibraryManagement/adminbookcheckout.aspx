<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookcheckout.aspx.cs" Inherits="LibraryManagement.adminbookcheckout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                            <h4>Book Checkout</h4>
                        </center>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <center>
                            <img src="imgs/books.png" width="100px" />
                        </center>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Member ID</label>
                                <div class="form-group">
                                    
                                    <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="Member ID"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Book ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        
                                        <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="Book ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" />
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Member Name</label>
                                    <asp:TextBox class="form-control" ID="TextBox3" runat="server" placeholder="First Last" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Book Title</label>
                                    <asp:TextBox class="form-control" ID="TextBox4" runat="server" placeholder="Book Title" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Start Date</label>
                                    <asp:TextBox class="form-control" ID="TextBox5" runat="server" placeholder="Start Date" TextMode="Date" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>End Date</label>
                                    <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="End Date" TextMode="Date" ></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-6">
                                <asp:Button class="btn btn-primary btn-lg btn-block" ID="Button2" runat="server" Text="Issue" />
                            </div>
                            <div class="col-md-6">
                                <asp:Button class="btn btn-success btn-lg btn-block" ID="Button3" runat="server" Text="Return" />
                            </div>
                        </div>

                    </div>
                </div>
            </div>


            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                            <h4>Books Checked Out List</h4>
                        </center>
                            </div>
                        </div>



                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <asp:GridView class="table table-dark table-hover table-bordered" ID="GridView1" runat="server"></asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <a href="home.aspx"><< Back to Home</a>
        <br />
        <br />

    </div>

</asp:Content>
