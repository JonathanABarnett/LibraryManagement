<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="LibraryManagement.userprofile" %>

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
                                    <img src="imgs/generaluser.png" width="100px"/>
                                </center>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Your Profile</h4>
                                    <span>Acount Status - </span>
                                    <asp:Label ID="Label1" class="badge badge-pill badge-info" runat="server" Text="Active"></asp:Label>
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
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Username</label>
                                    <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="Username" ReadOnly="true">
                                    </asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Password</label>
                                    <asp:TextBox class="form-control" ID="TextBox9" runat="server" TextMode="Password" placeholder="Old Password" ReadOnly="true">
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Password</label>
                                <asp:TextBox class="form-control" ID="TextBox10" runat="server" TextMode="Password" placeholder="New Password">
                                </asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-8 mx-auto">
                            <center>
                            <div class="form-group">
                                <button id="Button2" class="btn btn-success btn-block btn-lg" href="signup.aspx">
                                    Update Profile
                                </button>
                            </div>
                            </center>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-7">
            <div class="card-body">


                <div class="row">
                    <div class="col">
                        <center>
                        <img src="imgs/books1.png" width="100px"/>
                        </center>
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                        <center>
                        <h4></h4>
                        </center>
                    </div>
                </div>


                <div class="row">
                    <div class="col">
                        <center>
                         <asp:Label ID="Label2" class="badge badge-pill badge-info" runat="server" Text="Your Books"></asp:Label>
                         </center>
                    </div>
                </div>


                <div class="row">
                    <div class="col">
                        <asp:GridView ID="GridView1" class="table table-dark table-hover table-bordered" runat="server"></asp:GridView>
                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
