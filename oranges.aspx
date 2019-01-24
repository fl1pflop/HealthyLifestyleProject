<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="oranges.aspx.cs" Inherits="$safeprojectname$.oranger" %>

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
			<h1>Апельсины</h1>
		</div>		
		<section>
		<div>
			<img src='img/44.jpg' alt='apple' width='962' height='150'>
			<div class='opacity'>
			<h3 class='hstyle'>Калорийность апельсина</h3>
				<p class='pstyle'>Калорийность апельсина составляет всего 36 ккал на 100 грамм продукта.</p>
				<h3 class='hstyle'>Состав и полезные свойства яблока</h3>
				<p class='pstyle'>В составе апельсина содержатся витамины (А, В1, В2, C, РР) и микроэлементы (магний, фосфор, натрий, калий, кальций и железо).
				<br>
				<br>Главное достоинство апельсина, как и всех цитрусовых – это витамин С. В 150 граммах апельсина содержится 80 мг аскорбиновой кислоты, которые покрывают суточную потребность человека в витамине С.
				<br>
				<br>Апельсины полезны для организма в целом и для пищеварительной, эндокринной, сердечно-сосудистой и нервной систем в частности. Апельсин благотворно влияет на заживление ран и нарывов. Действует успокаивающе, укрепляет нервы, благотворно влияет на деятельность центральной нервной системы.
				<br>
				<br>Сок апельсина содержит фитонциды. Этим объясняется его противовоспалительное и антимикробное действие. Сок апельсина – хорошее противоцинготное средство. Апельсиновый сок активизирует деятельность всех функций организма, улучшает обмен веществ, оказывает тонизирующий эффект. Он полезен больным сахарным диабетом. Рекомендуется при авитаминозах, усталости, упадке сил. Возбуждает аппетит, хорошо утоляет жажду, особенно при лихорадке.
				</p>
			</div>	
		</div>
		</section>		
	</div>	
</body>
</html>
