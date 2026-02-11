# seventeen-edu.github.io[index (2).html](https://github.com/user-attachments/files/25228057/index.2.html)
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- SEO Meta Tags -->
    <title>seventeen-edu - 팀 포트폴리오</title>
    <meta name="description" content="서울대보다 높게 살기">
    <meta name="keywords" content="seventeen-edu, 사랑, 건강, 이해, 교육, 팀워크">
    
    <!-- Open Graph Meta Tags -->
    <meta property="og:title" content="seventeen-edu">
    <meta property="og:description" content="서울대보다 높게 살기">
    <meta property="og:image" content="team.jpg">
    <meta property="og:type" content="website">
    
    <style>
        /* ========================================
           전역 스타일 및 CSS 변수
           ======================================== */
        :root {
            /* 프레시 그린 색상 팔레트 (B7) */
            --primary-dark: #2E7D32;
            --primary: #4CAF50;
            --primary-light: #81C784;
            --primary-lightest: #E8F5E9;
            --text-dark: #1B5E20;
            --text-gray: #555;
            --bg-white: #FFFFFF;
            --shadow: rgba(46, 125, 50, 0.1);
            
            /* 타이포그래피 */
            --font-primary: 'Segoe UI', 'Malgun Gothic', sans-serif;
            
            /* 간격 */
            --section-padding: 100px;
            --container-max: 1200px;
            
            /* 엘레강트 플로우 애니메이션 타이밍 */
            --transition-smooth: cubic-bezier(0.4, 0, 0.2, 1);
            --transition-duration: 0.6s;
        }
        
        /* 리셋 스타일 */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        html {
            scroll-behavior: smooth;
        }
        
        body {
            font-family: var(--font-primary);
            color: var(--text-gray);
            line-height: 1.6;
            overflow-x: hidden;
        }
        
        /* ========================================
           컨테이너 및 섹션 공통 스타일
           ======================================== */
        .container {
            max-width: var(--container-max);
            margin: 0 auto;
            padding: 0 20px;
        }
        
        section {
            padding: var(--section-padding) 0;
            position: relative;
        }
        
        /* 섹션 제목 스타일 */
        .section-title {
            font-size: 2.5rem;
            color: var(--primary-dark);
            text-align: center;
            margin-bottom: 60px;
            font-weight: 700;
            position: relative;
            opacity: 0;
            transform: translateY(30px);
            transition: all var(--transition-duration) var(--transition-smooth);
        }
        
        .section-title.animate-in {
            opacity: 1;
            transform: translateY(0);
        }
        
        .section-title::after {
            content: '';
            display: block;
            width: 80px;
            height: 4px;
            background: linear-gradient(90deg, var(--primary), var(--primary-light));
            margin: 20px auto 0;
            border-radius: 2px;
        }
        
        /* ========================================
           히어로 섹션
           ======================================== */
        .hero {
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            background: linear-gradient(135deg, var(--primary-lightest) 0%, var(--bg-white) 100%);
            position: relative;
            overflow: hidden;
        }
        
        /* 배경 장식 요소 */
        .hero::before {
            content: '';
            position: absolute;
            width: 500px;
            height: 500px;
            background: radial-gradient(circle, var(--primary-light) 0%, transparent 70%);
            opacity: 0.1;
            top: -200px;
            right: -200px;
            border-radius: 50%;
            animation: float 8s ease-in-out infinite;
        }
        
        .hero::after {
            content: '';
            position: absolute;
            width: 400px;
            height: 400px;
            background: radial-gradient(circle, var(--primary) 0%, transparent 70%);
            opacity: 0.08;
            bottom: -150px;
            left: -150px;
            border-radius: 50%;
            animation: float 10s ease-in-out infinite reverse;
        }
        
        @keyframes float {
            0%, 100% { transform: translateY(0) rotate(0deg); }
            50% { transform: translateY(-30px) rotate(5deg); }
        }
        
        .hero-content {
            text-align: center;
            z-index: 1;
            opacity: 0;
            animation: fadeInUp 1.2s var(--transition-smooth) forwards;
        }
        
        @keyframes fadeInUp {
            to {
                opacity: 1;
                transform: translateY(0);
            }
            from {
                opacity: 0;
                transform: translateY(40px);
            }
        }
        
        .hero-image {
            width: 250px;
            height: 250px;
            border-radius: 50%;
            object-fit: cover;
            margin-bottom: 30px;
            border: 6px solid var(--primary-light);
            box-shadow: 0 20px 60px var(--shadow);
            animation: scaleIn 0.8s var(--transition-smooth) 0.3s backwards;
        }
        
        @keyframes scaleIn {
            from {
                transform: scale(0.8);
                opacity: 0;
            }
            to {
                transform: scale(1);
                opacity: 1;
            }
        }
        
        .hero h1 {
            font-size: 3.5rem;
            color: var(--primary-dark);
            margin-bottom: 20px;
            font-weight: 800;
            letter-spacing: -1px;
        }
        
        .hero-slogan {
            font-size: 1.5rem;
            color: var(--text-gray);
            font-weight: 300;
            margin-bottom: 40px;
        }
        
        .cta-button {
            display: inline-block;
            padding: 15px 40px;
            background: linear-gradient(135deg, var(--primary) 0%, var(--primary-dark) 100%);
            color: white;
            text-decoration: none;
            border-radius: 50px;
            font-weight: 600;
            transition: all 0.3s var(--transition-smooth);
            box-shadow: 0 10px 30px rgba(76, 175, 80, 0.3);
        }
        
        .cta-button:hover {
            transform: translateY(-3px);
            box-shadow: 0 15px 40px rgba(76, 175, 80, 0.4);
        }
        
        /* ========================================
           Team Values 섹션
           ======================================== */
        .values {
            background: var(--bg-white);
        }
        
        .values-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 40px;
            margin-top: 40px;
        }
        
        .value-card {
            background: var(--primary-lightest);
            padding: 40px 30px;
            border-radius: 20px;
            text-align: center;
            transition: all var(--transition-duration) var(--transition-smooth);
            opacity: 0;
            transform: translateY(40px);
            border: 2px solid transparent;
        }
        
        .value-card.animate-in {
            opacity: 1;
            transform: translateY(0);
        }
        
        .value-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 20px 50px var(--shadow);
            border-color: var(--primary-light);
            background: var(--bg-white);
        }
        
        .value-icon {
            font-size: 3.5rem;
            margin-bottom: 20px;
            display: inline-block;
            transition: transform 0.3s var(--transition-smooth);
        }
        
        .value-card:hover .value-icon {
            transform: scale(1.15) rotate(5deg);
        }
        
        .value-card h3 {
            font-size: 1.8rem;
            color: var(--primary-dark);
            margin-bottom: 15px;
            font-weight: 700;
        }
        
        .value-card p {
            color: var(--text-gray);
            font-size: 1.05rem;
            line-height: 1.8;
        }
        
        /* ========================================
           Team Members 섹션
           ======================================== */
        .members {
            background: linear-gradient(180deg, var(--bg-white) 0%, var(--primary-lightest) 100%);
        }
        
        .members-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 40px;
            margin-top: 40px;
        }
        
        .member-card {
            background: var(--bg-white);
            border-radius: 20px;
            overflow: hidden;
            box-shadow: 0 10px 30px var(--shadow);
            transition: all var(--transition-duration) var(--transition-smooth);
            opacity: 0;
            transform: translateY(40px) scale(0.95);
        }
        
        .member-card.animate-in {
            opacity: 1;
            transform: translateY(0) scale(1);
        }
        
        .member-card:hover {
            transform: translateY(-15px) scale(1.02);
            box-shadow: 0 25px 60px rgba(46, 125, 50, 0.2);
        }
        
        .member-image {
            width: 100%;
            height: 300px;
            object-fit: cover;
            transition: transform 0.6s var(--transition-smooth);
        }
        
        .member-card:hover .member-image {
            transform: scale(1.1);
        }
        
        .member-info {
            padding: 25px;
        }
        
        .member-info h3 {
            font-size: 1.5rem;
            color: var(--primary-dark);
            margin-bottom: 10px;
            font-weight: 700;
        }
        
        .member-info p {
            color: var(--text-gray);
            font-size: 0.95rem;
            line-height: 1.7;
        }
        
        /* ========================================
           Guestbook 섹션
           ======================================== */
        .guestbook {
            background: var(--bg-white);
        }
        
        .guestbook-container {
            max-width: 900px;
            margin: 0 auto;
            background: var(--primary-lightest);
            padding: 50px;
            border-radius: 20px;
            box-shadow: 0 10px 40px var(--shadow);
            opacity: 0;
            transform: translateY(30px);
            transition: all var(--transition-duration) var(--transition-smooth);
        }
        
        .guestbook-container.animate-in {
            opacity: 1;
            transform: translateY(0);
        }
        
        /* ========================================
           Footer
           ======================================== */
        footer {
            background: linear-gradient(135deg, var(--primary-dark) 0%, var(--primary) 100%);
            color: white;
            text-align: center;
            padding: 40px 20px;
        }
        
        footer p {
            font-size: 1rem;
            margin-bottom: 10px;
        }
        
        footer a {
            color: var(--primary-lightest);
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s ease;
            border-bottom: 2px solid transparent;
        }
        
        footer a:hover {
            color: white;
            border-bottom-color: white;
        }
        
        /* ========================================
           반응형 디자인
           ======================================== */
        
        /* 태블릿 */
        @media (max-width: 768px) {
            :root {
                --section-padding: 60px;
            }
            
            .hero h1 {
                font-size: 2.5rem;
            }
            
            .hero-slogan {
                font-size: 1.2rem;
            }
            
            .section-title {
                font-size: 2rem;
            }
            
            .values-grid,
            .members-grid {
                grid-template-columns: 1fr;
            }
            
            .guestbook-container {
                padding: 30px 20px;
            }
        }
        
        /* 모바일 */
        @media (max-width: 480px) {
            :root {
                --section-padding: 40px;
            }
            
            .hero {
                height: auto;
                min-height: 100vh;
                padding: 60px 0;
            }
            
            .hero h1 {
                font-size: 2rem;
            }
            
            .hero-slogan {
                font-size: 1rem;
            }
            
            .hero-image {
                width: 180px;
                height: 180px;
            }
            
            .section-title {
                font-size: 1.8rem;
                margin-bottom: 40px;
            }
            
            .value-card,
            .member-card {
                margin-bottom: 20px;
            }
            
            .member-image {
                height: 250px;
            }
        }
        
        /* ========================================
           스크롤 애니메이션 유틸리티
           ======================================== */
        .fade-in-element {
            opacity: 0;
            transform: translateY(30px);
            transition: all var(--transition-duration) var(--transition-smooth);
        }
        
        .fade-in-element.visible {
            opacity: 1;
            transform: translateY(0);
        }
    </style>
</head>
<body>
    <!-- ========================================
         히어로 섹션
         ======================================== -->
    <section class="hero" id="home">
        <div class="hero-content">
            <img src="team.jpg" alt="seventeen-edu 팀 사진" class="hero-image">
            <h1>seventeen-edu</h1>
            <p class="hero-slogan">서울대보다 높게 살기</p>
            <a href="#values" class="cta-button">우리 팀 알아보기</a>
        </div>
    </section>

    <!-- ========================================
         Team Values 섹션
         ======================================== -->
    <section class="values" id="values">
        <div class="container">
            <h2 class="section-title">Team Values</h2>
            <div class="values-grid">
                <!-- 가치 1: 사랑 -->
                <div class="value-card">
                    <div class="value-icon">❤️</div>
                    <h3>사랑</h3>
                    <p>사랑에 설명이 필요할까요..?</p>
                </div>
                
                <!-- 가치 2: 건강 -->
                <div class="value-card">
                    <div class="value-icon">💪</div>
                    <h3>건강</h3>
                    <p>건강이 최고죠!</p>
                </div>
                
                <!-- 가치 3: 이해 -->
                <div class="value-card">
                    <div class="value-icon">🤝</div>
                    <h3>이해</h3>
                    <p>한창 이해가 필요할 나이</p>
                </div>
            </div>
        </div>
    </section>

    <!-- ========================================
         Team Members 섹션
         ======================================== -->
    <section class="members" id="members">
        <div class="container">
            <h2 class="section-title">Team Members</h2>
            <div class="members-grid">
                <!-- 팀원 1 -->
                <div class="member-card">
                    <img src="member1.jpg" alt="김충원" class="member-image">
                    <div class="member-info">
                        <h3>김충원</h3>
                        <p>국어교육과/밤하늘에 관심 많습니다. 같이 별 보러 갈 사람 구해요.</p>
                    </div>
                </div>
                
                <!-- 팀원 2 -->
                <div class="member-card">
                    <img src="member2.jpg" alt="유지민" class="member-image">
                    <div class="member-info">
                        <h3>유지민</h3>
                        <p>교육학과/매일매일 나아가는 사람이 되고 싶습니다!</p>
                    </div>
                </div>
                
                <!-- 팀원 3 -->
                <div class="member-card">
                    <img src="member3.jpg" alt="윤우진" class="member-image">
                    <div class="member-info">
                        <h3>윤우진</h3>
                        <p>교육학과/주어진 모든것에 감사하며 항상 가르침과 배려를 주며 공감하고자하는 사람</p>
                    </div>
                </div>
                
                <!-- 팀원 4 -->
                <div class="member-card">
                    <img src="member4.jpg" alt="조수영" class="member-image">
                    <div class="member-info">
                        <h3>조수영</h3>
                        <p>교육학과/ 우리팀을 든든하게 받쳐주겠습니다.</p>
                    </div>
                </div>
                
                <!-- 팀원 5 -->
                <div class="member-card">
                    <img src="member5.jpg" alt="공성현" class="member-image">
                    <div class="member-info">
                        <h3>공성현</h3>
                        <p>국어교육과/국립국어원에 들어가 온라인 가나다에 답글 달아보고 싶습니다! 국어학을 사랑하는 남자입니다.</p>
                    </div>
                </div>
                
                <!-- 팀원 6 -->
                <div class="member-card">
                    <img src="member6.jpg" alt="표은채" class="member-image">
                    <div class="member-info">
                        <h3>표은채</h3>
                        <p>국어교육과 / 학교 생활 열심히 하고 싶습니돠 ㅎㅎ</p>
                    </div>
                </div>
                
                <!-- 팀원 7 -->
                <div class="member-card">
                    <img src="member7.jpg" alt="권윤서" class="member-image">
                    <div class="member-info">
                        <h3>권윤서</h3>
                        <p>교육학과 / 제가 가진 사랑을 흘려보내는 교사가 되고 싶습니다 ㅎㅎ</p>
                    </div>
                </div>
                
                <!-- 팀원 8 -->
                <div class="member-card">
                    <img src="member8.jpg" alt="김정원" class="member-image">
                    <div class="member-info">
                        <h3>김정원</h3>
                        <p>교육학과/교육에대한 지속적인  관심으로 우리나라 교육의 발전에 이바지하고 싶습니다.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ========================================
         Guestbook 섹션
         ======================================== -->
    <section class="guestbook" id="guestbook">
        <div class="container">
            <h2 class="section-title">Guestbook</h2>
            <div class="guestbook-container">
                <!-- Utterances 방명록 스크립트 -->
                <script src="https://utteranc.es/client.js"
                        repo="aitrizkr/aiws_sm2026"
                        issue-term="pathname"
                        label="방명록"
                        theme="github-light"
                        crossorigin="anonymous"
                        async>
                </script>
            </div>
        </div>
    </section>

    <!-- ========================================
         Footer
         ======================================== -->
    <footer>
        <div class="container">
            <p>&copy; 2026 seventeen-edu. Powered by <a href="https://ai.triz.kr" target="_blank" rel="noopener noreferrer">AI Portfolio Workshop</a>.</p>
        </div>
    </footer>

    <!-- ========================================
         JavaScript - 스크롤 애니메이션
         ======================================== -->
    <script>
        // 엘레강트 플로우 인터랙션을 위한 스크롤 애니메이션
        
        // Intersection Observer 설정
        const observerOptions = {
            threshold: 0.15, // 요소의 15%가 보이면 트리거
            rootMargin: '0px 0px -50px 0px' // 하단 50px 마진
        };
        
        // 애니메이션 관찰자 생성
        const observer = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    entry.target.classList.add('animate-in');
                }
            });
        }, observerOptions);
        
        // DOM 로드 후 실행
        document.addEventListener('DOMContentLoaded', () => {
            // 섹션 타이틀 애니메이션
            const sectionTitles = document.querySelectorAll('.section-title');
            sectionTitles.forEach(title => observer.observe(title));
            
            // Value 카드 애니메이션 (순차적 지연)
            const valueCards = document.querySelectorAll('.value-card');
            valueCards.forEach((card, index) => {
                card.style.transitionDelay = `${index * 0.15}s`;
                observer.observe(card);
            });
            
            // Member 카드 애니메이션 (순차적 지연)
            const memberCards = document.querySelectorAll('.member-card');
            memberCards.forEach((card, index) => {
                card.style.transitionDelay = `${(index % 4) * 0.1}s`; // 4개씩 그룹으로 지연
                observer.observe(card);
            });
            
            // Guestbook 컨테이너 애니메이션
            const guestbookContainer = document.querySelector('.guestbook-container');
            if (guestbookContainer) {
                observer.observe(guestbookContainer);
            }
            
            // 부드러운 스크롤 네비게이션
            document.querySelectorAll('a[href^="#"]').forEach(anchor => {
                anchor.addEventListener('click', function(e) {
                    e.preventDefault();
                    const targetId = this.getAttribute('href');
                    const targetSection = document.querySelector(targetId);
                    
                    if (targetSection) {
                        targetSection.scrollIntoView({
                            behavior: 'smooth',
                            block: 'start'
                        });
                    }
                });
            });
            
            // 스크롤 진행 시 헤더 효과 (선택사항)
            let lastScrollY = window.scrollY;
            window.addEventListener('scroll', () => {
                const currentScrollY = window.scrollY;
                
                // 스크롤 방향에 따른 추가 효과를 원하면 여기에 추가
                // 현재는 엘레강트 플로우에 집중
                
                lastScrollY = currentScrollY;
            }, { passive: true });
        });
        
        // 이미지 로드 에러 처리 (placeholder 대체)
        document.addEventListener('DOMContentLoaded', () => {
            const images = document.querySelectorAll('img');
            images.forEach(img => {
                img.addEventListener('error', function() {
                    // 이미지 로드 실패 시 placeholder 사용
                    const width = this.classList.contains('hero-image') ? 250 : 
                                 this.classList.contains('member-image') ? 300 : 400;
                    const height = this.classList.contains('hero-image') ? 250 : 
                                  this.classList.contains('member-image') ? 300 : 400;
                    
                    this.src = `https://via.placeholder.com/${width}x${height}/4CAF50/FFFFFF?text=${encodeURIComponent(this.alt)}`;
                });
            });
        });
    </script>
</body>
</html>
