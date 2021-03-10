<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Force.aspx.cs" Inherits="LearnLab.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="modal-body row">
        <div class="col-md-4">
            <label class="title">FORCE</label>
            <label class="description">A force is a push or pull upon an object resulting from the object's interaction with another object. Whenever there is an interaction between two objects, 
                there is a force upon each of the objects. When the interaction ceases, the two objects no longer experience the force. Forces only exist as a result of an interaction.</label>
              <br /><br />
            <label class="description">For tutorial on this topic, please visit:  <a href="https://www.youtube.com/">https://www.youtube.com/</a></label>
        </div>   
        <div class="col-md-4">
            <div class="row">
                <div class="col-lg-6">
                    <label class="title">INPUT DETAILS:</label>   
                </div>
                <div class="col-lg-6">
                    <asp:Label ID="ForceErrorLBL" runat="server" Text ="Error Message" CssClass="errorlabel"></asp:Label>
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
                            <asp:ListItem Value ="kg">kg</asp:ListItem>
                            <asp:ListItem Value ="mg">mg</asp:ListItem>
                            <asp:ListItem Value ="g">g</asp:ListItem>
                            <asp:ListItem Value ="lb">lb</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
            </div>        
            <div style="padding-bottom:10px;">                               
                <div class="row">
                    <div class="col-lg-3">
                        <label class="given">Acceleration</label>
                    </div>
                    <div class="col-lg-5">
                        <asp:TextBox ID="AccelerationTB" runat="server" CssClass="form-control" placeholder="Input Number"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender ID="Accelerationftbe" runat="server" TargetControlID="AccelerationTB" FilterType="Custom, Numbers" ValidChars="." />
                    </div>
                    <div class="col-lg-4">
                        <asp:DropDownList ID="AccelerationDDL" runat="server" CssClass="form-control">
                            <asp:ListItem Value ="m/s2">m/s&#178;</asp:ListItem>
                            <asp:ListItem Value ="ft/s2">ft/s&#178;</asp:ListItem> 
                        </asp:DropDownList>
                    </div>
                </div>
            </div>
            <div style="padding-bottom:10px;">                               
                <div class="row">
                    <div class="col-lg-3">
                        <label class="given">Force</label>
                    </div>
                    <div class="col-lg-5">
                        <asp:TextBox ID="ForceTB" runat="server" CssClass="form-control" placeholder="Input Number"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender ID="ForceFTBE" runat="server" TargetControlID="ForceTB" FilterType="Custom, Numbers" ValidChars="." />
                    </div>
                    <div class="col-lg-4">
                        <asp:DropDownList ID="ForceDDL" runat="server" CssClass="form-control">
                            <asp:ListItem Value ="N">N</asp:ListItem>
                            <asp:ListItem Value ="kN">kN</asp:ListItem>
                            <asp:ListItem Value ="MN">MN</asp:ListItem>                           
                        </asp:DropDownList>
                    </div>
                </div>
            </div>                               
            <div class="row">
                <div class="pull-right">
                    <asp:button runat="server" id="ForceBtn" CssClass="btn btn-primary linkLoad" Text="Calculate" OnClick="CalculateForce_Click"/>
                </div>
            </div>
             <br /><br />
            <div class="col-lg-12">
                 <div class="row">
                    <label class="given">To compute for acceleration:</label>
                    <asp:LinkButton runat="server" PostBackUrl="~/Acceleration.aspx" CssClass="given">Acceleration</asp:LinkButton>
                 </div>
            </div>
        </div>
        <div class="col-md-4">
            <label class="title">FORMULA:</label>
           <%-- <div class="row">
                <label class="subtitle">FORMULA:</label>
            </div>--%>
            <div class="row">
                <img src="Content/Images/ForceFormula.png" class="formula3"/>
            </div>
            <div style ="padding-left:25px">
                <div class="row">
                    <img src="Content/Images/ForceFormula2.png" class="formula4" />         
                </div>
            </div>
        </div>
           </div>
</asp:Content>
