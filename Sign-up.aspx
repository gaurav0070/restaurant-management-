<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Sign-up.aspx.cs" Inherits="Sign_up" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
     <div class="container">
        <div class="row">
            <div class="col-md-10 mx-auto">

                <div class="card bg-light mb-3 mt-5">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                        <img width="1px" src="icons/sign-up.png" />
                                </center>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <center>
                                        <h2>USER-SIGN-UP</h2> 
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
                               <label><B>Full- Name</B></label>
                                <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Full-Name"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Full Name Cannot Be Empty " ForeColor="Red" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                                    <br />
                              </div>
                            </div>
                             
                            <div class="col-md-6">
                               <label><B>Email-ID </B></label>&nbsp;<div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email-ID" TextMode="Email"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter Valid Email Id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                              </div>
                            </div>
                        </div>


                         <div class="row">
                            <div class="col-md-4">
                               <label><B>Contact Number</B></label>
                                <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Contact Number" MaxLength="10"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter Valid Contact Number" ForeColor="Red" ValidationExpression="^([7-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
                              </div>
                            </div>
                             
                            <div class="col-md-4">
                               <label><B>Password</B></label>
                                <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox6" ErrorMessage="Password cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                              </div>
                            </div>

                              <div class="col-md-4">
                                <label><b>Confirm Password</b></label><asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                  <div class="form-group">
                                      <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox6" ControlToValidate="TextBox2" ErrorMessage="Password does'nt match " ForeColor="Red"></asp:CompareValidator>
                                </div>
                            </div>




                        </div>



                         <div class="row">
                            <div class="col-md-4">
                               <label><B>State</B></label>
                                <div class="form-group">
                                    <asp:DropDownList CssClass="form-group" ID="DropDownList1" runat="server">
                                        <asp:ListItem text="Select" value="select"></asp:ListItem>
                                        <asp:ListItem text="Maharashtra" value="Maharashtra"></asp:ListItem>              
                                    </asp:DropDownList>
                                    
                              </div>
                            </div>
                             
                            <div class="col-md-4">
                               <label><B>City</B></label>
                                <div class="form-group">
                                   <asp:DropDownList CssClass="form-group" ID="DropDownList2" runat="server">
                                        <asp:ListItem text="Select" value="select"></asp:ListItem>
                                        <asp:ListItem text="Mumbai" value="Mumbai"></asp:ListItem>
                                       </asp:DropDownList>  
                              </div>
                            </div>

                             <div class="col-md-4">
                               <label><B>Pin Code</B></label>
                                <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Pin Code" MaxLength="6"></asp:TextBox>
                                    <br />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox9" ErrorMessage="enter a valid pincode" ForeColor="Red" ValidationExpression="^([4]{1})([0]{2})([0-9]{3})$"></asp:RegularExpressionValidator>
                              </div>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                               <label><B>FULL-ADDRESS</B></label>
                                <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full-Name" TextMode="MultiLine" Rows="2"></asp:TextBox>
                              </div>
                            </div>
      
                   </div>
                        
                        <div class="row">
                            <div class="col">
                            <div class="form-group">
                           
                              <asp:Button class="btn btn-outline-dark btn-block" ID="Button1" runat="server" Text="Sign-Up" OnClick="Button1_Click"></asp:Button>
                            </div>
                        </div>

                   
                    </div>

                
               
                </div>
            </div>
        </div>
            </div>
         </div>
    
            </asp:Content>

