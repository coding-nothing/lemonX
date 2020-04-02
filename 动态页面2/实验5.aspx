<%@ Page Language="C#" Debug="true" %>
<%@ import namespace=System.Data %>
<%@ import namespace=System.Data.OleDb %>
<html>
 <head>
 <meta charset="UTF-8">
  <title>ADO-test</title>
 </head>
 <body>
 <form runat="server">
 <p><asp:TextBox runat="server" id="otext"></asp:TextBox></p>
	<p>Studen Number:</p>
	<asp:TextBox  runat="server" id="onumber"></asp:TextBox>
	<p>Student Name:</p>
	<asp:TextBox runat="server" id="oname"></asp:TextBox>
	<p>Student Object:</p>
	<asp:TextBox runat="server" id="oobjects"></asp:TextBox>
	<p>Student Scale:</p>
	<asp:TextBox runat="server" id="oscale"></asp:TextBox>
 </form>
</body>
</html>
<script runat="server">
void Page_Load() {
	String strN=Request["inum"];
	String strConnection = "Provider=Microsoft.ACE.OLEDB.12.0;";
            strConnection += @"Data Source=E:\Database1.accdb";
	OleDbConnection Conn=new OleDbConnection(strConnection);
	Conn.Open();
	
	String str1="Select * from [Table1] where StNumber='"+strN+"'";
	OleDbCommand Comd= new OleDbCommand(str1,Conn);
	OleDbDataReader DR1= Comd.ExecuteReader();
	if(DR1.Read())
	{
			otext.Text="";
			onumber.Text=DR1["StNumber"].ToString();
		    oname.Text=DR1["StName"].ToString();
			oobjects.Text=DR1["StObjects"].ToString();
			oscale.Text=DR1["StScale"].ToString();
	}
	else 
			otext.Text="found nothing";	
	
}
</script>

