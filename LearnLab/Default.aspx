<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LearnLab._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <%--<div class="topicArea">--%>
    <div class="container">
        <div style="padding:20px">
            <div class ="row">
                <div class="col-md-4">
                    <center>
                    <asp:Button ID="topic1" runat="server" CssClass="topicbtn" PostBackUrl="Acceleration.aspx" Text="ACCELERATION"/>
                        </center>
                </div>
                <div class="col-md-4">
                    <center>
                    <asp:Button ID="topic2" runat="server" CssClass="topicbtn" PostBackUrl="VELOCITY.aspx" Text="VELOCITY"/>
                        </center>
                </div>
                <div class="col-md-4">
                    <center>
                    <asp:Button ID="topic3" runat="server"  CssClass="topicbtn"  PostBackUrl="FORCE.aspx" Text="FORCE"/>
                        </center>
                </div>
           </div>
        </div>
        <div style="padding:20px">
           <div class ="row">
               <div class="col-md-4">
                   <center>
                    <asp:Button ID="topic4" runat="server"  CssClass="topicbtn" PostBackUrl="DENSITY.aspx" Text="DENSITY"/>
                       </center>
                </div>
                <div class="col-md-4">
                    <center>
            <asp:Button ID="topic5" runat="server" CssClass="topicbtn" PostBackUrl="POWER.aspx" Text="POWER"/>
                        </center>
                     </div>
                <div class="col-md-4">
                    <center>
            <asp:Button ID="topic6" runat="server"  CssClass="topicbtn" PostBackUrl="Work.aspx" Text="WORK" />
                        </center>
                </div>
           </div>
        </div>
    </div>

</asp:Content>
