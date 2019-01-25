<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="$safeprojectname$.HEALTHY_DESERTS_RECEIPES" %>

<!DOCTYPE html>

<html>
<head>
	<meta content="charset=utf-8">
	<title>Блог о здоровой жизни</title>
	<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">
	<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script defer src="js/jquery.flexslider.js"></script>

	<script type="text/javascript">
		$(function () {
			SyntaxHighlighter.all();
		});
		$(window).load(function () {
			$('.flexslider').flexslider({
				animation: "slide",
				start: function (slider) {
					$('body').removeClass('loading');
				}
			});
		});
	</script>
	<link rel="stylesheet" href="css/styles.css" type="text/css">
	<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Oswald:400,300" type="text/css">
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
			<h1>Главная</h1>
		</div>
		<section class='qwerty'>
			<div id="container" class="cf">
				<div id="main" role="main">
					<section class="slider">
						<div class="flexslider">
							<ul class="slides">
								<li>
									<img src='img/1.jpg' />
								</li>
								<li>
									<img src="img/2.jpg" />
								</li>
								<li>
									<img src="img/3.jpg" />
								</li>
							</ul>
						</div>
					</section>
				</div>
			</div>
		</section>


		<!-- Форма обратной связи -->
		<section>
			<div>
				<h1 style="width: 100%">Обратная связь</h1>
				<div class="opacity">
					<form id="form1" runat="server">
						
						<table style="margin: auto; width: 210px; height: 100px;">
							<tr>
								<td>
									<asp:Label ID="Label4" runat="server" Text="ФИО" Font-Bold="True"
										Font-Size="12pt" ForeColor="#333399"></asp:Label></td>
								<td>
									<asp:TextBox ID="Name" runat="server" Width="416px" BackColor="#FFCCFF" Font-Size="14pt"></asp:TextBox>

								</td>
							</tr>
							<tr>
								<td>
									<asp:Label ID="Label5" runat="server" Text="Тема" Font-Bold="True"
										Font-Size="12pt" ForeColor="#333399"></asp:Label>

								</td>
								<td>
									<asp:TextBox ID="Subject" runat="server" Width="416px" BackColor="#FFCCFF" Font-Size="14pt"></asp:TextBox>

								</td>
							</tr>
							<tr>
								<td>
									<asp:Label ID="Label6" runat="server" Text="Сообщение" Font-Bold="True"
										Font-Size="12pt" ForeColor="#333399"></asp:Label></td>
								<td>
									<asp:TextBox ID="Message" runat="server" Width="433px" BackColor="#FFCCFF" BorderStyle="Dotted" ForeColor="Black" Height="214px" TextMode="MultiLine" Font-Size="14pt"></asp:TextBox></td>
							</tr>
							<tr>
								<td id="sent_email">
									<asp:Button ID="Button3" runat="server" Text="Отправить" Width="217px"
										Font-Bold="False" Font-Size="12pt" BackColor="#CCFFFF" ForeColor="Black" OnClick="Button3_Click" /></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</section>
	</div>
</body>
</html>
