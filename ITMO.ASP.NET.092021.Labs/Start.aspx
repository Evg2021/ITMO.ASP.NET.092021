﻿<%@ Page Title="" MasterPageFile="~/Site.master" Language="C#" AutoEventWireup="true" CodeBehind="Start.aspx.cs" Inherits="ITMO.ASP.NET._092021.Labs.Start" %>

<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">--%>
<%--<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="Styles.css" />
</head>
<body>
    <form id="form1" runat="server">--%>
<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
            <div class="rek">
              <h1>Приглашение на семинар<asp:ScriptManager ID="ScriptManager1" runat="server">
                  </asp:ScriptManager>
                </h1>
                   <p>Вы приглашены на наш семинар</p>
                   <p>Подтвердите свое согласие, пройдя регистрацию</p>
             </div>
             <div class="info">
                Семинар состоится 1 января 2020 года в 7.30
             </div>
        </div>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Timer runat="server" Interval="1000"></asp:Timer>
            <%
                DateTime dataseminar = new DateTime(2018,1,1,7,30,0);
                DateTime dnow = DateTime.Now;
                int rd = (dataseminar - dnow).Days;
                int rm = (dataseminar - dnow).Minutes;
                int rsec = (dataseminar - dnow).Seconds;
             %>
                <h3>До семинара осталось <%=rd.ToString()%> дн., <%=rm.ToString()%> мин. и
             <%=rsec.ToString()%> с.</h3>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
        
<%--    </form>
</body>
</html>--%>