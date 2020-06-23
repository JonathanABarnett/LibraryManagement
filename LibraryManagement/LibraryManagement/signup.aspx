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
                                    <asp:TextBox class="form-control" ID="full_name_text_box" runat="server" placeholder="Full Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Date of Birth</label>
                                    <asp:TextBox class="form-control" ID="dob_text_box" runat="server" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Phone Number</label>
                                    <asp:TextBox class="form-control" ID="phone_number_text_box" runat="server" placeholder="XXX-XXX-XXXX" TextMode="Phone"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Email</label>
                                    <asp:TextBox class="form-control" ID="email_text_box" runat="server" TextMode="Email" placeholder="abc@email.com"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>State</label>
                                    <asp:DropDownList class="form-control" ID="state_dropdown" runat="server" placeholder="XXX-XXX-XXXX" TextMode="Phone">
                                        <asp:ListItem Text="Select" Value="Select" />
                                        <asp:ListItem Text="AL" Value="AL" />
                                        <asp:ListItem Text="CA" Value="CA" />
                                        <asp:ListItem Text="IL" Value="IL" />
                                        <asp:ListItem Text="NY" Value="NY" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>City</label>
                                    <asp:TextBox class="form-control" ID="city_text_box" runat="server" placeholder="City"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Zipcode</label>
                                    <asp:TextBox class="form-control" ID="zipcode_text_box" runat="server" TextMode="Number" placeholder="XXXX"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>Address</label>
                                    <asp:TextBox class="form-control" ID="address_text_box" runat="server" placeholder="123 Main St" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            
                                <h2 class="text-center">Login Information</h2>
                            
                        </div>


                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Username</label>
                                    <asp:TextBox class="form-control" ID="username_text_box" runat="server" placeholder="Username"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Password</label>
                                    <asp:TextBox class="form-control" ID="password_text_box" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <asp:Button ID="Button1" class="btn btn-info btn-block btn-lg" runat="server" Text="Sign Up" OnClick="Button1_Click1" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <a href="home.aspx"><< Back to Home</a>
    <br />
    <br />

</asp:Content>
