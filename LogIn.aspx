<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="$safeprojectname$.Login" %>

<!DOCTYPE html>

<html>
<head>
	<meta content="charset=utf-8">
	<title>Блог о здоровой жизни</title>
	<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">
	<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />


	<link rel="stylesheet" href="css/styles1.css" type="text/css">
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
			<h1>Войти</h1>
		</div>
		<div class="opacity">
			<form id="form1" runat="server">
				<div class="login">
					<table style="margin: auto; width: 210px; height: 100px;">
						<tr>
							<td>
								<asp:Label ID="Label1" runat="server" Text="Логин" Font-Bold="True"
									Font-Size="12pt" ForeColor="White"></asp:Label>
							</td>
							<td>
								<asp:TextBox ID="TextBox1" runat="server" ForeColor="Black"></asp:TextBox>
							</td>
						</tr>

						<tr>
							<td>
								<asp:Label ID="Label2" runat="server" Text="Пароль" Font-Bold="True"
									Font-Size="12pt" ForeColor="White"></asp:Label>
							</td>
							<td>
								<asp:TextBox ID="TextBox2" runat="server" ForeColor="Black"></asp:TextBox>
							</td>
						</tr>

						<tr>
							<td colspan="2" align="center">
								<asp:Button ID="Button1" runat="server" Text="Войти" Width="100px"
									Font-Bold="True" Font-Size="12pt" OnClick="Button1_Click" />
								<asp:Button ID="Button2" runat="server" Text="Отправить" Width="100px"
									Font-Bold="True" Font-Size="12pt" OnClick="Button2_Click" />
							</td>
						</tr>
					</table>
					<div style="text-align: center;">
						<asp:Label ID="Label3" runat="server" Font-Size="12pt" ForeColor="White"></asp:Label>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>

