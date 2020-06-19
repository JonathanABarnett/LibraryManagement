<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookinventory.aspx.cs" Inherits="LibraryManagement.adminbookinventory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-5">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                            <h4>Book Details</h4>
                        </center>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <center>
                            <img src="imgs/books.png" width="150px" />
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
                                <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" />
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-3">
                                <label>Member ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="Book ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button4" runat="server" Text="Go" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-9">
                                <label>Book Title</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="Book Title"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Language</label>
                                    <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                                        <asp:ListItem Text="English" Value="English" />
                                        <asp:ListItem Text="French" Value="French" />
                                        <asp:ListItem Text="Spanish" Value="Spanish" />
                                    </asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <label>Publisher Name</label>
                                    <asp:DropDownList ID="DropDownList2" runat="server" class="form-control">
                                        <asp:ListItem Text="Publisher1" Value="Publisher1" />
                                        <asp:ListItem Text="Publisher2" Value="Publisher2" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Author Name</label>
                                    <asp:DropDownList ID="DropDownList3" runat="server" class="form-control">
                                        <asp:ListItem Text="Author1" Value="Author1" />
                                        <asp:ListItem Text="Author2" Value="Author2" />
                                    </asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <label>Publisher Date</label>
                                    <asp:TextBox class="form-control" ID="TextBox3" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Genre</label>
                                    <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="5" class="form-control">
                                        <asp:ListItem Text="Adventure" Value="Adventure" />
                                        <asp:ListItem Text="Children" Value="Children" />
                                    </asp:ListBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Edition</label>
                                    <asp:TextBox class="form-control" ID="TextBox5" runat="server" placeholder="Edition"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Book Cost</label>
                                    <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="$X.XX" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Pages</label>
                                    <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="400" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Total Books</label>
                                    <asp:TextBox class="form-control" ID="TextBox4" runat="server" placeholder="13" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>In Stock</label>
                                    <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="12" ReadOnly="true" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Checked Out</label>
                                    <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="1" ReadOnly="true" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-12">
                                <div class="form-group">
                                    <label>Book Description</label>
                                    <asp:TextBox class="form-control" ID="TextBox10" runat="server" placeholder="Description" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-4">
                                <asp:Button class="btn btn-success btn-lg btn-block" ID="Button2" runat="server" Text="Add" />
                            </div>
                            <div class="col-4">
                                <asp:Button class="btn btn-info btn-lg btn-block" ID="Button1" runat="server" Text="Update" />
                            </div>
                            <div class="col-4">
                                <asp:Button class="btn btn-danger btn-lg btn-block" ID="Button3" runat="server" Text="Delete" />
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
                            <h4>Book Iventory List</h4>
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
