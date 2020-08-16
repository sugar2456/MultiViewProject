<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="MultiViewProject.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="Form1" runat="server">

        <h3>MultiView Class Example</h3>

        <asp:MultiView ID="MultiView1"
            runat="Server">

            <asp:View ID="DefaultView"
                runat="Server">

                <asp:Panel ID="DefaultViewPanel"
                    Width="330px"
                    BackColor="#C0C0FF"
                    BorderColor="#404040"
                    BorderStyle="Double"
                    runat="Server">

                    <asp:Label ID="DefaultLabel1"
                        Font-Bold="true"
                        Font-Size="14"
                        Text="The Default View"
                        runat="Server"
                        AssociatedControlID="DefaultView">
                    </asp:Label>

                    <asp:BulletedList ID="DefaultBulletedList1"
                        BulletStyle="Disc"
                        DisplayMode="Hyperlink"
                        Target="_blank"
                        runat="Server">
                        <asp:ListItem Value="http://www.microsoft.com">Today's Weather</asp:ListItem>
                        <asp:ListItem Value="http://www.microsoft.com">Today's Stock Quotes</asp:ListItem>
                        <asp:ListItem Value="http://www.microsoft.com">Today's News Headlines</asp:ListItem>
                        <asp:ListItem Value="http://www.microsoft.com">Today's Featured Shopping</asp:ListItem>
                    </asp:BulletedList>

                    <hr />

                    <asp:Label ID="DefaultLabel2"
                        Font-Size="12"
                        Text="Click a link to display a different view:"
                        runat="Server">
                    </asp:Label><br />

                    <asp:LinkButton ID="Default_NewsLink"
                        Text="Go to News View"
                        OnCommand="LinkButton_Command"
                        CommandArgument="News"
                        CommandName="Link"
                        Width="150px"
                        runat="Server">
                    </asp:LinkButton>

                    <asp:LinkButton ID="Default_ShoppingLink"
                        Text="Go to Shopping View"
                        OnCommand="LinkButton_Command"
                        CommandArgument="Shopping"
                        CommandName="Link"
                        Width="150px"
                        runat="server">
                    </asp:LinkButton><br />
                    <br />

                </asp:Panel>

            </asp:View>

            <asp:View ID="NewsView"
                runat="Server">

                <asp:Panel ID="NewsPanel1"
                    Width="330px"
                    BackColor="#C0FFC0"
                    BorderColor="#404040"
                    BorderStyle="Double"
                    runat="Server">

                    <asp:Label ID="NewsLabel1"
                        Font-Bold="true"
                        Font-Size="14"
                        Text="The News View"
                        runat="Server"
                        AssociatedControlID="NewsView">                    
                    </asp:Label>

                    <asp:BulletedList ID="NewsBulletedlist1"
                        BulletStyle="Disc"
                        DisplayMode="Hyperlink"
                        Target="_blank"
                        runat="Server">
                        <asp:ListItem Value="http://www.microsoft.com">Today's International Headlines</asp:ListItem>
                        <asp:ListItem Value="http://www.microsoft.com">Today's National Headlines</asp:ListItem>
                        <asp:ListItem Value="http://www.microsoft.com">Today's Local News</asp:ListItem>
                    </asp:BulletedList>

                    <hr />

                    <asp:Label ID="NewsLabel2"
                        Font-Size="12"
                        Text="Click a link to display a different view:"
                        runat="Server">
                    </asp:Label><br />

                    <asp:LinkButton ID="News_DefaultLink"
                        Text="Go to the Default View"
                        OnCommand="LinkButton_Command"
                        CommandArgument="DefaultView"
                        CommandName="Link"
                        Width="150px"
                        runat="Server">
                    </asp:LinkButton>

                    <asp:LinkButton ID="News_ShoppingLink"
                        Text="Go to Shopping View"
                        OnCommand="LinkButton_Command"
                        CommandArgument="Shopping"
                        CommandName="Link"
                        Width="150px"
                        runat="Server">
                    </asp:LinkButton><br />
                    <br />

                </asp:Panel>

            </asp:View>

            <asp:View ID="ShoppingView"
                runat="Server">

                <asp:Panel ID="ShoppingPanel1"
                    Width="330px"
                    BackColor="#FFFFC0"
                    BorderColor="#404040"
                    BorderStyle="Double"
                    runat="Server">

                    <asp:Label ID="ShoppingLabel1"
                        Font-Bold="true"
                        Font-Size="14"
                        Text="The Shopping View"
                        runat="Server"
                        AssociatedControlID="ShoppingView">
                    </asp:Label>

                    <asp:BulletedList ID="ShoppingBulletedlist1"
                        BulletStyle="Disc"
                        DisplayMode="Hyperlink"
                        Target="_blank"
                        runat="Server">
                        <asp:ListItem Value="http://www.microsoft.com">Shop for Home and Garden </asp:ListItem>
                        <asp:ListItem Value="http://www.microsoft.com">Shop for Women's Fashions</asp:ListItem>
                        <asp:ListItem Value="http://www.microsoft.com">Shop for Men's Fashions</asp:ListItem>
                    </asp:BulletedList>

                    <hr />

                    <asp:Label ID="ShoppingLabel2"
                        Font-Size="12"
                        Text="Click a link to display a different view:"
                        runat="Server">
                    </asp:Label><br />

                    <asp:LinkButton ID="Shopping_DefaultLink"
                        Text="Go to the Default View"
                        OnCommand="LinkButton_Command"
                        CommandArgument="DefaultView"
                        CommandName="Link"
                        Width="150px"
                        runat="Server">
                    </asp:LinkButton>

                    <asp:LinkButton ID="Shopping_NewsLink"
                        Text="Go to News View"
                        OnCommand="LinkButton_Command"
                        CommandArgument="News"
                        CommandName="Link"
                        Width="150px"
                        runat="Server">
                    </asp:LinkButton><br />
                    <br />

                </asp:Panel>

            </asp:View>

        </asp:MultiView>

    </form>
</body>
</html>
