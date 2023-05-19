<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Memory game</title>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,400;0,600;0,700;0,800;1,400&display=swap"
          rel="stylesheet">
    <link
            href="https://fonts.googleapis.com/css2?family=Bungee+Inline&family=Nunito+Sans:wght@400;600;700;800;900&display=swap"
            rel="stylesheet">
<%--    <link rel="stylesheet" href="./style.css">--%>
</head>
<style>
    * {
        padding: 0;
        margin: 0;
        box-sizing: border-box;
    }

    body {
        height: 100vh;
        font-family: "Nunito Sans", sans-serif;
        background-image: linear-gradient(to bottom right, #67b26f, #4ca2cd);
    }

    /* =========== START GAME =========== */
    #start-game {
        height: 100vh;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;

        color: #333;
    }

    #start-game h1 {
        font-family: "Bungee Inline", sans-serif;
        font-size: 4rem;
        color: #fff;
        margin-bottom: 4rem;
    }

    .level-container {
        width: 100%;
        padding: 50px 0;

        display: flex;
        flex-direction: column;
        align-items: center;

        background-color: #fff;
    }

    .level-container p {
        font-size: 2rem;
        font-family: "Bungee Inline", sans-serif;
    }

    .select-container {
        margin: 1rem 0;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    #level-option {
        padding: 1rem 2rem;
        border-radius: 4px;
    }

    #btn-start-game {
        display: inline-block;
        padding: 1rem 2rem;
        background-color: #333;
        color: #fff;
        border: none;
        cursor: pointer;
    }

    /* =========== PLAY GAME =========== */
    #game {
        display: none;
        height: 100vh;
        width: 100%;
    }

    .control {
        flex : 0 0 20%;
        background-color: #fff;
        height: 100%;
    }

    .control h1 {
        font-family: "Bungee Inline", sans-serif;
        text-align: center;
        margin-top: 2rem;
    }

    .time-game, .step-game {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;

        margin-top: 2rem;
        margin-bottom: 2rem;
    }

    #time, #step {
        font-size: 1.5rem;
    }

    .game-container {
        display: flex;
        justify-content: center;
        align-items: center;

        flex: 0 0 80%;
    }


    .memory-game {
        display: grid;
        gap: 10px;
        perspective: 1000px;
    }

    .memory-card {
        width: 190px;
        height: 250px;
        position: relative;
        margin: 5px;
        transform: scale(1);
        transform-style: preserve-3d;
        transition: transform 0.5s;
    }

    .memory-card:active {
        transform: scale(0.97);
        transition: transform 0.2s;
    }

    .memory-card.flip {
        transform: rotateY(180deg);
    }

    .front-face,
    .back-face {
        position: absolute;
        max-width: 100%;
        backface-visibility: hidden;
        width: 190px;
        height: 250px;
        object-fit: cover;
    }

    .front-face {
        transform: rotateY(180deg);
    }

    /* =========== END GAME =========== */
    #end-game {
        height: 100vh;
        display: none;
        justify-content: center;
        align-items: center;
    }

    .info {
        background-color: #fff;
        width: 100%;
        padding: 50px 0;

        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
    }

    #btn-play-again, #btn-reload {
        display: inline-block;
        width: 130px;
        height: 50px;
        margin: 0 1rem;
        background-color: #333;
        color: #fff;
        border: none;
        cursor: pointer;
    }

    .info h1 {
        font-family: "Bungee Inline", sans-serif;
        font-size: 2rem;
        margin-bottom: 2rem;
    }

    .box {
        display: flex;
        justify-content: center;
        margin: 1.5rem 0;
    }

    .time-box, .step-box {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        margin: 0 1rem;
    }

    .time-box p, .step-box p {
        font-weight: 600;
        margin-top: 10px;
    }

</style>
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

<script src="./main.js"></script>
</body>

</html>