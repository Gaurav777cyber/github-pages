<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Impress Your Crush</title>
    <style>
        body {
            font-family: 'Poppins', Arial, sans-serif;
            background: linear-gradient(135deg, #f0f8ff, #ffe4e1);
            text-align: center;
            padding: 50px;
            margin: 0;
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            overflow: hidden;
            animation: backgroundShift 10s infinite alternate;
        }
        h1 {
            color: #ff69b4;
            font-size: 4em;
            margin-bottom: 20px;
            animation: fadeIn 2s ease-in-out;
            text-shadow: 3px 3px 10px rgba(255, 105, 180, 0.8);
        }
        p {
            font-size: 1.8em;
            color: #333;
            margin-bottom: 30px;
            animation: fadeIn 3s ease-in-out;
            text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.2);
        }
        .heart {
            color: #ff69b4;
            font-size: 6em;
            animation: heartbeat 1.5s infinite;
            text-shadow: 2px 2px 15px rgba(255, 105, 180, 0.8);
        }
        @keyframes heartbeat {
            0%, 100% {
                transform: scale(1);
            }
            50% {
                transform: scale(1.4);
            }
        }
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        @keyframes backgroundShift {
            from {
                background: linear-gradient(135deg, #f0f8ff, #ffe4e1);
            }
            to {
                background: linear-gradient(135deg, #ffe4e1, #f0f8ff);
            }
        }
        .button {
            margin-top: 20px;
            padding: 15px 40px;
            font-size: 1.5em;
            color: #fff;
            background: linear-gradient(135deg, #ff69b4, #ff1493);
            border: none;
            border-radius: 50px;
            cursor: pointer;
            animation: fadeIn 4s ease-in-out;
            box-shadow: 0 8px 20px rgba(255, 105, 180, 0.6);
            transition: transform 0.3s, background 0.3s, box-shadow 0.3s;
        }
        .button:hover {
            background: linear-gradient(135deg, #ff1493, #ff69b4);
            transform: scale(1.1);
            box-shadow: 0 12px 30px rgba(255, 105, 180, 0.8);
        }
        .button:active {
            transform: scale(0.95);
            box-shadow: 0 4px 10px rgba(255, 105, 180, 0.5);
        }
        .sparkles {
            position: absolute;
            width: 100%;
            height: 100%;
            pointer-events: none;
            overflow: hidden;
        }
        .sparkle {
            position: absolute;
            width: 10px;
            height: 10px;
            background: radial-gradient(circle, #ff69b4 0%, rgba(255, 255, 255, 0) 70%);
            border-radius: 50%;
            animation: sparkle 3s infinite ease-in-out;
        }
        @keyframes sparkle {
            0% {
                transform: scale(0.5) translateY(0);
                opacity: 1;
            }
            50% {
                transform: scale(1.5) translateY(-50px);
                opacity: 0.5;
            }
            100% {
                transform: scale(0.5) translateY(-100px);
                opacity: 0;
            }
        }
    </style>
</head>
<body>
    <h1>Hello, Beautiful!</h1>
    <p>Just wanted to let you know that you are amazing and you make my world brighter!</p>
    <div class="heart">❤️</div>
    <button class="button" onclick="alert('You are loved! ❤️')">Click Me</button>
    <div class="sparkles"></div>
    <script>
        // Generate sparkles dynamically
        const sparklesContainer = document.querySelector('.sparkles');
        for (let i = 0; i < 50; i++) {
            const sparkle = document.createElement('div');
            sparkle.classList.add('sparkle');
            sparkle.style.left = Math.random() * 100 + '%';
            sparkle.style.top = Math.random() * 100 + '%';
            sparkle.style.animationDelay = Math.random() * 3 + 's';
            sparklesContainer.appendChild(sparkle);
        }
    </script>
</body>
</html>
