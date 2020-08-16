<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="MultiViewProject.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>MultiView Class Example</title>
</head>
<body>
    <form id="Form1" runat="server">
        
        <h3>MultiView Class Example</h3>
        
        <h4>Select a View to display in a MultiView control:</h4>

        <asp:ListBox id="ViewListBox" 
            Rows="1"
            SelectionMode="Single"
            AutoPostBack="True"
            OnselectedIndexChanged="Index_Changed"
            runat="Server">             
                <asp:ListItem Value="0">View1</asp:ListItem>
                <asp:ListItem Value="1">View2</asp:ListItem>
                <asp:ListItem Value="2">View3</asp:ListItem>
        </asp:ListBox><br /><br />
       
        <hr />

        <asp:MultiView id="MultiView1"
            runat="Server">

            <asp:View id="View1" 
                runat="Server">              
                    <asp:Label id="View1Label" 
                        Font-bold="true"
                        Font-size="14" 
                        Text="This is the content for View1."
                        runat="Server"
                        AssociatedControlID="View1">
                    </asp:Label>               
            </asp:View>
            
            <asp:View id="View2" 
                runat="Server">              
                    <asp:Label id="View2Label" 
                        Font-bold="true"
                        Font-size="14" 
                        Text="This is the content for View2."
                        runat="Server"
                        AssociatedControlID="View2">
                    </asp:Label>               
            </asp:View>
            
            <asp:View id="View3" 
                runat="Server">              
                    <asp:Label id="View3Label" 
                        Font-bold="true"
                        Font-size="14" 
                        Text="This is the content for View3."
                        runat="Server"
                        AssociatedControlID="View3">
                    </asp:Label>               
            </asp:View>

        </asp:MultiView>

    </form>
</body>
</html>
