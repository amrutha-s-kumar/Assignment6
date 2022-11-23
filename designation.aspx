<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="designation.aspx.cs" Inherits="Assignment6.designation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>designation</title>
    <style>* {
    margin: 0
}

.container {
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    height: 100vh;
    background-color: #6699cc;
}

    .container h1 {
        color: white;
        font-family: sans-serif;
        margin: 20px;
    }

.designation {
    display: flex;
    justify-content: center;
    align-items: center;
    width: 600px;
    color: rgb(255, 255, 255);
    font-size: 18px;
    font-family: sans-serif;
    background-color: #154a68;
    padding: 20px;
}

  .designation input
     {
        border: none;
        padding: 5px;
        margin-top: 10px;
        font-family: sans-serif;
    }

        .designation input:focus
         {
            box-shadow: 3px 3px 10px rgb(228, 228, 228), -3px -3px 10px rgb(224, 224, 224);
        }

    .designation .submit {
        width: 100%;
        padding: 8px 0;
        font-size: 20px;
        color: rgb(44, 44, 44);
        background-color: #ffffff;
        border-radius: 5px;
    }

        .designation .submit:hover {
            box-shadow: 3px 3px 6px rgb(255, 214, 176);
        }
</style>
</head>
<body><div class="container">
     <h1><center>DESIGNATION REGISTRATION</center></h1> 
    <form id="form1" runat="server" class="designation">
          
        <div>
            <table align="center" class="auto-style1">


  
                
                 <tr>
                     
                         <td>Department Name :</td>
                     <td>
                         <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                     </td>
                 </tr>
                <tr>  
                    <td>Designation :</td>  
                    <td> 
                      <asp:TextBox ID="Designation" runat="server"></asp:TextBox>
                         
                    </td>  
                </tr>
                 
                        
                <tr>  
                    <td class="auto-style1">  
                      <center> <asp:Button   ID="Button1" runat="server" Text="SUBMIT" OnClick="Button1_Click"/>  </center> 
                    </td>  
                </tr>
                </table>
          
     
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="designationid" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                <Columns>
                    <asp:BoundField DataField="dept_name" HeaderText="Department" />
                    <asp:BoundField DataField="Designation_name" HeaderText="Designation" />
                    <asp:CommandField HeaderText="Update" ShowEditButton="True" />
                    <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                    <asp:HyperLinkField DataNavigateUrlFields="designationid" DataNavigateUrlFormatString="Design2.aspx?did={0}" HeaderText="Go to next page" Text="Go" />
                </Columns>
            </asp:GridView>
    </form>
   
     
</body>
</html>
