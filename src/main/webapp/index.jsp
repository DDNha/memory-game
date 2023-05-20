<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,400;0,600;0,700;0,800;1,400&display=swap"
              rel="stylesheet">
        <link
                href="https://fonts.googleapis.com/css2?family=Bungee+Inline&family=Nunito+Sans:wght@400;600;700;800;900&display=swap"
                rel="stylesheet">
        <link rel="stylesheet" href="../style.css">
</head>
<body>
<!-- Bắt đầu game -->
<div id="start-game">
    <h1>Memomry card</h1>
    <div class="level-container">
        <p>Chọn level game</p>
        <div class="select-container">
            <img src="https://img.icons8.com/nolan/64/controller.png" />
            <select id="level-option">
                <option value="2">4 Cards</option>
                <option value="4">8 Cards</option>
                <option value="6">12 Cards</option>
            </select>
        </div>
        <button id="btn-start-game">Bắt đầu</button>
    </div>
</div>

<!-- Chơi game -->
<div id="game">
    <div class="control">
        <h1>Memomy game</h1>
        <div class="time-game">
            <img src="https://img.icons8.com/dotty/80/26e07f/love-time.png" />
            <p id="time">00:00s</p>
        </div>
        <div class="step-game">
            <img src="https://img.icons8.com/dotty/80/26e07f/month-in-love.png" />
            <p id="step">0 bước</p>
        </div>
    </div>
    <div class="game-container">
        <div class="memory-game">
            <div class="memory-card" data-name="nodejs">
                <img src="https://img.icons8.com/color/500/000000/nodejs.png" class="front-face" alt="Node">
                <img src="https://i.pinimg.com/originals/b9/70/33/b97033a8708d2cbaf7d1990020a89a54.jpg"
                     class="back-face" alt="card-back">
            </div>
            <div class="memory-card" data-name="nodejs">
                <img src="https://img.icons8.com/color/500/000000/nodejs.png" class="front-face" alt="Node">
                <img src="https://i.pinimg.com/originals/b9/70/33/b97033a8708d2cbaf7d1990020a89a54.jpg"
                     class="back-face" alt="card-back">
            </div>
            <div class="memory-card" data-name="json">
                <img src="https://img.icons8.com/color/500/000000/json.png" class="front-face" alt="Json">
                <img src="https://i.pinimg.com/originals/b9/70/33/b97033a8708d2cbaf7d1990020a89a54.jpg"
                     class="back-face" alt="card-back">
            </div>
            <div class="memory-card" data-name="json">
                <img src="https://img.icons8.com/color/500/000000/json.png" class="front-face" alt="Json">
                <img src="https://i.pinimg.com/originals/b9/70/33/b97033a8708d2cbaf7d1990020a89a54.jpg"
                     class="back-face" alt="card-back">
            </div>
            <div class="memory-card" data-name="angularjs">
                <img src="https://img.icons8.com/color/500/000000/angularjs.png" class="front-face" alt="Angular">
                <img src="https://i.pinimg.com/originals/b9/70/33/b97033a8708d2cbaf7d1990020a89a54.jpg"
                     class="back-face" alt="card-back">
            </div>
            <div class="memory-card" data-name="angularjs">
                <img src="https://img.icons8.com/color/500/000000/angularjs.png" class="front-face" alt="Angular">
                <img src="https://i.pinimg.com/originals/b9/70/33/b97033a8708d2cbaf7d1990020a89a54.jpg"
                     class="back-face" alt="card-back">
            </div>
            <div class="memory-card" data-name="jquery">
                <img src="https://img.icons8.com/ios/500/000000/jquery-filled.png" class="front-face" alt="Jquery">
                <img src="https://i.pinimg.com/originals/b9/70/33/b97033a8708d2cbaf7d1990020a89a54.jpg"
                     class="back-face" alt="card-back">
            </div>
            <div class="memory-card" data-name="jquery">
                <img src="https://img.icons8.com/ios/500/000000/jquery-filled.png" class="front-face" alt="Jquery">
                <img src="https://i.pinimg.com/originals/b9/70/33/b97033a8708d2cbaf7d1990020a89a54.jpg"
                     class="back-face" alt="card-back">
            </div>
            <div class="memory-card" data-name="react">
                <img src="https://img.icons8.com/ios/500/000000/react-native-filled.png" class="front-face"
                     alt="React">
                <img src="https://i.pinimg.com/originals/b9/70/33/b97033a8708d2cbaf7d1990020a89a54.jpg"
                     class="back-face" alt="card-back">
            </div>
            <div class="memory-card" data-name="react">
                <img src="https://img.icons8.com/ios/500/000000/react-native-filled.png" class="front-face"
                     alt="React">
                <img src="https://i.pinimg.com/originals/b9/70/33/b97033a8708d2cbaf7d1990020a89a54.jpg"
                     class="back-face" alt="card-back">
            </div>
            <div class="memory-card" data-name="codepen">
                <img src=" https://img.icons8.com/ios/500/000000/codepen-filled.png" class="front-face"
                     alt="Codepen">
                <img src="https://i.pinimg.com/originals/b9/70/33/b97033a8708d2cbaf7d1990020a89a54.jpg"
                     class="back-face" alt="card-back">
            </div>
            <div class="memory-card" data-name="codepen">
                <img src=" https://img.icons8.com/ios/500/000000/codepen-filled.png" class="front-face"
                     alt="Codepen">
                <img src="https://i.pinimg.com/originals/b9/70/33/b97033a8708d2cbaf7d1990020a89a54.jpg"
                     class="back-face" alt="card-back">
            </div>
        </div>
    </div>
</div>
<!-- Kết thúc game -->
<div id="end-game">
    <div class="info">
        <h1>Kết thúc</h1>
        <p>Chúc mừng bạn đã hoàn thành game trong</p>
        <div class="box">
            <div class="time-box">
                <img src="https://img.icons8.com/dotty/80/26e07f/love-time.png" />
                <p>30s</p>
            </div>
            <div class="step-box">
                <img src="https://img.icons8.com/dotty/80/26e07f/month-in-love.png" />
                <p>10 bước</p>
            </div>
        </div>
        <div class="btns">
            <button id="btn-play-again">Chơi lại</button>
            <button id="btn-reload">Thoát game</button>
        </div>
    </div>
</div>
<script src="../main.js"></script>
</body>
</html>