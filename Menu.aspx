<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Menu.aspx.vb" Inherits="Menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section>
      
        <img src="img/menu.jpg" class="mt-5" width="100%" />
    </section>

    <section>
        <h1 align="center"><p class="font-italic mt-4">OUR MENU</p></h1>
    </section>
    <br />
    <br />

      <center>
                       <h1> Cocktails</h1>
                   </center>
              <br />

      



    <section>
       <div class="row row-cols-1 row-cols-md-4">
  <div class="col ">
    <div class="card-fluid">
      <img src="img/menu/cocktails/Mango-Ananas-FreshFruitMartinis.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Mango-Pineapple-FreshFruit Martinis</h5>
      </div>
    </div>
  </div>
 
  <div class="col ">
    <div class="card-fluid">
      <img src="img/menu/cocktails/Apple-FreshFruitMartinis.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Apple-FreshFruit Martinis</h5>
      </div>
    </div>
  </div>
  <div class="col ">
    <div class="card-fluid">
      <img src="img/menu/cocktails/Lychee-and-Cherryt-FreshFruitMartinis.jpg"  class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Lychee and Cherry FreshFruit Martinis</h5>
        
      </div>
    </div>
  </div>

           <div class="col ">
    <div class="card-fluid">
      <img src="img/menu/cocktails/Strawberry-FreshFruitMartinis.jpg"class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Strawberry-FreshFruit Martinis</h5>
      </div>
    </div>
  </div>
</div>
    </section>
          
    <nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center">
    <li class="page-item disabled">
      <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
    </li>
    <li class="page-item"><a class="page-link" href="Menu2.aspx">2</a></li>
    <li class="page-item"><a class="page-link" href="">3</a></li>
    <li class="page-item"><a class="page-link" href="">4</a></li>
    <li class="page-item">
      <a class="page-link" href="Menu2.aspx">Next</a>
    </li>
  </ul>
</nav>
</asp:Content>

