<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="simple.aspx.cs" Inherits="registration.simple" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            text-align: center;
            font-size: x-large;
            font-family: "Courier New", Courier, monospace;
            color: #003366;
        }
        .auto-style4 {
            width: 96%;
            height: 724px;
            border: 1px solid #800000;
            background-color: #9999FF;
        }
        .auto-style5 {
            width: 216px;
            height: 47px;
        }
        .auto-style6 {
            width: 216px;
            font-family: "Courier New", Courier, monospace;
        }
        .auto-style7 {
            width: 216px;
            height: 33px;
        }
        .auto-style8 {
            height: 33px;
            width: 313px;
        }
        .auto-style9 {
            width: 216px;
            font-family: "Courier New", Courier, monospace;
            height: 36px;
        }
        .auto-style10 {
            height: 36px;
            width: 313px;
        }
        .auto-style12 {
            height: 36px;
            width: 339px;
        }
        .auto-style13 {
            width: 339px;
        }
        .auto-style14 {
            width: 339px;
            height: 33px;
        }
        .auto-style15 {
            width: 339px;
            height: 47px;
        }
        .auto-style16 {
            height: 47px;
            width: 313px;
        }
        .auto-style17 {
            width: 183px;
            font-family: "Courier New", Courier, monospace;
        }
        .auto-style18 {
            width: 183px;
            font-family: "Courier New", Courier, monospace;
            height: 36px;
        }
        .auto-style19 {
            width: 183px;
            height: 33px;
        }
        .auto-style20 {
            width: 183px;
            height: 47px;
        }
        .auto-style21 {
            width: 313px;
        }
    </style>
</head>
<body style="height: 840px">
    <form id="form1" runat="server">
    <div>
    
    </div>
        <div class="auto-style3">
            <strong>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:TravelExpertsConnectionString %>" DeleteCommand="DELETE FROM [Customers] WHERE [CustomerId] = @original_CustomerId AND [CustFirstName] = @original_CustFirstName AND [CustLastName] = @original_CustLastName AND [CustAddress] = @original_CustAddress AND [CustCity] = @original_CustCity AND [CustProv] = @original_CustProv AND [CustPostal] = @original_CustPostal AND (([CustCountry] = @original_CustCountry) OR ([CustCountry] IS NULL AND @original_CustCountry IS NULL)) AND (([CustHomePhone] = @original_CustHomePhone) OR ([CustHomePhone] IS NULL AND @original_CustHomePhone IS NULL)) AND [CustBusPhone] = @original_CustBusPhone AND [CustEmail] = @original_CustEmail AND (([AgentId] = @original_AgentId) OR ([AgentId] IS NULL AND @original_AgentId IS NULL)) AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL)) AND (([ConfirmPassword] = @original_ConfirmPassword) OR ([ConfirmPassword] IS NULL AND @original_ConfirmPassword IS NULL)) AND (([UserId] = @original_UserId) OR ([UserId] IS NULL AND @original_UserId IS NULL))" InsertCommand="INSERT INTO [Customers] ([CustFirstName], [CustLastName], [CustAddress], [CustCity], [CustProv], [CustPostal], [CustCountry], [CustHomePhone], [CustBusPhone], [CustEmail], [AgentId], [password], [ConfirmPassword], [UserId]) VALUES (@CustFirstName, @CustLastName, @CustAddress, @CustCity, @CustProv, @CustPostal, @CustCountry, @CustHomePhone, @CustBusPhone, @CustEmail, @AgentId, @password, @ConfirmPassword, @UserId)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Customers] ORDER BY [CustFirstName]" UpdateCommand="UPDATE [Customers] SET [CustFirstName] = @CustFirstName, [CustLastName] = @CustLastName, [CustAddress] = @CustAddress, [CustCity] = @CustCity, [CustProv] = @CustProv, [CustPostal] = @CustPostal, [CustCountry] = @CustCountry, [CustHomePhone] = @CustHomePhone, [CustBusPhone] = @CustBusPhone, [CustEmail] = @CustEmail, [AgentId] = @AgentId, [password] = @password, [ConfirmPassword] = @ConfirmPassword, [UserId] = @UserId WHERE [CustomerId] = @original_CustomerId AND [CustFirstName] = @original_CustFirstName AND [CustLastName] = @original_CustLastName AND [CustAddress] = @original_CustAddress AND [CustCity] = @original_CustCity AND [CustProv] = @original_CustProv AND [CustPostal] = @original_CustPostal AND (([CustCountry] = @original_CustCountry) OR ([CustCountry] IS NULL AND @original_CustCountry IS NULL)) AND (([CustHomePhone] = @original_CustHomePhone) OR ([CustHomePhone] IS NULL AND @original_CustHomePhone IS NULL)) AND [CustBusPhone] = @original_CustBusPhone AND [CustEmail] = @original_CustEmail AND (([AgentId] = @original_AgentId) OR ([AgentId] IS NULL AND @original_AgentId IS NULL)) AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL)) AND (([ConfirmPassword] = @original_ConfirmPassword) OR ([ConfirmPassword] IS NULL AND @original_ConfirmPassword IS NULL)) AND (([UserId] = @original_UserId) OR ([UserId] IS NULL AND @original_UserId IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_CustomerId" Type="Int32" />
                    <asp:Parameter Name="original_CustFirstName" Type="String" />
                    <asp:Parameter Name="original_CustLastName" Type="String" />
                    <asp:Parameter Name="original_CustAddress" Type="String" />
                    <asp:Parameter Name="original_CustCity" Type="String" />
                    <asp:Parameter Name="original_CustProv" Type="String" />
                    <asp:Parameter Name="original_CustPostal" Type="String" />
                    <asp:Parameter Name="original_CustCountry" Type="String" />
                    <asp:Parameter Name="original_CustHomePhone" Type="String" />
                    <asp:Parameter Name="original_CustBusPhone" Type="String" />
                    <asp:Parameter Name="original_CustEmail" Type="String" />
                    <asp:Parameter Name="original_AgentId" Type="Int32" />
                    <asp:Parameter Name="original_password" Type="String" />
                    <asp:Parameter Name="original_ConfirmPassword" Type="String" />
                    <asp:Parameter Name="original_UserId" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CustFirstName" Type="String" />
                    <asp:Parameter Name="CustLastName" Type="String" />
                    <asp:Parameter Name="CustAddress" Type="String" />
                    <asp:Parameter Name="CustCity" Type="String" />
                    <asp:Parameter Name="CustProv" Type="String" />
                    <asp:Parameter Name="CustPostal" Type="String" />
                    <asp:Parameter Name="CustCountry" Type="String" />
                    <asp:Parameter Name="CustHomePhone" Type="String" />
                    <asp:Parameter Name="CustBusPhone" Type="String" />
                    <asp:Parameter Name="CustEmail" Type="String" />
                    <asp:Parameter Name="AgentId" Type="Int32" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="ConfirmPassword" Type="String" />
                    <asp:Parameter Name="UserId" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CustFirstName" Type="String" />
                    <asp:Parameter Name="CustLastName" Type="String" />
                    <asp:Parameter Name="CustAddress" Type="String" />
                    <asp:Parameter Name="CustCity" Type="String" />
                    <asp:Parameter Name="CustProv" Type="String" />
                    <asp:Parameter Name="CustPostal" Type="String" />
                    <asp:Parameter Name="CustCountry" Type="String" />
                    <asp:Parameter Name="CustHomePhone" Type="String" />
                    <asp:Parameter Name="CustBusPhone" Type="String" />
                    <asp:Parameter Name="CustEmail" Type="String" />
                    <asp:Parameter Name="AgentId" Type="Int32" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="ConfirmPassword" Type="String" />
                    <asp:Parameter Name="UserId" Type="String" />
                    <asp:Parameter Name="original_CustomerId" Type="Int32" />
                    <asp:Parameter Name="original_CustFirstName" Type="String" />
                    <asp:Parameter Name="original_CustLastName" Type="String" />
                    <asp:Parameter Name="original_CustAddress" Type="String" />
                    <asp:Parameter Name="original_CustCity" Type="String" />
                    <asp:Parameter Name="original_CustProv" Type="String" />
                    <asp:Parameter Name="original_CustPostal" Type="String" />
                    <asp:Parameter Name="original_CustCountry" Type="String" />
                    <asp:Parameter Name="original_CustHomePhone" Type="String" />
                    <asp:Parameter Name="original_CustBusPhone" Type="String" />
                    <asp:Parameter Name="original_CustEmail" Type="String" />
                    <asp:Parameter Name="original_AgentId" Type="Int32" />
                    <asp:Parameter Name="original_password" Type="String" />
                    <asp:Parameter Name="original_ConfirmPassword" Type="String" />
                    <asp:Parameter Name="original_UserId" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Customer Registration Form</strong></div>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="registration.customer" DeleteMethod="DeleteCustomer" InsertMethod="AddCustomer" OldValuesParameterFormatString="original_{0}" SelectMethod="GetCustomer" TypeName="registration.CustomerDB" UpdateMethod="UpdateCustomer">
                <UpdateParameters>
                    <asp:Parameter Name="customer" Type="Object" />
                    <asp:Parameter Name="oldcustomer" Type="Object" />
                </UpdateParameters>
            </asp:ObjectDataSource>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblmsg" runat="server" AssociatedControlID="btnSave" Font-Bold="True" Font-Names="Calibri" ForeColor="#FF6600"></asp:Label>
                </p>
        <table align="center" cellpadding="5" cellspacing="4" class="auto-style4">
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style6"><strong>First Name:<br />
                    </strong></td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtFirstName" runat="server" Height="26px" Width="171px"></asp:TextBox>
                    &nbsp; &nbsp;</td>
                <td class="auto-style21">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" Display="Dynamic" ErrorMessage="First Name is required!!" Font-Bold="True" Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style6"><strong>Last Name:<br />
                    </strong></td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtLastName" runat="server" Height="27px" Width="171px"></asp:TextBox>
                </td>
                <td class="auto-style21">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" Display="Dynamic" ErrorMessage="Last  Name is Required!!" Font-Bold="True" Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style6"><strong>User Id:<br />
                    </strong></td>
                <td class="auto-style13">
                    <asp:TextBox ID="TxtUserId" runat="server" Height="26px" Width="171px"></asp:TextBox>
                </td>
                <td class="auto-style21">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtUserId" Display="Dynamic" ErrorMessage="UserId is Required!!" Font-Bold="True" Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style6"><strong>Password:<br />
                    </strong></td>
                <td class="auto-style13">
                    <asp:TextBox ID="TxtPassword" runat="server" Height="26px" Width="171px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style21">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtPassword" Display="Dynamic" ErrorMessage="Password is Required" Font-Bold="True" Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style6"><strong>Confirm Password:<br />
                    </strong></td>
                <td class="auto-style13">
                    <asp:TextBox ID="TxtConfimpass" runat="server" Height="26px" Width="171px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style21">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TxtConfimpass" Display="Dynamic" ErrorMessage="Confirm Password is Required!!" Font-Bold="True" Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                 <asp:CompareValidator ID="CompareValidator1" runat="server" 
     ControlToValidate="TxtConfimpass"
     CssClass="ValidationError"
     ControlToCompare="TxtPassword"
     ErrorMessage="Password Not Match!!" 
     ToolTip="Password must be the same" Font-Bold="True" Font-Italic="False" Font-Names="Calibri" ForeColor="Red" />
                </td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style6"><strong>Address:<br />
                    </strong></td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtAdd" runat="server" Height="26px" Width="172px"></asp:TextBox>
                </td>
                <td class="auto-style21">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtAdd" Display="Dynamic" ErrorMessage="Address is Required!!" Font-Bold="True" Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style6"><strong>City:<br />
                    </strong></td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtCity" runat="server" Height="26px" Width="171px"></asp:TextBox>
                </td>
                <td class="auto-style21">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtCity" Display="Dynamic" ErrorMessage="City is Required!!" Font-Bold="True" Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style6"><strong>Province:<br />
                    </strong></td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtProvince" runat="server" Height="26px" Width="170px"></asp:TextBox>
                </td>
                <td class="auto-style21">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtProvince" Display="Dynamic" ErrorMessage="Province is Required!!" Font-Bold="True" Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style9"><strong>PostalCode:<br />
                    </strong></td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtPostalcode" runat="server" Height="26px" Width="168px"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtPostalcode" Display="Dynamic" ErrorMessage="Postal Code is Required!!" Font-Bold="True" Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtPostalcode" Display="Dynamic" ErrorMessage="PostalCode is not in Canada or Us format!!" Font-Bold="True" Font-Names="Calibri" ForeColor="Red" ValidationExpression="[ABCEGHJKLMNPRSTVXY][0-9][ABCEGHJKLMNPRSTVWXYZ] ?[0-9][ABCEGHJKLMNPRSTVWXYZ][0-9]"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style6"><strong>Country:<br />
                    </strong></td>
                 <td class="auto-style12">
                    <asp:TextBox ID="txtCountry" runat="server" Height="26px" Width="170px"></asp:TextBox>
                </td>
                <td class="auto-style21">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtCountry" Display="Dynamic" ErrorMessage="Country is Required!!" Font-Bold="True" Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style6"><strong>Home Phone No:<br />
                    </strong></td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtHomePhone" runat="server" Height="26px" Width="170px"></asp:TextBox>
                </td>
                <td class="auto-style21">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtHomePhone" Display="Dynamic" ErrorMessage="Home Phone is Required!!" Font-Bold="True" Font-Names="Calibri" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter valid Phone number!!" ControlToValidate="txtHomePhone" ValidationExpression="^(01?(-?\d{3})-?)?(\d{3})(-?\d{4})$" Display="Dynamic" Font-Bold="True" Font-Names="Calibri" ForeColor="Red" ></asp:RegularExpressionValidator> 
                </td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style6"><strong>Business phone No:<br />
                    </strong></td>
                <td class="auto-style13" style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bold">
                    <asp:TextBox ID="txtBusphone" runat="server" Height="26px" Width="168px"></asp:TextBox>
                </td>
                <td class="auto-style21">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style6"><strong>Email:<br />
                    </strong></td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtEmail" runat="server" Height="26px" Width="171px"></asp:TextBox>
                </td>
                <td class="auto-style21">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20">
                    &nbsp;</td>
                <td class="auto-style5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnSave" runat="server" BackColor="#CC6699" Font-Bold="True" Font-Names="Calibri" Font-Size="Medium" ForeColor="#003366" OnClick="btnSave_Click" Text="Save" Width="89px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td class="auto-style16">
                    <asp:Button ID="btnReset" runat="server" BackColor="#CC6699" Font-Bold="True" Font-Names="Calibri" Font-Size="Medium" ForeColor="#003366" OnClick="btnReset_Click" Text="Reset" Width="78px" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
