<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MultiViewProject.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>MultiView ActiveIndex Example</title>

    <script runat="server">

        protected void NextButton_Command(object sender, EventArgs e)
        {
            // Determine which button was clicked
            // and set the ActiveViewIndex property to
            // the view selected by the user.
            if (DevPollMultiView.ActiveViewIndex > -1 & DevPollMultiView.ActiveViewIndex < 3)
            {
                // Increment the ActiveViewIndex property 
                // by one to advance to the next view.
                DevPollMultiView.ActiveViewIndex += 1;
            }
            else if (DevPollMultiView.ActiveViewIndex == 3)
            {
                // This is the final view.
                // The user wants to save the survey results.
                // Insert code here to save survey results.
                // Disable the navigation buttons.
                Page4Save.Enabled = false;
                Page4Restart.Enabled = false;
            }
            else
            {
                throw new Exception("An error occurred.");
            }
        }

        protected void BackButton_Command(object sender, EventArgs e)
        {
            if (DevPollMultiView.ActiveViewIndex > 0 & DevPollMultiView.ActiveViewIndex <= 2)
            {
                // Decrement the ActiveViewIndex property
                // by one to return to the previous view.
                DevPollMultiView.ActiveViewIndex -= 1;
            }
            else if (DevPollMultiView.ActiveViewIndex == 3)
            {
                // This is the final view.
                // The user wants to restart the survey.
                // Return to the first view.
                DevPollMultiView.ActiveViewIndex = 0;
            }
            else
            {
                throw new Exception("An error occurred.");
            }
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <h3>MultiView ActiveViewIndex</h3>

        <asp:Panel id="Page1ViewPanel"
            Width="330px"
            Height="150px"
            HorizpntalAlign="Left"
            Font-size="12" 
            BackColor="#C0C0FF" 
            BorderColor="#404040"
            BorderStyle="Double"                     
            runat="server"> 
           <asp:MultiView id="DevPollMultiView"
                ActiveViewIndex="0"
                runat="server">

                <asp:View id="Page1" 
                    runat="server">   

                    <asp:Label id="Page1Label" 
                        Font-bold="true"                         
                        Text="What kind of applications do you develop?"
                        runat="server"
                        AssociatedControlID="Page1">
                    </asp:Label><br /><br />

                    <asp:RadioButton id="Page1Radio1"
                         Text="Web Applications" 
                         Checked="False" 
                         GroupName="RadioGroup1" 
                         runat="server" >
                    </asp:RadioButton><br />

                    <asp:RadioButton id="Page1Radio2"
                         Text="Windows Forms Applications" 
                         Checked="False" 
                         GroupName="RadioGroup1" 
                         runat="server" >
                     </asp:RadioButton><br /><br /><br />                                       
                     
                    <asp:Button id="Page1Next"
                        Text = "Next"
                        OnClick="NextButton_Command"
                        Height="25"
                        Width="70"
                        runat= "server">
                    </asp:Button>
                </asp:View>

                <asp:View id="Page2" 
                    runat="server">

                    <asp:Label id="Page2Label" 
                        Font-bold="true"                        
                        Text="How long have you been a developer?"
                        runat="server"
                        AssociatedControlID="Page2">                    
                    </asp:Label><br /><br />

                    <asp:RadioButton id="Page2Radio1"
                         Text="Less than five years" 
                         Checked="False" 
                         GroupName="RadioGroup1" 
                         runat="server">
                     </asp:RadioButton><br />

                    <asp:RadioButton id="Page2Radio2"
                         Text="More than five years" 
                         Checked="False" 
                         GroupName="RadioGroup1" 
                         runat="server">
                     </asp:RadioButton><br /><br /><br />

                    <asp:Button id="Page2Back"
                        Text = "Previous"
                        OnClick="BackButton_Command"
                        Height="25"
                        Width="70"
                        runat= "server">
                    </asp:Button> 

                    <asp:Button id="Page2Next"
                        Text = "Next"
                        OnClick="NextButton_Command"
                        Height="25"
                        Width="70"
                        runat="server">
                    </asp:Button> 
                
                </asp:View>

                <asp:View id="Page3" 
                    runat="server">

                    <asp:Label id="Page3Label1" 
                        Font-bold="true"                        
                        Text= "What is your primary programming language?"                        
                        runat="server"
                        AssociatedControlID="Page3">                    
                    </asp:Label><br /><br />

                    <asp:RadioButton id="Page3Radio1"
                         Text="Visual Basic .NET" 
                         Checked="False" 
                         GroupName="RadioGroup1" 
                         runat="server">
                     </asp:RadioButton><br />

                    <asp:RadioButton id="Page3Radio2"
                         Text="C#" 
                         Checked="False" 
                         GroupName="RadioGroup1" 
                         runat="server">
                     </asp:RadioButton><br />

                    <asp:RadioButton id="Page3Radio3"
                         Text="C++" 
                         Checked="False" 
                         GroupName="RadioGroup1" 
                         runat="server">
                     </asp:RadioButton><br /><br />

                     <asp:Button id="Page3Back"
                        Text = "Previous"
                        OnClick="BackButton_Command"
                        Height="25"
                        Width="70"
                        runat="server">
                    </asp:Button> 

                    <asp:Button id="Page3Next"
                        Text = "Next"
                        OnClick="NextButton_Command"
                        Height="25"
                        Width="70"
                        runat="server">
                    </asp:Button><br />
                    
                </asp:View>     
            
                <asp:View id="Page4"
                    runat="server">
                    
                    <asp:Label id="Label1"
                        Font-bold="true"                                           
                        Text = "Thank you for taking the survey."
                        runat="server"
                        AssociatedControlID="Page4">
                    </asp:Label>
                    
                    <br /><br /><br /><br /><br /><br />              
                   
                    <asp:Button id="Page4Save"
                        Text = "Save Responses"
                        OnClick="NextButton_Command"
                        Height="25"
                        Width="110"
                        runat="server">
                    </asp:Button>
                
                    <asp:Button id="Page4Restart"
                        Text = "Retake Survey"
                        OnClick="BackButton_Command"
                        Height="25"
                        Width="110"
                        runat= "server">
                    </asp:Button>                    
                    
                </asp:View>  
       
            </asp:MultiView>
        
        </asp:Panel> 
    </form>
</body>
</html>
