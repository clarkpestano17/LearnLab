<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Power.aspx.cs" Inherits="LearnLab.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="modal-body row">
        <div class="col-md-4">
            <label class="title">POWER</label>
            <label class="description">The quantity work has to do with a force causing a displacement. Work has nothing to do with the amount of time that 
            this force acts to cause the displacement. Sometimes, the work is done very quickly and other times the work is done rather slowly. For example, 
            a rock climber takes an abnormally long time to elevate her body up a few meters along the side of a cliff. On the other hand, a trail hiker 
            (who selects the easier path up the mountain) might elevate her body a few meters in a short amount of time. The two people might do the same amount of work, 
            yet the hiker does the work in considerably less time than the rock climber. The quantity that has to do with the rate at which a certain amount of work is done is 
            known as the power. The hiker has a greater power rating than the rock climber.</label>
             <br /><br />
            <label class="description">For tutorial on this topic, please visit:  <a href="https://www.youtube.com/">https://www.youtube.com/</a></label>
        </div>    
        <div class="col-md-4">
            <div class="row">
                <div class="col-lg-6">
                    <label class="title">INPUT DETAILS:</label>   
                </div>
                <div class="col-lg-6">
                    <asp:Label ID="PowerErrorLBL" runat="server" Text ="Error Message" CssClass="errorlabel"></asp:Label>
                </div>
            </div>
            <div style="padding-bottom:10px;">   
                <div class="row">              
                    <div class="col-lg-3">
                        <label class="given">Work</label>
                    </div>
                    <div class="col-lg-5">
                        <asp:TextBox ID="WorkTB" runat="server"  CssClass="form-control" placeholder="Input Number"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender ID="Workftbe" runat="server" TargetControlID="WorkTB" FilterType="Custom, Numbers" ValidChars="." />
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
            <div style="padding-bottom:10px;">                               
                <div class="row">
                    <div class="col-lg-3">
                        <label class="given">Time</label>
                    </div>
                    <div class="col-lg-5">
                        <asp:TextBox ID="TimeTB" runat="server" CssClass="form-control" placeholder="Input Number"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender ID="Timeftbe" runat="server" TargetControlID="TimeTB" FilterType="Custom, Numbers" ValidChars="." />
                    </div>
                    <div class="col-lg-4">
                        <asp:DropDownList ID="TimeDDL" runat="server" CssClass="form-control">
                            <asp:ListItem Value ="s">s</asp:ListItem>
                            <asp:ListItem Value ="h">h</asp:ListItem>  
                        </asp:DropDownList>
                    </div>
                </div>
            </div>
            <div style="padding-bottom:10px;">                               
                <div class="row">
                    <div class="col-lg-3">
                        <label class="given">Power</label>
                    </div>
                    <div class="col-lg-5">
                        <asp:TextBox ID="PowerTB" runat="server"  CssClass="form-control" placeholder="Input Number"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender ID="PowerFTBE" runat="server" TargetControlID="PowerTB" FilterType="Custom, Numbers" ValidChars="." />
                    </div>
                    <div class="col-lg-4">
                        <asp:DropDownList ID="PowerDDL" runat="server" CssClass="form-control">
                            <asp:ListItem Value ="W">W</asp:ListItem>
                            <asp:ListItem Value ="mW">mW</asp:ListItem>
                            <asp:ListItem Value ="kW">kW</asp:ListItem> 
                            <asp:ListItem Value ="MW">MW</asp:ListItem>                           
                        </asp:DropDownList>
                    </div>
                </div>
            </div>                               
            <div class="row">
                <div class="pull-right">
                    <asp:button runat="server" id="PowerBtn" CssClass="btn btn-primary linkLoad" Text="Calculate" OnClick="CalculatePower_Click"/>
                </div>
            </div>
             <br /><br />
            <div class="col-lg-12">
                 <div class="row">
                    <label class="given">To compute for work:</label>
                    <asp:LinkButton runat="server" PostBackUrl="~/Work.aspx" CssClass="given">Work</asp:LinkButton>
                 </div>
            </div>
        </div>
        <div class="col-md-4">
            <label class="title">FORMULA:</label>
           <%-- <div class="row">
                <label class="subtitle">FORMULA:</label>
            </div>--%>
            <div class="row">
                <img src="Content/Images/PowerFormula.png" class="formula3"/>
            </div>
            
                <div class="row">
                    <img src="Content/Images/PowerFormula2.png" class="formula4" />         
                </div>
            
        </div>
           </div>
</asp:Content>
