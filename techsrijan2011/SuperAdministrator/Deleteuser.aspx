﻿<%@ Page Language="VB" MasterPageFile="~/SuperAdministrator/shashank.master" Title="Untitled Page" %>

<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
       

    End Sub

    Protected Sub gridview1_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles gridview1.RowDeleting
        Dim index As Integer = e.RowIndex
        Dim txt As String = gridview1.Rows(index).Cells(1).Text

        Membership.DeleteUser(txt)
        gridview1.DataSource() = Membership.GetAllUsers
        gridview1.DataBind()
    End Sub

    Protected Sub Page_PreRender(ByVal sender As Object, ByVal e As System.EventArgs)
        gridview1.DataSource() = Membership.GetAllUsers
        gridview1.DataBind()
    End Sub

    Protected Sub gridview1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs)
        gridview1.PageIndex = e.NewPageIndex
        gridview1.DataBind()
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="superadminhead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="superadminmaster" Runat="Server">
<div style="position:relative;top:70px;width:630px;">
<asp:Panel runat="server" ID="panel1" ScrollBars="Horizontal" Width="620px">
    <asp:GridView runat="server" id="gridview1" AutoGenerateColumns="false"  AllowSorting="true" AutoGenerateDeleteButton="true"   DataKeyNames="UserName" AllowPaging="true"  PageSize="10"  OnPageIndexChanging="gridview1_PageIndexChanging">
    <Columns >
    <asp:BoundField DataField="UserName" HeaderText="Username"  />
    <asp:BoundField DataField="Email" headertext="Email"/>
    <asp:BoundField Datafield="CreationDate" headertext="Creation date"/>
    <asp:BoundField DataField="LastLoginDate" headertext="Lastlogindate"/>
    <asp:BoundField DataField="LastActivityDate" headertext="lastactivitydate"/></Columns></asp:GridView>
    <br />
    <br />
    <br /><br /><br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    </asp:Panel> </div>
</asp:Content>

