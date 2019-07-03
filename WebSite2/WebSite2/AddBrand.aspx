﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AddBrand.aspx.cs" Inherits="AddBrand" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="form-horizontal">
            <h2>Add Brand</h2>
            <hr />
            <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Brand Name"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtBrandName" CssClass="form-control" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtBrandName" runat="server" ErrorMessage="This Field Is Required" ControlToValidate="txtBrandName" CssClass="text-danger"></asp:RequiredFieldValidator>

                    </div>
                </div>

             <div class="form-group">
                     <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="btnAddBrand" runat="server" Text="Add Brand" CssClass="btn btn-success" OnClick="btnAddBrand_Click" />
                    </div>
                </div>
             </div>

        <div class="panel panel-default">
  <!-- Default panel contents -->
  <div class="panel-heading">All Brands</div>
            <asp:Repeater ID="rptrBrands" runat="server">
                <HeaderTemplate>
                    <table class="table">
                  <thead>
                        <tr>
                          <th>#</th>
                          <th>Brand</th>
                          <th>Edit</th>
                       </tr>
                 </thead>
                   <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                        <tr>
                          <th><%#Eval("BrandID") %></th>
                          <td><%#Eval("Name") %></td>
                         <td>Edit</td>
                         </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </tbody>
                    </table>
                </FooterTemplate>
            </asp:Repeater>

     
</div>
          </div>
</asp:Content>

