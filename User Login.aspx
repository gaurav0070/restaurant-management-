<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="User Login.aspx.cs" Inherits="User_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">

                <div class="card text-white bg-dark mb-3 mt-5">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                        <img width="150px" src="icons/log.png" /> 
                                </center>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <center>
                                        <h2>USER LOGIN</h2> 
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
                              <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Email-ID"></asp:TextBox>
                              </div>

                            </div>
                        </div>

                        <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                              </div>

                           
                        <div class="form-group">
                            <asp:Button class="btn btn-outline-light btn-block" ID="Button1" runat="server" Text="Login" />
                              </div>

                         <div class="form-group">
                             <a href="Sign-up.aspx"><input class="btn btn-outline-light btn-block" id="Button2" type="button" value="Sign-Up" />
                              </div> </a>

                        
                         </div>

                     <a href="homepage.aspx">
                    <img width="40px"  src="icons/images.png"/></a>

                    </div>

                
               
                </div>
            </div>
        </div>
   
</asp:Content>


