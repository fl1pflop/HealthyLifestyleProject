<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bananas.aspx.cs" Inherits="$safeprojectname$.bananas" %>

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
			<h1>Бананы</h1>
		</div>		
		<section>
		<div>
			<img src='img/33.jpg' alt='apple' width='962' height='150'>
			<div class='opacity'>			
				<p class='pstyle'>Банан – одно из самых древних культивируемых растений. Его родиной считаются острова Малайского архипелага, где, как полагают учёные, древние жители выращивали их и употребляли в пищу как дополнение к рыбной диете. Путешествуя по островам Тихого океана, они запасались известными им фруктами и таким образом способствовали распространению бананов.
				<br>
				<br>Индийцы называют банан райским фруктом, это сладкое лакомство пришло из Юго-Восточной Азии, действительно, из райских мест, кстати, жители этих стран до сих пор считают, что Адама и Еву змей искушал именно бананом.
				<br>
				<br>
				<h3 class='hstyle'>Калорийность банана</h3>
				<p class='pstyle'>Калорийность банана составляет 95 ккал на 100 грамм продукта.</p>
				<h3 class='hstyle'>Состав и полезные свойства яблока</h3>
				<p class='pstyle'>Бананы содержат некоторое количество витаминов, но главное их достоинство – калий. А также бананы содержат натуральные сахара – сахарозу, фруктозу и глюкозу вместе с клетчаткой.
				<br>Банан содержит белок триптофан, который превращается в серотонин. Серотонин улучшает настроение, помогает расслабиться, улучшить настроение и просто почувствовать себя счастливым.
				</p>
				</p>
			</div>	
		</div>
		</section>		
	</div>	
</body>
</html>
