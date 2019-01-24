<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="calorific_value.aspx.cs" Inherits="$safeprojectname$.calorific_value" %>

<!DOCTYPE html>

<html>
<head>	
	<meta content="charset=utf-8">
	<title>Блог о здоровой жизни</title>
	<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">
	<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
	
  
	<link rel="stylesheet" href="css/styles2.css" type="text/css">
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
			<h1>Калькулятор калорий</h1>
		</div>		
		<section>
		<div class='opacity'>
					<form id="frm1" action="form_action.asp">
						<label for='рост'>Введите рост:</label><input type="text" id="rost" name="рост" value=""><br>
						<label for='вес'>Введите вес:</label><input type="text" id="ves" name="вес" value=""><br>		
						<label for='возраст'>Введите возраст:</label><input type="text" id="vozrast" name="возраст" value=""><br>						
					</form> 
					<button onclick="myFunction()">Посчитать</button>

	`				<p id="demo"></p>

							<script>
							function myFunction() {
								var x = document.forms["frm1"];
								var text = "";
								var a=x.rost.value*1.8,
								b=x.ves.value*9.6,
								c=x.vozrast.value*4.7;
								text=(655+a+b-c)*1.4-500;													
								document.getElementById("demo").innerHTML = "Ваша норма потребления в день = "+
								text+" ккал";
							}
							</script>
		</div>
		</section>		
	</div>	
</body>
</html>
