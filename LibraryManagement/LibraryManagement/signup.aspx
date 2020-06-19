<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="LibraryManagement.signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="imgs/generaluser.png" width="100px"/>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Member Sign Up</h4>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <hr>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Full Name</label>
                                    <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="Full Name">
                                    </asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Date of Birth</label>
                                    <asp:TextBox class="form-control" ID="TextBox2" runat="server" TextMode="Date">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Phone Number</label>
                                    <asp:TextBox class="form-control" ID="TextBox3" runat="server" placeholder="XXX-XXX-XXXX" TextMode="Phone">
                                    </asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Email</label>
                                    <asp:TextBox class="form-control" ID="TextBox4" runat="server" TextMode="Email" placeholder="abc@email.com">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>State</label>
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server" placeholder="XXX-XXX-XXXX" TextMode="Phone">
                                        <asp:ListItem Text="Select" Value="Select" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>City</label>
                                    <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="city">                                
                                    </asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Pin</label>
                                    <asp:TextBox class="form-control" ID="TextBox7" runat="server" TextMode="Number" placeholder="XXXX">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>Address</label>
                                    <asp:TextBox class="form-control" ID="TextBox5" runat="server" placeholder="Multiline" Rows="2">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <center>
                                <h2>Login Information</h2>
                            </center>
                        </div>


                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Username</label>
                                    <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="Username">
                                    </asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Password</label>
                                    <asp:TextBox class="form-control" ID="TextBox9" runat="server" TextMode="Password" placeholder="Password">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <button id="Button2" class="btn btn-info btn-block btn-lg" href="signup.aspx">
                                Sign Up
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <a href="home.aspx"><< Back to Home</a>
        <br />
        <br />
</asp:Content>
