<?php
session_start();
?>

<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Атрибутика</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        ::-webkit-scrollbar {
            width: 0;
        }
        body, html {
            height: 100%;
            margin: 0;
            padding: 0;
            font-family: 'Roboto', sans-serif;
            scroll-behavior: smooth;
        }
        body {
            display: flex;
            flex-direction: column;
            background-image: url('dda4e004-aaf9-40be-829f-8c4ed9e5e4e1.webp');
            background-repeat: no-repeat;
            background-size: cover;
            background-attachment: fixed;
            color: #333;
        }
        .content-wrapper {
            flex: 1;
            display: flex;
            flex-direction: column;
        }
        .navbar {
            background-color: rgba(0, 0, 0, 0.7) !important;
            padding: 15px 0;
            transition: background-color 0.3s ease;
        }
        .navbar-brand, .navbar-nav .nav-link {
            color: white !important;
            font-weight: 700;
            letter-spacing: 0.5px;
            transition: color 0.3s ease;
        }
        .navbar-nav .nav-link:hover {
            color: #D8D9E9 !important;
        }
        .content {
            padding-top: 160px; /* Отступ от хедера */
            padding-bottom: 60px;
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 15px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
            margin-bottom: 40px;
            flex-grow: 1;
            animation: fadeIn 1s ease-in-out;
        }
        .banner {
            background: linear-gradient(to right, rgba(0, 123, 255, 0.5), rgba(0, 198, 255, 0.5)), url('fitness-banner.jpg') no-repeat center center;
            background-size: cover;
            color: white;
            text-align: center;
            padding: 60px 20px;
            margin-bottom: 20px;
            border-radius: 15px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
            position: relative;
            animation: fadeIn 1s ease-in-out;
            overflow: hidden;
        }
        .banner::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            border-radius: 15px;
            transition: background 0.3s ease;
        }
        .banner:hover::before {
            background: rgba(0, 0, 0, 0.7);
        }
        .banner h1, .banner p {
            position: relative;
            z-index: 1;
            margin: 0;
            padding: 0;
        }
        .banner h1 {
            font-size: 3em;
            margin-bottom: 10px;
            font-weight: 700;
            letter-spacing: 1px;
            animation: fadeInUp 1s ease-in-out;
        }
        .banner p {
            font-size: 1.5em;
            font-weight: 500;
            animation: fadeInUp 1.5s ease-in-out;
        }
        .banner-icons {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }
        .banner-icons i {
            font-size: 2em;
            margin: 0 10px;
            color: #fff;
            transition: transform 0.3s ease, color 0.3s ease;
        }
        .banner-icons i:hover {
            transform: scale(1.2);
            color: #00c6ff;
        }
        h1.section-title, h2.section-title {
            text-align: center;
            font-size: 2.5em;
            font-weight: 700;
            margin-top: 40px;
            margin-bottom: 30px;
            position: relative;
            display: inline-block;
            animation: fadeInUp 1s ease-in-out;
        }
        .section-title::after {
            content: '';
            position: absolute;
            width: 50px;
            height: 5px;
            background: #007bff;
            left: 50%;
            transform: translateX(-50%);
            bottom: -10px;
        }
        .card-container {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
        }
        .card {
            margin: 15px;
            border: none;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            width: 300px;
            display: flex;
            flex-direction: column;
            animation: fadeInUp 0.5s ease-in-out;
        }
        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.25);
        }
        .card-img-top {
            height: 220px;
            object-fit: cover;
            transition: transform 0.3s ease;
        }
        .card:hover .card-img-top {
            transform: scale(1.05);
        }
        .card-body {
            padding: 20px;
            flex-grow: 1;
            display: flex;
            flex-direction: column;
            animation: fadeInUp 0.5s ease-in-out;
        }
        .card-title {
            font-size: 1.5em;
            font-weight: 700;
            margin-bottom: 10px;
        }
        .card-text {
            font-size: 1em;
            margin-bottom: 15px;
            flex-grow: 1;
        }
        .btn-primary {
            background: linear-gradient(to right, #007bff, #00c6ff);
            border: none;
            padding: 10px 20px;
            font-size: 1em;
            font-weight: 700;
            transition: background 0.3s ease;
        }
        .btn-primary:hover {
            background: linear-gradient(to right, #0056b3, #007bff);
        }
        .reviews {
            margin-top: 20px;
        }
        .reviews h5 {
            font-size: 1em;
            font-weight: 700;
            margin-bottom: 10px;
        }
        .reviews p {
            font-size: 0.9em;
            margin-bottom: 5px;
        }
        .reviews .review {
            display: none;
        }
        .reviews .review.active {
            display: block;
        }
        .popular-section {
            margin-top: 60px;
        }
        .popular-section h2 {
            margin-bottom: 30px;
            font-size: 2.5em;
            font-weight: 700;
            text-align: center;
        }
        .card-divider {
            height: 1px;
            background-color: #ddd;
            margin: 30px 0;
        }
        footer {
            background-color: #343a40;
            color: white;
            text-align: center;
            padding: 20px 0;
            flex-shrink: 0;
        }
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        .parallax {
            background-attachment: fixed;
        }
    </style>
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</head>
<body>
    <nav class="navbar navbar-expand-md navbar-light fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#">Фитнес клуб</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item"><a class="nav-link" href="index.php">Главная</a></li>
                    <li class="nav-item"><a class="nav-link" href="zapis.php">Расписание</a></li>
                    <li class="nav-item"><a class="nav-link" href="groupclasses.php">Групповые программы</a></li>
                    <li class="nav-item"><a class="nav-link" href="trainers.php">Тренеры</a></li>
                    <li class="nav-item"><a class="nav-link" href="vakancii.php">Вакансии</a></li>
                    <li class="nav-item"><a class="nav-link" href="atributika.php">Атрибутика</a></li>
                    <?php if (isset($_SESSION['user_id'])): ?>
                        <li class="nav-item"><a class="nav-link" href="profile.php">Личный кабинет</a></li>
                        <li class="nav-item"><a class="nav-link" href="logout.php">Выход</a></li>
                    <?php else: ?>
                        <li class="nav-item"><a class="nav-link" href="personal_cabinet.php">Войти</a></li>
                    <?php endif; ?>
                </ul>
            </div>
        </div>
    </nav>

    <div class="content-wrapper">
        <div class="container mt-5">
            <div class="banner parallax">
                <h1>Атрибутика</h1>
                <p>Лучшие товары для вашего фитнеса</p>
                <div class="banner-icons">
                    <i class="fas fa-dumbbell"></i>
                    <i class="fas fa-running"></i>
                    <i class="fas fa-heartbeat"></i>
                </div>
            </div>
        </div>

        <div class="content container">
            <h1 class="section-title">Одежда</h1>
            <div class="card-container">
                <div class="card">
                    <img src="майка.webp" class="card-img-top" alt="Майка тренировочная">
                    <div class="card-body">
                        <h5 class="card-title">Майка тренировочная</h5>
                        <p class="card-text">Цена: 1200 руб.</p>
                        <p class="card-text">Легкая и удобная майка из дышащего материала. Идеальна для занятий спортом. Отличная майка, очень удобная!</p>
                        <form method="post" action="buy_item.php">
                            <input type="hidden" name="item" value="Майка тренировочная">
                            <input type="hidden" name="price" value="1200">
                            <button type="submit" class="btn btn-primary mt-auto">Купить</button>
                        </form>
                    </div>
                </div>
                <div class="card">
                    <img src="МайкаГриша.webp" class="card-img-top" alt="Футболка с логотипом клуба">
                    <div class="card-body">
                        <h5 class="card-title">Футболка с логотипом клуба</h5>
                        <p class="card-text">Цена: 1500 руб.</p>
                        <p class="card-text">Стильная футболка с логотипом клуба. Отлично подходит как для тренировок, так и для повседневной носки. Классная футболка, нравится дизайн!</p>
                        <form method="post" action="buy_item.php">
                            <input type="hidden" name="item" value="Футболка с логотипом клуба">
                            <input type="hidden" name="price" value="1500">
                            <button type="submit" class="btn btn-primary mt-auto">Купить</button>
                        </form>
                    </div>
                </div>
                <div class="card">
                    <img src="кофтагриша.webp" class="card-img-top" alt="Толстовка с логотипом фитнес-клуба">
                    <div class="card-body">
                        <h5 class="card-title">Толстовка с логотипом фитнес-клуба</h5>
                        <p class="card-text">Цена: 2500 руб.</p>
                        <p class="card-text">Удобная и стильная толстовка с логотипом фитнес-клуба. Идеально подходит для тренировок и повседневной носки. Отличная толстовка, очень удобная!</p>
                        <form method="post" action="buy_item.php">
                            <input type="hidden" name="item" value="Толстовка с логотипом фитнес-клуба">
                            <input type="hidden" name="price" value="2500">
                            <button type="submit" class="btn btn-primary mt-auto">Купить</button>
                        </form>
                    </div>
                </div>
            </div>

            <div class="card-divider"></div>

            <h2 class="section-title">Спортивное Питание</h2>
            <div class="card-container">
                <div class="card">
                    <img src="прот.webp" class="card-img-top" alt="Сывороточный протеин">
                    <div class="card-body">
                        <h5 class="card-title">Сывороточный протеин</h5>
                        <p class="card-text">Цена: 2500 руб. за 1 кг</p>
                        <p class="card-text">Высококачественный сывороточный протеин для быстрого восстановления и роста мышц. Отличный протеин, хорошо растворяется.</p>
                        <form method="post" action="buy_item.php">
                            <input type="hidden" name="item" value="Сывороточный протеин">
                            <input type="hidden" name="price" value="2500">
                            <button type="submit" class="btn btn-primary mt-auto">Купить</button>
                        </form>
                    </div>
                </div>
                <div class="card">
                    <img src="прот2.webp" class="card-img-top" alt="Казеиновый протеин">
                    <div class="card-body">
                        <h5 class="card-title">Казеиновый протеин</h5>
                        <p class="card-text">Цена: 2300 руб. за 1 кг</p>
                        <p class="card-text">Медленно усваиваемый протеин для поддержания уровня аминокислот. Отличный для восстановления, рекомендую.</p>
                        <form method="post" action="buy_item.php">
                            <input type="hidden" name="item" value="Казеиновый протеин">
                            <input type="hidden" name="price" value="2300">
                            <button type="submit" class="btn btn-primary mt-auto">Купить</button>
                        </form>
                    </div>
                </div>
                <div class="card">
                    <img src="бса.webp" class="card-img-top" alt="BCAA">
                    <div class="card-body">
                        <h5 class="card-title">BCAA</h5>
                        <p class="card-text">Цена: 2000 руб. за 500 г</p>
                        <p class="card-text">BCAA для быстрого восстановления мышц и повышения выносливости. Отличное качество, быстро восстанавливает силы.</p>
                        <form method="post" action="buy_item.php">
                            <input type="hidden" name="item" value="BCAA">
                            <input type="hidden" name="price" value="2000">
                            <button type="submit" class="btn btn-primary mt-auto">Купить</button>
                        </form>
                    </div>
                </div>
            </div>

            <div class="card-divider"></div>
            
            <h2 class="section-title">Аксессуары</h2>
            <div class="card-container">
                <div class="card">
                    <img src="вода.webp" class="card-img-top" alt="Спортивная бутылка для воды">
                    <div class="card-body">
                        <h5 class="card-title">Спортивная бутылка для воды</h5>
                        <p class="card-text">Цена: 500 руб.</p>
                        <p class="card-text">Эргономичная бутылка для воды, удобная для использования в тренажерном зале. Удобная бутылка, не протекает.</p>
                        <form method="post" action="buy_item.php">
                            <input type="hidden" name="item" value="Спортивная бутылка для воды">
                            <input type="hidden" name="price" value="500">
                            <button type="submit" class="btn btn-primary mt-auto">Купить</button>
                        </form>
                    </div>
                </div>
                <div class="card">
                    <img src="перчатки.webp" class="card-img-top" alt="Тренировочные перчатки">
                    <div class="card-body">
                        <h5 class="card-title">Тренировочные перчатки</h5>
                        <p class="card-text">Цена: 800 руб.</p>
                        <p class="card-text">Перчатки для защиты рук и улучшения хвата при силовых тренировках. Очень удобные перчатки, хорошее качество.</p>
                        <form method="post" action="buy_item.php">
                            <input type="hidden" name="item" value="Тренировочные перчатки">
                            <input type="hidden" name="price" value="800">
                            <button type="submit" class="btn btn-primary mt-auto">Купить</button>
                        </form>
                    </div>
                </div>
                <div class="card">
                    <img src="резинка.webp" class="card-img-top" alt="Резинка для фитнеса">
                    <div class="card-body">
                        <h5 class="card-title">Резинка для фитнеса</h5>
                        <p class="card-text">Цена: 400 руб.</p>
                        <p class="card-text">Резинка для фитнеса с высоким сопротивлением. Идеальна для домашних тренировок. Отлично подходит для тренировок дома.</p>
                        <form method="post" action="buy_item.php">
                            <input type="hidden" name="item" value="Резинка для фитнеса">
                            <input type="hidden" name="price" value="400">
                            <button type="submit" class="btn btn-primary mt-auto">Купить</button>
                        </form>
                    </div>
                </div>
            </div>

            <div class="card-divider"></div>

            <h2 class="section-title">Популярные товары</h2>
            <div class="card-container">
                <div class="card">
                    <img src="часы.webp" class="card-img-top" alt="Популярный товар 1">
                    <div class="card-body">
                        <h5 class="card-title">Популярный товар 1</h5>
                        <p class="card-text">Цена: 2000 руб.</p>
                        <p class="card-text">Эти часы отлично подходят для тренировки и повседневной жизни.</p>
                        <form method="post" action="buy_item.php">
                            <input type="hidden" name="item" value="Популярный товар 1">
                            <input type="hidden" name="price" value="2000">
                            <button type="submit" class="btn btn-primary mt-auto">Купить</button>
                        </form>
                    </div>
                </div>
                <div class="card">
                    <img src="наушники.webp" class="card-img-top" alt="Популярный товар 2">
                    <div class="card-body">
                        <h5 class="card-title">Популярный товар 2</h5>
                        <p class="card-text">Цена: 7800 руб.</p>
                        <p class="card-text">Эти наушники обеспечат вам отличное качество звука и комфорт.</p>
                        <form method="post" action="buy_item.php">
                            <input type="hidden" name="item" value="Популярный товар 2">
                            <input type="hidden" name="price" value="7800">
                            <button type="submit" class="btn btn-primary mt-auto">Купить</button>
                        </form>
                    </div>
                </div>
                <div class="card">
                    <img src="часики.webp" class="card-img-top" alt="Популярный товар 3">
                    <div class="card-body">
                        <h5 class="card-title">Популярный товар 3</h5>
                        <p class="card-text">Цена: 9200 руб.</p>
                        <p class="card-text">Эти умные часы имеют все функции, которые вам нужны.</p>
                        <form method="post" action="buy_item.php">
                            <input type="hidden" name="item" value="Популярный товар 3">
                            <input type="hidden" name="price" value="9200">
                            <button type="submit" class="btn btn-primary mt-auto">Купить</button>
                        </form>
                    </div>
                </div>
                
            </div>
        </div>
    </div>

    <footer class="footer">
        <div class="container">
            <span>© 2024 Ваш Фитнес Клуб</span>
        </div>
    </footer>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        $(document).ready(function() {
            function rotateReviews() {
                $('.reviews').each(function() {
                    var $active = $(this).find('.review.active');
                    var $next = $active.next('.review');
                    if ($next.length === 0) {
                        $next = $(this).find('.review').first();
                    }
                    $active.removeClass('active');
                    $next.addClass('active');
                });
            }
            setInterval(rotateReviews, 6000);
        });
    </script>
</body>
</html>
