<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Density.aspx.cs" Inherits="LearnLab.WebForm3" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolKit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="modal-body row">
    <div class="col-md-4">
        <label class="title">DENSITY</label>
        <label class="description">Density is a measure of mass per unit of volume. Density is a measure of mass per volume. The average density of an object equals its total mass divided by its total volume.
            An object made from a comparatively dense material (such as iron) will have less volume than an object of equal mass made from some less dense substance (such as water). Perhaps the highest density known is reached in neutron star matter.
            The singularity at the centre of a black hole, according to general relativity, does not have any volume, so its density is undefined.</label>
         <br /><br />
            <label class="description">For tutorial on this topic, please visit:  <a href="https://www.youtube.com/">https://www.youtube.com/</a></label>
    </div>
    <div class="col-md-4">
          <div class="row">
                <div class="col-lg-6">
                    <label class="title">INPUT DETAILS:</label>   
                </div>
                <div class="col-lg-6">
                    <asp:Label ID="DensityErrorLBL" runat="server" Text ="Error Message" CssClass="errorlabel"></asp:Label>
                </div>
            </div>
          <div style="padding-bottom:10px;">   
                <div class="row">              
                    <div class="col-lg-3">
                        <label class="given">Mass</label>
                    </div>
                    <div class="col-lg-5">
                        <asp:TextBox ID="MassTB" runat="server" CssClass="form-control" placeholder="Input Number"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender ID="MASSftbe" runat="server" TargetControlID="MassTB" FilterType="Custom, Numbers" ValidChars="." />
                    </div>
                    <div class="col-lg-4">
                        <asp:DropDownList ID="MassDDL" runat="server" CssClass="form-control">
                            <asp:ListItem Value ="mg">mg</asp:ListItem>
                            <asp:ListItem Value ="g">g</asp:ListItem>
                            <asp:ListItem Value ="kg">kg</asp:ListItem>
                            <asp:ListItem Value ="lb">lb</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
            </div>        
        <div style="padding-bottom:10px;">                               
                <div class="row">
                    <div class="col-lg-3">
                        <label class="given">Volume</label>
                    </div>
                    <div class="col-lg-5">
                        <asp:TextBox ID="VolumeTB" runat="server" CssClass="form-control" placeholder="Input Number"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender ID="Volumeftbe" runat="server" TargetControlID="VolumeTB" FilterType="Custom, Numbers" ValidChars="." />
                    </div>
                    <div class="col-lg-4">
                        <asp:DropDownList ID="VolumeDDL" runat="server" CssClass="form-control">
                            <asp:ListItem Value ="cm3">cm&#179;</asp:ListItem>
                            <asp:ListItem Value ="m3">m&#179;</asp:ListItem>
                            <asp:ListItem Value ="cu in">cu in</asp:ListItem>
                            <asp:ListItem Value ="cu ft">cu ft</asp:ListItem>
                            <asp:ListItem Value ="l">L</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
            </div>
             <div style="padding-bottom:10px;">                               
                <div class="row">
                    <div class="col-lg-3">
                        <label class="given">Density</label>
                    </div>
                    <div class="col-lg-5">
                         <asp:TextBox ID="DensityTB" runat="server" CssClass="form-control" placeholder="Input Number"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender ID="DensityFTBE" runat="server" TargetControlID="DensityTB" FilterType="Custom, Numbers" ValidChars="." />
                    </div>
                    <div class="col-lg-4">
                        <asp:DropDownList ID="DensityDDL" runat="server" CssClass="form-control">
                            <asp:ListItem Value ="kg/m3">kg/m&#179;</asp:ListItem>
                            <asp:ListItem Value ="kg/L">kg/L</asp:ListItem>
                            <asp:ListItem Value ="lb/cu in">lb/cu in</asp:ListItem>
                            <asp:ListItem Value ="lb/cu ft">lb/cu ft</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
            </div>                     
           <div class="row">
                <div class="pull-right">
                    <asp:button runat="server" id="DensityBtn" CssClass="btn btn-primary linkLoad" Text="Calculate" OnClick="CalculateDensity_Click"/>
                </div>
            </div>         
        </div>
        <div class="col-md-4">
            <label class="title">FORMULA:</label>
           <%-- <div class="row">
                <label class="subtitle">FORMULA:</label>
            </div>--%>
            <div class="row">
                <img src="Content/Images/DensityFormula.png" class="formula3"/>
            </div>
            <div class="row">
                 <img src="Content/Images/DensityFormula2.png" class="formula4" />         
            </div>
        </div>
    </div>
</asp:Content>
