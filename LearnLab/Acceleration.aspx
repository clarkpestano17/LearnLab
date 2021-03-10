<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Acceleration.aspx.cs" Inherits="LearnLab.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="modal-body row">
        <div class="col-md-4">
            <label class="title">ACCELERATION</label>
            <label class="description">Compared to displacement and velocity, acceleration is like the angry, fire-breathing dragon of motion variables. It can be violent; some people are scared of it; and if it's big, it forces you to take notice. That feeling you get when you're sitting in a plane during take-off, or slamming on the brakes in a car, or turning a corner at a high speed in a go kart are all situations where you are accelerating.
             Acceleration is the name we give to any process where the velocity changes. Since velocity is a speed and a direction, there are only two ways for you to accelerate: change your speed or change your direction—or change both.</label>
            <br /><br />
            <label class="description">For tutorial on this topic, please visit:  <a href="https://www.youtube.com/">https://www.youtube.com/</a></label>
        </div>
        <div class="col-md-4">
            <div class="row">
                <div class="col-lg-6">
                    <label class="title">INPUT DETAILS:</label>   
                </div>
                <div class="col-lg-6">
                    <asp:Label ID="AccelerationErrorLBL" runat="server" Text ="Error Message" CssClass="errorlabel"></asp:Label>
                </div>
            </div>
            <div style="padding-bottom:10px;">   
                <div class="row">              
                    <div class="col-lg-3">
                        <label class="given">Initial Speed</label>
                    </div>
                    <div class="col-lg-5">
                        <asp:TextBox ID="InitialSpeedTB" runat="server" CssClass="form-control" placeholder="Input Number" ></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender ID="InitialSpeedftbe" runat="server" TargetControlID="InitialSpeedTB" FilterType="Custom, Numbers" ValidChars="." />
                    </div>
                    <div class="col-lg-4">
                        <asp:DropDownList ID="InitialSpeedDDL" runat="server" CssClass="form-control">
                            <asp:ListItem Value ="m/s">m/s</asp:ListItem>
                            <asp:ListItem Value ="km/h">km/h</asp:ListItem>
                            <asp:ListItem Value ="mph">mph</asp:ListItem>
                            <asp:ListItem Value ="ft/s">ft/s</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
            </div>        
            <div style="padding-bottom:10px;">                               
                <div class="row">
                    <div class="col-lg-3">
                        <label class="given">Final Speed</label>
                    </div>
                    <div class="col-lg-5">
                        <asp:TextBox ID="FinalSpeedTB" runat="server" CssClass="form-control" placeholder="Input Number"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender ID="FinalSpeedftbe" runat="server" TargetControlID="FinalSpeedTB" FilterType="Custom, Numbers" ValidChars="." />
                    </div>
                      <div class="col-lg-4">
                        <asp:DropDownList ID="FinalSpeedDDL" runat="server" CssClass="form-control">
                            <asp:ListItem Value ="m/s">m/s</asp:ListItem>
                            <asp:ListItem Value ="km/h">km/h</asp:ListItem>
                            <asp:ListItem Value ="mph">mph</asp:ListItem>
                            <asp:ListItem Value ="ft/s">ft/s</asp:ListItem>
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
            <div class="row">
                <div class="pull-right">
                    <asp:button runat="server" id="AccelerateBtn" CssClass="btn btn-primary linkLoad" Text="Calculate" OnClick="CalculateAcceleration_Click"/>
                </div>
            </div>
              <br /><br />
            <div class="col-lg-12">
                <div class="row">
                    <label  class="given">To compute for velocity:</label>
                    <asp:LinkButton runat="server" PostBackUrl="~/Velocity.aspx" CssClass="given">Velocity</asp:LinkButton>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <label class="title">FORMULA:</label>
           <%-- <div class="row">
                <label class="subtitle">FORMULA:</label>
            </div>--%>
            <div class="row">
                <img src="Content/Images/ACCFormula.png" class="formula"/>
            </div>
            <div class="row">
                 <img src="Content/Images/ACCFormula2.png" class="formula2" />         
            </div>
        </div>
    </div>
</asp:Content>
