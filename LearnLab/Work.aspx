<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Work.aspx.cs" Inherits="LearnLab.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="modal-body row">
        <div class="col-md-4">
            <label class="title">WORK</label>
            <label class="description">Measure of energy transfer that occurs when an object is moved over a distance by an external force at least part
                 of which is applied in the direction of the displacement. If the force is constant, work may be computed by multiplying the length of the 
                path by the component of the force acting along the path. To express this concept mathematically, the work W is equal to the force f times 
                the distance d, or W = fd. If the force is being exerted at an angle θ to the displacement, the work done is W = fd cos θ. Work done on a body 
                is accomplished not only by a displacement of the body as a whole from one place to another but also, for example, by compressing a gas, by 
                rotating a shaft, and even by causing invisible motions of the particles within a body by an external magnetic force.</label>
             <br /><br />
            <label class="description">For tutorial on this topic, please visit:  <a href="https://www.youtube.com/">https://www.youtube.com/</a></label>
        </div>
        <div class="col-md-4">
            <div class="row">
                <div class="col-lg-6">
                    <label class="title">INPUT DETAILS:</label>   
                </div>
                <div class="col-lg-6">
                    <asp:Label ID="WorkErrorLBL" runat="server" Text ="Error Message" CssClass="errorlabel"></asp:Label>
                </div>
            </div>
            <div style="padding-bottom:10px;">   
                <div class="row">              
                    <div class="col-lg-3">
                        <label class="given">Force</label>
                    </div>
                    <div class="col-lg-5">
                        <asp:TextBox ID="ForceTB" runat="server" CssClass="form-control" placeholder="Input Number"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender ID="Forceftbe" runat="server" TargetControlID="ForceTB" FilterType="Custom, Numbers" ValidChars="." />
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
            <div style="padding-bottom:10px;">                               
                <div class="row">
                    <div class="col-lg-3">
                        <label class="given">Distance</label>
                    </div>
                    <div class="col-lg-5">
                        <asp:TextBox ID="DistanceTB" runat="server" CssClass="form-control" placeholder="Input Number"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender ID="Distanceftbe" runat="server" TargetControlID="DistanceTB" FilterType="Custom, Numbers" ValidChars="." />
                    </div>
                    <div class="col-lg-4">
                        <asp:DropDownList ID="DistanceDDL" runat="server" CssClass="form-control">
                            <asp:ListItem Value ="m">m</asp:ListItem>
                            <asp:ListItem Value ="mm">mm</asp:ListItem>  
                            <asp:ListItem Value ="cm">cm</asp:ListItem>  
                            <asp:ListItem Value ="km">km</asp:ListItem>  
                            <asp:ListItem Value ="in">in</asp:ListItem>  
                            <asp:ListItem Value ="ft">ft</asp:ListItem>  
                            <asp:ListItem Value ="mi">mi</asp:ListItem>  
                        </asp:DropDownList>
                    </div>
                </div>
            </div>
            <div style="padding-bottom:10px;">                               
                <div class="row">
                    <div class="col-lg-3">
                        <label class="given">Work</label>
                    </div>
                    <div class="col-lg-5">
                        <asp:TextBox ID="WorkTB" runat="server" CssClass="form-control" placeholder="Input Number"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender ID="WorkFTBE" runat="server" TargetControlID="WorkTB" FilterType="Custom, Numbers" ValidChars="." />
                    </div>
                    <div class="col-lg-4">
                        <asp:DropDownList ID="WorkDDL" runat="server" CssClass="form-control">
                            <asp:ListItem Value ="J">J</asp:ListItem>
                            <asp:ListItem Value ="kJ">kJ</asp:ListItem>
                            <asp:ListItem Value ="Wh">Wh</asp:ListItem>
                            <asp:ListItem Value ="kWh">kWh</asp:ListItem>                       
                        </asp:DropDownList>
                    </div>
                </div>
            </div>                               
            <div class="row">
                <div class="pull-right">
                    <asp:button runat="server" id="WorkBtn" CssClass="btn btn-primary linkLoad" Text="Calculate" OnClick="CalculateWork_Click"/>
                </div>
            </div>
             <br /><br />
            <div class="col-lg-12">
                 <div class="row">
                    <label class="given">To compute for force:</label>
                    <asp:LinkButton runat="server" PostBackUrl="~/Force.aspx" CssClass="given">Force</asp:LinkButton>
                 </div>
            </div>
        </div>
        <div class="col-md-4">
            <label class="title">FORMULA:</label>
           <%-- <div class="row">
                <label class="subtitle">FORMULA:</label>
            </div>--%>
           <div style ="padding-left:10px">
                <div class="row">
                    <img src="Content/Images/WorkFormula.png" class="formula3"/>
                </div>     
             
            <div class="row">
                <img src="Content/Images/WorkFomula2.PNG" class="formula5" />         
            </div>
           </div> 
        </div>
    </div>
</asp:Content>
