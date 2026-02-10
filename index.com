<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Тест на бдительность | Беларусь 2025</title>
    <style>
        /* ОЧЕНЬ ПРОСТЫЕ СТИЛИ */
        body {
            font-family: Arial, sans-serif;
            background: #f0f0f0;
            margin: 0;
            padding: 10px;
        }
        
        .card {
            background: white;
            border-radius: 10px;
            max-width: 500px;
            margin: 20px auto;
            overflow: hidden;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }
        
        .red-header {
            background: #dc3545;
            color: white;
            padding: 20px;
            text-align: center;
        }
        
        .green-header {
            background: #28a745;
            color: white;
            padding: 20px;
            text-align: center;
        }
        
        .content {
            padding: 20px;
        }
        
        .warning {
            background: #fff5f5;
            border-left: 4px solid #dc3545;
            padding: 15px;
            margin: 15px 0;
            border-radius: 5px;
        }
        
        .timer {
            background: #333;
            color: white;
            padding: 20px;
            text-align: center;
            font-size: 32px;
            font-family: monospace;
            margin: 20px 0;
            border-radius: 8px;
        }
        
        .button {
            display: block;
            width: 100%;
            padding: 18px;
            background: #dc3545;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 18px;
            font-weight: bold;
            margin: 20px 0;
            cursor: pointer;
        }
        
        .stats {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 10px;
            margin: 20px 0;
        }
        
        .stat {
            background: #f8f9fa;
            padding: 15px;
            text-align: center;
            border-radius: 8px;
            border: 1px solid #ddd;
        }
        
        .big-number {
            font-size: 24px;
            font-weight: bold;
            color: #dc3545;
        }
        
        .tip {
            background: #f8f9fa;
            padding: 15px;
            margin: 15px 0;
            border-radius: 8px;
            border: 1px solid #ddd;
        }
        
        .real-stats {
            background: #e7f3ff;
            padding: 20px;
            margin: 20px 0;
            border-radius: 8px;
            border: 2px solid #007bff;
        }
        
        .stat-row {
            display: flex;
            justify-content: space-between;
            padding: 10px 0;
            border-bottom: 1px dashed #ccc;
        }
        
        .stat-row:last-child {
            border-bottom: none;
        }
        
        .flag {
            font-size: 20px;
        }
        
        @media (max-width: 480px) {
            .stats {
                grid-template-columns: 1fr;
            }
            
            .timer {
                font-size: 28px;
                padding: 15px;
            }
            
            .button {
                padding: 16px;
                font-size: 16px;
            }
        }
    </style>
</head>
<body>
    <!-- ПРИМАНКА -->
    <div class="card" id="bait">
        <div class="red-header">
            <div style="font-size: 40px;">⚠️</div>
            <h1>ВАШ АККАУНТ ПОД УГРОЗОЙ!</h1>
            <p>Требуется немедленное действие</p>
        </div>
        
        <div class="content">
            <div class="warning">
                <strong>🔓 Утечка пароля</strong>
                <p>Ваш пароль найден в открытой базе данных</p>
            </div>
            
            <div class="warning">
                <strong>🌍 Подозрительная активность</strong>
                <p>Входы из Польши и Литвы</p>
            </div>
            
            <div class="warning">
                <strong>💳 Попытка привязки карты</strong>
                <p>К аккаунту пытались привязать новую карту</p>
            </div>
            
            <div class="timer" id="timer">02:00</div>
            
            <button class="button" onclick="showLesson()">
                🔒 НЕМЕДЛЕННО ЗАЩИТИТЬ АККАУНТ
            </button>
            
            <div class="stats">
                <div class="stat">
                    <div class="big-number">64</div>
                    <small>аккаунтов взломано сегодня</small>
                </div>
                <div class="stat">
                    <div class="big-number">88%</div>
                    <small>пользователей в зоне риска</small>
                </div>
                <div class="stat">
                    <div class="big-number">5 мин</div>
                    <small>среднее время взлома</small>
                </div>
                <div class="stat">
                    <div class="big-number">3.2М</div>
                    <small>BYN украдено в 2025</small>
                </div>
            </div>
        </div>
    </div>
    
    <!-- УРОК (скрыт изначально) -->
    <div class="card" id="lesson" style="display: none;">
        <div class="green-header">
            <div style="font-size: 40px;">🎯</div>
            <h1>ТЕСТ ПРОЙДЕН!</h1>
            <p>Учебная ситуация • День безопасного интернета</p>
        </div>
        
        <div class="content">
            <div style="background: #d4edda; padding: 20px; border-radius: 8px; margin-bottom: 20px;">
                <h3>📱 Вы попали на фишинговую страницу!</h3>
                <p>Именно так выглядят современные мошеннические атаки.</p>
            </div>
            
            <h3>🔍 Что должно было вас насторожить:</h3>
            
            <div class="tip">
                <strong>1. Срочность и давление</strong>
                <p>Таймер, красные значки, слова "НЕМЕДЛЕННО" — приёмы для паники.</p>
            </div>
            
            <div class="tip">
                <strong>2. Обобщённые угрозы</strong>
                <p>"Польша и Литва" без конкретных данных — признак подделки.</p>
            </div>
            
            <div class="real-stats">
                <h3 style="margin-top: 0;">
                    <span class="flag">🇧🇾</span> Статистика мошенничества в Беларуси (2025)
                </h3>
                
                <div class="stat-row">
                    <span>Фишинговых атак в день:</span>
                    <strong>8,500+</strong>
                </div>
                
                <div class="stat-row">
                    <span>Пострадавших:</span>
                    <strong>425,000 человек</strong>
                </div>
                
                <div class="stat-row">
                    <span>Средний ущерб:</span>
                    <strong>2,850 BYN</strong>
                </div>
                
                <div class="stat-row">
                    <span>Возвращают банки:</span>
                    <strong>только 12%</strong>
                </div>
            </div>
            
            <div class="tip" style="background: #fff3cd;">
                <strong>💡 Как проверить настоящие уведомления:</strong>
                <ul style="margin: 10px 0 0 20px;">
                    <li>Настоящие сервисы обращаются по имени</li>
                    <li>Пишут с официальной почты</li>
                    <li>Не требуют немедленных действий</li>
                </ul>
            </div>
            
            <button class="button" onclick="location.reload()" style="background: #007bff;">
                🔄 Пройти тест ещё раз
            </button>
            
            <div style="text-align: center; margin-top: 20px; color: #666;">
                <p><strong>11 февраля — День безопасного интернета</strong></p>
                <p>Поделитесь этим тестом с друзьями!</p>
            </div>
        </div>
    </div>

    <script>
        // Простой таймер
        let timeLeft = 120;
        const timerEl = document.getElementById('timer');
        
        function updateTimer() {
            let minutes = Math.floor(timeLeft / 60);
            let seconds = timeLeft % 60;
            
            timerEl.textContent = 
                (minutes < 10 ? '0' : '') + minutes + ':' + 
                (seconds < 10 ? '0' : '') + seconds;
            
            if (timeLeft <= 30) {
                timerEl.style.color = '#ff6b6b';
            }
            
            if (timeLeft <= 10) {
                timerEl.style.color = '#dc3545';
                timerEl.style.backgroundColor = '#ffcccc';
            }
            
            if (timeLeft > 0) {
                timeLeft--;
                setTimeout(updateTimer, 1000);
            } else {
                showLesson();
            }
        }
        
        updateTimer();
        
        // Функция показа урока
        function showLesson() {
            document.getElementById('bait').style.display = 'none';
            document.getElementById('lesson').style.display = 'block';
            window.scrollTo(0, 0);
        }
        
        // Авто-показ через 30 секунд
        setTimeout(function() {
            if (document.getElementById('bait').style.display !== 'none') {
                showLesson();
            }
        }, 30000);
    </script>
</body>
</html>
