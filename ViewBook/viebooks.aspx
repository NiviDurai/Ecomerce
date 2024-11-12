<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viebooks.aspx.cs" Inherits="ViewBook.viebooks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>


            
            <p>&nbsp;</p>
            <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
            <p>
                <asp:GridView ID="gridviewbooks" runat="server" AutoGenerateColumns="False"  Height="231px" Width="953px" DataSourceID="SqlDataSource2" Visible="False" OnSelectedIndexChanged="gridviewbooks_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="Book_Id" HeaderText="Book_Id" SortExpression="Book_Id" />
                        <asp:BoundField DataField="Author1_Id" HeaderText="Author1_Id" SortExpression="Author1_Id" />
                        <asp:BoundField DataField="Author2_Id" HeaderText="Author2_Id" SortExpression="Author2_Id" />
                        <asp:BoundField DataField="Book_Name" HeaderText="Book_Name" SortExpression="Book_Name" />
                        <asp:BoundField DataField="Issue_date" HeaderText="Issue_date" ReadOnly="True" SortExpression="Issue_date" />
                        <asp:BoundField DataField="Return_date" HeaderText="Return_date" ReadOnly="True" SortExpression="Return_date" />
                        <asp:BoundField DataField="Auth_Name" HeaderText="Auth_Name" SortExpression="Auth_Name" Visible="False" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IRISPWCConnectionString2 %>" ProviderName="<%$ ConnectionStrings:IRISPWCConnectionString2.ProviderName %>" SelectCommand="Searchforborrow" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:SessionParameter Name="User_Id" SessionField="User_Id" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
            <p>
                &nbsp;</p>
        </div>
    </form>
</body>
</html>
