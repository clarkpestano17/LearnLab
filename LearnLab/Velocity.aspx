<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Velocity.aspx.cs" Inherits="LearnLab.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <div class="modal-body row">
        <div class="col-md-4">
            <label class="title">VELOCITY</label>
            <label class="description">The velocity of an object is the rate of change of its position with respect to a frame of reference, and is a function of time.
                 Velocity is equivalent to a specification of an object's speed and direction of motion (e.g. 60 km/h to the north). Velocity is a fundamental concept in kinematics, 
                the branch of classical mechanics that describes the motion of bodies. Velocity is a physical vector quantity; both magnitude and direction are needed to define it. 
                The scalar absolute value (magnitude) of velocity is called speed, being a coherent derived unit whose quantity is measured in the SI (metric system) as metres per second 
                (m/s) or as the SI base unit of (m⋅s−1). For example, "5 metres per second" is a scalar, whereas "5 metres per second east" is a vector. If there is a change in speed, direction 
                or both, then the object has a changing velocity and is said to be undergoing an acceleration.</label>
              <br /><br />
            <label class="description">For tutorial on this topic, please visit:  <a href="https://www.youtube.com/">https://www.youtube.com/</a></label>
        </div>
        <div class="col-md-4">
            <div class="row">
                <div class="col-lg-6">
                    <label class="title">INPUT DETAILS:</label>   
                </div>
                <div class="col-lg-6">
                    <asp:Label ID="VelocityErrorLBL" runat="server" Text ="Error Message" CssClass="errorlabel"></asp:Label>
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
                        <label class="given">Velocity</label>
                    </div>
                    <div class="col-lg-5">
                        <asp:TextBox ID="VelocityTB" runat="server" CssClass="form-control" placeholder="Input Number"></asp:TextBox>
                        <ajaxToolkit:FilteredTextBoxExtender ID="VelocityFTBE" runat="server" TargetControlID="VelocityTB" FilterType="Custom, Numbers" ValidChars="." />
                    </div>
                    <div class="col-lg-4">
                        <asp:DropDownList ID="VelocityDDL" runat="server" CssClass="form-control">
                            <asp:ListItem Value ="m/s">m/s</asp:ListItem>
                            <asp:ListItem Value ="km/h">km/h</asp:ListItem>
                            <asp:ListItem Value ="mph">mph</asp:ListItem>
                            <asp:ListItem Value ="ft/s">ft/s</asp:ListItem>                    
                        </asp:DropDownList>
                    </div>
                </div>
            </div>                               
            <div class="row">
                <div class="pull-right">
                    <asp:button runat="server" id="VelocityBtn" CssClass="btn btn-primary linkLoad" Text="Calculate" OnClick="CalculateVelocity_Click"/>
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
                    <img src="Content/Images/VelocityFormula.png" class="formula3"/>
                </div>     
             
            <div class="row">
                <img src="Content/Images/VelocityFormula2.PNG" class="formula5" />         
            </div>
           </div> 
        </div>
    </div>
</asp:Content>
