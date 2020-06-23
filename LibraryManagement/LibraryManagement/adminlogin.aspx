<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="LibraryManagement.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="imgs/adminuser.png" width="150px"/>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Admin Login</h3>
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
                            <div class="col">
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="username_text_box" runat="server" placeholder="Admin Username">

                                    </asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="password_text_box" runat="server" placeholder="Password" TextMode="Password">

                                    </asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Button ID="Button2" runat="server" Text="Login" class="btn btn-success btn-block btn-lg" OnClick="Button2_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <a href="home.aspx"><< Back to Home</a>
                <br /> <br />
            </div>
        </div>
    </div>
</asp:Content>
