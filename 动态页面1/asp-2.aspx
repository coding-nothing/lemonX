<%@ Page Language="C#" %>
<script runat="server">
	void Page_Load()
	{
	String XM1=Request["XM"];
	String sexual1=Request["sexual"];
	T1.Text=XM1;
    T2.Text=sexual1;
	}	
</script>
<html>
<head>EX5</head>
<body>
<form runat="server">
<p>收集用户数据：</p><hr>
<p>姓名：<asp:TextBox id="T1" runat="server"/></p>
<p>性别：<asp:TextBox id="T2" runat="server"/></p>
</form>
</body>
</html>
