<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BJU_products.aspx.cs" Inherits="$safeprojectname$.BJU_products" %>

<!DOCTYPE html>

<html>
<head>
	<meta content="charset=utf-8">
	<title>Блог о здоровой жизни</title>
	<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">
	<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />


	<link rel="stylesheet" href="css/styles1_new.css" type="text/css">
	<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Oswald:400,300" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Cormorant+Unicase|EB+Garamond" rel="stylesheet">
</head>
<body>
	<div id="wrapper">
		<header>
			<nav>
				<ul>
					<li class="active"><a href='Default.aspx'>Главная</a></li>
					<li class='dropdown'>
						<a href="#" class='dropbtn'>Здоровая еда</a>
						<div class='dropdown-content'>
							<a href='apples.aspx'>Яблоки</a>
							<a href='bananas.aspx'>Бананы</a>
							<a href='oranges.aspx'>Апельсины</a>
						</div>
					</li>
					<li><a href="calorific_value.aspx">Расчёт калорий</a></li>
					<li><a href="important_information.aspx">Важная информация</a></li>
					<li><a href="BJU_products.aspx">БЖУ продуктов</a></li>
					<li><a href="Login.aspx">Вход</a></li>
				</ul>
			</nav>
		</header>
		<div id="heading">
			<h1>Ваша личная таблица продуктов питания</h1>
		</div>

		<form id="form1" runat="server">
			<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
			<div>
				<table id="tab" style="margin: auto; width: 90%; border: 1px solid Black;">
					<tr style="font-weight: bold; text-align: center;">
						<td style="width: 50%;">Наименование</td>
						<td style="width: 10%;">Белки, г</td>
						<td style="width: 10%;">Жиры, г</td>
						<td style="width: 10%;">Углеводы, г</td>
						<td style="width: 20%;">Калорийность, ккал</td>
					</tr>
					<%foreach ($safeprojectname$.bju_items row in GetData())
						{
							Response.Write(String.Format(@"
							<tr style='text-align:center;'>
								<td style='border: solid 1px Black'>{0}</td>
								<td style='border: solid 1px Black'>{1}</td>
								<td style='border: solid 1px Black'>{2}</td>
								<td style='border: solid 1px Black'>{3}</td>
								<td style='border: solid 1px Black'>{4}</td>
							</tr>					
						", row.name, row.b, row.j, row.u, row.kal));
						}
					%>
				</table>
			</div>

			<div class="opacity" style="margin: auto; width: 90%;">
				<asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Width="100%" BackColor="White">
					<Columns>
						<asp:BoundField DataField="id" HeaderText="№" ReadOnly="True" SortExpression="id" />
						<asp:BoundField DataField="name" HeaderText="Наименование" SortExpression="name" />
						<asp:BoundField DataField="b" HeaderText="Белки, г" SortExpression="b" />
						<asp:BoundField DataField="j" HeaderText="Жиры, г" SortExpression="j" />
						<asp:BoundField DataField="u" HeaderText="Углеводы, г" SortExpression="u" />
						<asp:BoundField DataField="kal" HeaderText="Каллорийность, ккал" SortExpression="kal" />
						<asp:CommandField DeleteText="Удалить" EditText="Изменить" ShowDeleteButton="True" ShowEditButton="True" />
					</Columns>
				</asp:GridView>
				<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" DeleteCommand="DELETE FROM [bju] WHERE [id] = @id" InsertCommand="INSERT INTO [bju] ([id], [name], [b], [j], [u], [kal]) VALUES (@id, @name, @b, @j, @u, @kal)" SelectCommand="SELECT * FROM [bju]" UpdateCommand="UPDATE [bju] SET [name] = @name, [b] = @b, [j] = @j, [u] = @u, [kal] = @kal WHERE [id] = @id">
					<DeleteParameters>
						<asp:Parameter Name="id" Type="Int32" />
					</DeleteParameters>
					<InsertParameters>
						<asp:Parameter Name="id" Type="Int32" />
						<asp:Parameter Name="name" Type="String" />
						<asp:Parameter Name="b" Type="Decimal" />
						<asp:Parameter Name="j" Type="Decimal" />
						<asp:Parameter Name="u" Type="Decimal" />
						<asp:Parameter Name="kal" Type="Int32" />
					</InsertParameters>
					<UpdateParameters>
						<asp:Parameter Name="name" Type="String" />
						<asp:Parameter Name="b" Type="Decimal" />
						<asp:Parameter Name="j" Type="Decimal" />
						<asp:Parameter Name="u" Type="Decimal" />
						<asp:Parameter Name="kal" Type="Int32" />
						<asp:Parameter Name="id" Type="Int32" />
					</UpdateParameters>
				</asp:SqlDataSource>

				<table style="margin: auto; width: 100%; border: 1px solid Black;">
					<tr>
						<td style="width: 50%; margin-top: 15px; padding-top: 15px;">
							<asp:Label ID="Label1" runat="server" Text="Наименование:"></asp:Label>
							<asp:TextBox ID="TextBox1" runat="server" Width="50%" BackColor="White" ForeColor="Black"></asp:TextBox>
						</td>
						<td style="width: 10%; margin-top: 5px;">
							<asp:Label ID="Label2" runat="server" Text="Белки:"></asp:Label>
							<asp:TextBox ID="TextBox2" runat="server" Width="50%" BackColor="White" ForeColor="Black"></asp:TextBox>
						</td>
						<td style="width: 10%; margin-top: 5px;">
							<asp:Label ID="Label3" runat="server" Text="Жиры:"></asp:Label>
							<asp:TextBox ID="TextBox3" runat="server" Width="50%" BackColor="White" ForeColor="Black"></asp:TextBox>
						</td>
						<td style="width: 10%; margin-top: 5px;">
							<asp:Label ID="Label4" runat="server" Text="Углеводы:"></asp:Label>
							<asp:TextBox ID="TextBox4" runat="server" Width="50%" BackColor="White" ForeColor="Black"></asp:TextBox>
						</td>
						<td style="width: 20%; margin-top: 5px;">
							<asp:Label ID="Label5" runat="server" Text="Калорийность:"></asp:Label>
							<asp:TextBox ID="TextBox5" runat="server" Width="50%" BackColor="White" ForeColor="Black"></asp:TextBox>
						</td>
					</tr>
					<tr>
						<td>
							<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Добавить" Width="203px" />
						</td>
					</tr>
				</table>
			</div>
		</form>
	</div>
</body>
</html>
