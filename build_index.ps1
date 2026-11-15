$sentencesRaw = Get-Content 'C:\Users\ADMIN\.gemini\antigravity\scratch\hsk1-practice\sentences.json' -Raw -Encoding utf8
$vocabRaw = Get-Content 'C:\Users\ADMIN\.gemini\antigravity\scratch\hsk1-practice\vocab.json' -Raw -Encoding utf8
$cardsRaw = Get-Content 'C:\Users\ADMIN\.gemini\antigravity\scratch\hsk1-practice\cards.json' -Raw -Encoding utf8

$template = @'
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <title>Ôn Thi HSK 1 - Flashcard Dịch Câu, Từ Vựng & Miêu Tả Tranh</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&family=Noto+Sans+SC:wght@500;700;800&display=swap" rel="stylesheet">
  <style>
    :root {
      --primary: #2563eb;
      --primary-dark: #1d4ed8;
      --primary-light: #eff6ff;
      --secondary: #0d9488;
      --accent: #f59e0b;
      --success: #10b981;
      --bg: #f8fafc;
      --surface: #ffffff;
      --text: #0f172a;
      --text-secondary: #475569;
      --text-muted: #94a3b8;
      --border: #e2e8f0;
      --shadow-sm: 0 1px 3px rgba(0,0,0,0.06);
      --shadow-md: 0 4px 6px -1px rgba(0,0,0,0.08), 0 2px 4px -2px rgba(0,0,0,0.06);
      --shadow-xl: 0 20px 25px -5px rgba(0,0,0,0.1), 0 8px 10px -6px rgba(0,0,0,0.08);
      --radius-lg: 18px;
      --radius-md: 12px;
      --radius-full: 9999px;
      --font-zh: 'Noto Sans SC', 'PingFang SC', 'Microsoft YaHei', sans-serif;
    }

    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
      -webkit-tap-highlight-color: transparent;
    }

    body {
      font-family: 'Plus Jakarta Sans', -apple-system, BlinkMacSystemFont, sans-serif;
      background-color: var(--bg);
      color: var(--text);
      line-height: 1.5;
      min-height: 100vh;
      display: flex;
      flex-direction: column;
      overflow-x: hidden;
    }

    /* HEADER */
    header {
      background: rgba(255, 255, 255, 0.96);
      backdrop-filter: blur(12px);
      border-bottom: 1px solid var(--border);
      position: sticky;
      top: 0;
      z-index: 50;
      padding: 10px 16px;
    }

    .header-inner {
      max-width: 960px;
      margin: 0 auto;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 12px;
      flex-wrap: wrap;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 10px;
    }

    .brand-icon {
      width: 42px;
      height: 42px;
      border-radius: 12px;
      background: linear-gradient(135deg, #2563eb, #1d4ed8);
      color: white;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 1.3rem;
      box-shadow: 0 4px 10px rgba(37, 99, 235, 0.3);
      flex-shrink: 0;
    }

    .brand-text h1 {
      font-size: 1.1rem;
      font-weight: 800;
      letter-spacing: -0.02em;
      color: #0f172a;
    }

    .brand-text p {
      font-size: 0.75rem;
      color: var(--text-secondary);
      font-weight: 500;
    }

    .header-tools {
      display: flex;
      align-items: center;
      gap: 8px;
    }

    .btn-tool {
      background: #f8fafc;
      border: 1px solid var(--border);
      color: var(--text-secondary);
      padding: 6px 12px;
      border-radius: var(--radius-full);
      font-size: 0.78rem;
      font-weight: 600;
      cursor: pointer;
      display: inline-flex;
      align-items: center;
      gap: 6px;
      transition: all 0.2s;
    }

    .btn-tool:hover {
      background: var(--primary-light);
      color: var(--primary-dark);
      border-color: #bfdbfe;
    }

    /* TOP TABS NAVIGATION */
    .nav-tabs-wrap {
      background: #ffffff;
      border-bottom: 1px solid var(--border);
      padding: 8px 16px;
    }

    .nav-tabs-inner {
      max-width: 960px;
      margin: 0 auto;
      display: flex;
      gap: 8px;
      overflow-x: auto;
      scrollbar-width: none;
    }
    .nav-tabs-inner::-webkit-scrollbar { display: none; }

    .tab-btn {
      background: #f1f5f9;
      border: 1px solid #e2e8f0;
      color: #475569;
      padding: 8px 16px;
      border-radius: var(--radius-full);
      font-size: 0.85rem;
      font-weight: 700;
      cursor: pointer;
      display: inline-flex;
      align-items: center;
      gap: 7px;
      white-space: nowrap;
      transition: all 0.2s ease;
    }

    .tab-btn:hover {
      background: #e2e8f0;
      color: #1e293b;
    }

    .tab-btn.active {
      background: #2563eb;
      color: white;
      border-color: #2563eb;
      box-shadow: 0 4px 12px rgba(37, 99, 235, 0.25);
    }

    /* MAIN CONTAINER */
    main {
      flex: 1;
      max-width: 960px;
      width: 100%;
      margin: 0 auto;
      padding: 16px 14px 40px;
      display: flex;
      flex-direction: column;
      gap: 16px;
    }

    .tab-content {
      display: none;
      flex-direction: column;
      gap: 14px;
      width: 100%;
    }

    .tab-content.active {
      display: flex;
    }

    /* FILTER BAR */
    .filter-bar {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 10px;
      background: var(--surface);
      padding: 10px 14px;
      border-radius: var(--radius-md);
      border: 1px solid var(--border);
      box-shadow: var(--shadow-sm);
      flex-wrap: wrap;
    }

    .filter-group {
      display: flex;
      align-items: center;
      gap: 8px;
      flex-wrap: wrap;
    }

    .filter-select {
      padding: 7px 12px;
      border-radius: 8px;
      border: 1px solid var(--border);
      font-family: inherit;
      font-size: 0.85rem;
      font-weight: 600;
      background: #ffffff;
      color: #0f172a;
      cursor: pointer;
      outline: none;
    }

    .badge-counter {
      background: #eff6ff;
      color: #1d4ed8;
      border: 1px solid #bfdbfe;
      padding: 4px 10px;
      border-radius: var(--radius-full);
      font-size: 0.8rem;
      font-weight: 700;
    }

    /* 3D FLASHCARD CONTAINER */
    .fc-wrap {
      position: relative;
      width: 100%;
    }

    .fc-stage {
      perspective: 1200px;
      width: 100%;
      height: 380px;
      position: relative;
    }

    @media (max-width: 600px) {
      .fc-stage {
        height: 420px;
      }
    }

    .fc-inner {
      width: 100%;
      height: 100%;
      position: relative;
      transition: transform 0.6s cubic-bezier(0.4, 0, 0.2, 1);
      transform-style: preserve-3d;
      border-radius: var(--radius-lg);
    }

    .fc-stage.flipped .fc-inner {
      transform: rotateY(180deg);
    }

    .fc-face {
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      backface-visibility: hidden;
      -webkit-backface-visibility: hidden;
      background: var(--surface);
      border-radius: var(--radius-lg);
      border: 1px solid var(--border);
      box-shadow: var(--shadow-xl);
      padding: 24px;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      text-align: center;
      cursor: pointer;
      user-select: none;
      overflow-y: auto;
    }

    .fc-back {
      transform: rotateY(180deg);
      background: #fafcff;
      border-color: #bfdbfe;
    }

    /* FLANK BUTTONS */
    .btn-flank {
      position: absolute;
      top: 50%;
      transform: translateY(-50%);
      width: 44px;
      height: 44px;
      border-radius: 50%;
      background: rgba(255, 255, 255, 0.95);
      border: 1px solid var(--border);
      color: #1e293b;
      font-size: 1.25rem;
      font-weight: 800;
      display: flex;
      align-items: center;
      justify-content: center;
      cursor: pointer;
      box-shadow: 0 4px 12px rgba(0,0,0,0.12);
      z-index: 10;
      transition: all 0.2s ease;
      backdrop-filter: blur(4px);
    }

    .btn-flank:hover {
      background: #2563eb;
      color: white;
      border-color: #2563eb;
      transform: translateY(-50%) scale(1.08);
      box-shadow: 0 6px 16px rgba(37, 99, 235, 0.35);
    }

    .btn-flank.flank-prev { left: -20px; }
    .btn-flank.flank-next { right: -20px; }

    @media (max-width: 768px) {
      .btn-flank.flank-prev { left: 4px; }
      .btn-flank.flank-next { right: 4px; }
    }

    /* CARD CONTENT STYLING */
    .fc-top-tag {
      position: absolute;
      top: 16px;
      left: 20px;
      background: #f1f5f9;
      color: #475569;
      font-size: 0.75rem;
      font-weight: 700;
      padding: 3px 10px;
      border-radius: var(--radius-full);
    }

    .fc-hint-tag {
      position: absolute;
      top: 16px;
      right: 20px;
      font-size: 0.75rem;
      color: var(--text-muted);
      font-weight: 600;
    }

    .fc-main-text {
      font-size: 1.45rem;
      font-weight: 700;
      color: #0f172a;
      line-height: 1.5;
      margin: 12px 0;
      max-width: 90%;
    }

    .fc-sub-hint {
      font-size: 0.82rem;
      color: var(--text-muted);
      margin-top: 8px;
    }

    .fc-zh {
      font-family: var(--font-zh);
      font-size: 1.9rem;
      font-weight: 700;
      color: #1e3a8a;
      line-height: 1.45;
      letter-spacing: 0.02em;
      margin-bottom: 6px;
      max-width: 92%;
    }

    .fc-py {
      font-size: 1.15rem;
      font-weight: 600;
      color: #0284c7;
      margin-bottom: 12px;
    }

    .hide-pinyin .fc-py, .hide-pinyin .py-text {
      display: none !important;
    }

    .fc-meaning {
      font-size: 0.95rem;
      color: #334155;
      background: #ffffff;
      border: 1px solid #e2e8f0;
      padding: 8px 16px;
      border-radius: var(--radius-md);
      margin-bottom: 14px;
      max-width: 92%;
    }

    .fc-actions {
      display: flex;
      gap: 8px;
      margin-top: 6px;
    }

    /* CARD BOTTOM NAV */
    .bottom-nav {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 10px;
      background: var(--surface);
      padding: 10px 14px;
      border-radius: var(--radius-md);
      border: 1px solid var(--border);
      box-shadow: var(--shadow-sm);
    }

    .btn-nav {
      background: #f8fafc;
      border: 1px solid var(--border);
      color: var(--text);
      padding: 9px 16px;
      border-radius: var(--radius-md);
      font-size: 0.85rem;
      font-weight: 700;
      cursor: pointer;
      display: inline-flex;
      align-items: center;
      gap: 6px;
      transition: all 0.2s;
    }

    .btn-nav:hover {
      background: #f1f5f9;
      border-color: #cbd5e1;
    }

    .btn-nav.primary {
      background: #2563eb;
      color: white;
      border-color: #2563eb;
    }

    .btn-nav.primary:hover {
      background: #1d4ed8;
    }

    .shortcut-tip {
      font-size: 0.75rem;
      color: var(--text-muted);
      text-align: center;
      margin-top: -6px;
    }

    /* TAB 3: PICTURE LIST CARDS */
    .pic-list-container {
      display: flex;
      flex-direction: column;
      gap: 20px;
    }

    .pic-item-card {
      background: var(--surface);
      border-radius: var(--radius-lg);
      border: 1px solid var(--border);
      box-shadow: var(--shadow-sm);
      padding: 20px;
      display: grid;
      grid-template-columns: 240px 1fr;
      gap: 20px;
      transition: border-color 0.2s;
    }

    .pic-item-card:hover {
      border-color: #93c5fd;
    }

    @media (max-width: 768px) {
      .pic-item-card {
        grid-template-columns: 1fr;
        padding: 16px;
      }
    }

    .pic-img-col {
      display: flex;
      flex-direction: column;
      gap: 8px;
    }

    .pic-img-box {
      border-radius: var(--radius-md);
      overflow: hidden;
      background: #f8fafc;
      border: 1px solid var(--border);
      height: 200px;
      display: flex;
      align-items: center;
      justify-content: center;
      cursor: zoom-in;
      position: relative;
    }

    .pic-img-box img {
      max-width: 100%;
      max-height: 100%;
      object-fit: contain;
      transition: transform 0.2s;
    }

    .pic-img-box:hover img {
      transform: scale(1.03);
    }

    .pic-header-row {
      display: flex;
      justify-content: space-between;
      align-items: center;
      gap: 10px;
      margin-bottom: 8px;
      flex-wrap: wrap;
    }

    .metric-badge {
      background: #ecfdf5;
      color: #065f46;
      border: 1px solid #a7f3d0;
      padding: 3px 9px;
      border-radius: var(--radius-full);
      font-size: 0.75rem;
      font-weight: 800;
    }

    .kw-pills {
      display: flex;
      flex-wrap: wrap;
      gap: 5px;
      margin: 8px 0 12px;
    }

    .kw-pill {
      background: #f1f5f9;
      padding: 3px 8px;
      border-radius: var(--radius-full);
      font-size: 0.75rem;
      color: #334155;
    }
    .kw-pill b {
      font-family: var(--font-zh);
      color: #2563eb;
    }

    /* 3 SENTENCE STEP BOXES */
    .steps-grid {
      display: flex;
      flex-direction: column;
      gap: 8px;
      margin-bottom: 12px;
    }

    .step-box {
      background: #f8fafc;
      border: 1px solid #e2e8f0;
      border-radius: 8px;
      padding: 9px 12px;
      position: relative;
    }

    .step-label {
      font-size: 0.68rem;
      font-weight: 800;
      color: #2563eb;
      background: #eff6ff;
      padding: 1px 6px;
      border-radius: 4px;
      display: inline-block;
      margin-bottom: 4px;
    }

    .step-zh {
      font-family: var(--font-zh);
      font-size: 1.15rem;
      font-weight: 700;
      color: #0f172a;
      line-height: 1.4;
      margin-bottom: 2px;
    }

    .step-py {
      font-size: 0.8rem;
      font-weight: 600;
      color: #0284c7;
      margin-bottom: 2px;
    }

    .step-vn {
      font-size: 0.78rem;
      color: #475569;
    }

    .btn-step-speak {
      position: absolute;
      right: 10px;
      bottom: 8px;
      background: none;
      border: none;
      font-size: 1rem;
      cursor: pointer;
      color: #64748b;
    }
    .btn-step-speak:hover { color: #2563eb; }

    /* FULL TEXT BOX */
    .full-p-box {
      background: #eff6ff;
      border: 1px solid #bfdbfe;
      border-radius: var(--radius-md);
      padding: 12px 14px;
      margin-bottom: 10px;
    }

    .full-zh {
      font-family: var(--font-zh);
      font-size: 1.15rem;
      font-weight: 700;
      color: #1e3a8a;
      line-height: 1.6;
      margin-bottom: 4px;
    }

    .full-py {
      font-size: 0.82rem;
      color: #0369a1;
      font-weight: 600;
      margin-bottom: 4px;
    }

    .full-vn {
      font-size: 0.8rem;
      color: #334155;
      border-top: 1px dashed #bfdbfe;
      padding-top: 4px;
    }

    .grammar-note {
      font-size: 0.75rem;
      color: #065f46;
      background: #f0fdf4;
      border: 1px solid #bbf7d0;
      border-radius: 6px;
      padding: 6px 10px;
      line-height: 1.4;
      margin-bottom: 10px;
    }

    /* LIGHTBOX */
    .lightbox-modal {
      display: none;
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background: rgba(15, 23, 42, 0.85);
      z-index: 1000;
      align-items: center;
      justify-content: center;
      padding: 20px;
      backdrop-filter: blur(5px);
    }

    .lightbox-modal.active { display: flex; }

    .lightbox-img {
      max-width: 92vw;
      max-height: 85vh;
      border-radius: 12px;
      box-shadow: 0 25px 50px -12px rgba(0, 0, 0, 0.5);
    }

    .lightbox-close {
      position: absolute;
      top: 20px;
      right: 20px;
      background: white;
      border: none;
      width: 40px;
      height: 40px;
      border-radius: 50%;
      font-size: 1.2rem;
      cursor: pointer;
    }

    /* TOAST */
    .toast {
      position: fixed;
      bottom: 24px;
      left: 50%;
      transform: translateX(-50%);
      background: #1e293b;
      color: white;
      padding: 8px 18px;
      border-radius: var(--radius-full);
      font-size: 0.82rem;
      font-weight: 600;
      opacity: 0;
      pointer-events: none;
      transition: opacity 0.3s ease;
      z-index: 200;
      box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.2);
    }

    .toast.show { opacity: 1; }

    footer {
      text-align: center;
      padding: 20px;
      font-size: 0.78rem;
      color: var(--text-muted);
      border-top: 1px solid var(--border);
      background: var(--surface);
      margin-top: auto;
    }
  </style>
</head>
<body>

  <!-- HEADER -->
  <header>
    <div class="header-inner">
      <div class="brand">
        <div class="brand-icon">🇨🇳</div>
        <div class="brand-text">
          <h1>HSK 1 MASTER • ÔN TẬP TOÀN DIỆN</h1>
          <p>Flashcard Dịch 110 Câu • Flashcard 150 Từ Vựng • 11 Tranh Miêu Tả</p>
        </div>
      </div>
      <div class="header-tools">
        <button class="btn-tool" onclick="togglePinyin()">
          <span>🔤</span> <span id="pinyin-label">Pinyin: Bật</span>
        </button>
        <select id="audio-speed-select" class="btn-tool" style="cursor:pointer;" onchange="changeSpeed(this.value)">
          <option value="1.0">Tốc độ: 1.0x</option>
          <option value="0.8">Tốc độ: 0.8x (Chậm)</option>
        </select>
      </div>
    </div>
  </header>

  <!-- NAVIGATION TABS -->
  <div class="nav-tabs-wrap">
    <div class="nav-tabs-inner">
      <button class="tab-btn active" id="tab-btn-sentences" onclick="switchTab('tab-sentences')">
        <span>🃏</span> Flashcard 110 Câu Dịch
      </button>
      <button class="tab-btn" id="tab-btn-vocab" onclick="switchTab('tab-vocab')">
        <span>🗂️</span> Flashcard 150 Từ Vựng
      </button>
      <button class="tab-btn" id="tab-btn-pics" onclick="switchTab('tab-pics')">
        <span>🖼️</span> 11 Tranh Miêu Tả (3 Câu ~40 Chữ)
      </button>
    </div>
  </div>

  <!-- MAIN -->
  <main>

    <!-- ================= TAB 1: FLASHCARD 110 CÂU DỊCH ================= -->
    <section id="tab-sentences" class="tab-content active">
      <div class="filter-bar">
        <div class="filter-group">
          <label style="font-size:0.8rem; font-weight:700; color:#475569;">Chọn bài:</label>
          <select id="sentence-lesson-filter" class="filter-select" onchange="filterSentences(this.value)">
            <option value="ALL">Tất cả 110 câu</option>
            <option value="Bài 3">Bài 3 (4 câu)</option>
            <option value="Bài 4">Bài 4 (8 câu)</option>
            <option value="Bài 5">Bài 5 (9 câu)</option>
            <option value="Bài 6">Bài 6 (9 câu)</option>
            <option value="Bài 7">Bài 7 (7 câu)</option>
            <option value="Bài 8">Bài 8 (8 câu)</option>
            <option value="Bài 9">Bài 9 (8 câu)</option>
            <option value="Bài 10">Bài 10 (10 câu)</option>
            <option value="Bài 11">Bài 11 (12 câu)</option>
            <option value="Bài 12+13">Bài 12+13 (17 câu)</option>
            <option value="Bài 14+15">Bài 14+15 (18 câu)</option>
          </select>
          <button class="btn-tool" onclick="shuffleSentences()">🔀 Xáo trộn</button>
        </div>
        <span class="badge-counter" id="sentence-counter">Câu 1 / 110</span>
      </div>

      <!-- SENTENCE FLASHCARD -->
      <div class="fc-wrap">
        <button class="btn-flank flank-prev" onclick="prevSentence()" title="Câu trước">❮</button>
        <button class="btn-flank flank-next" onclick="nextSentence()" title="Câu tiếp">❯</button>

        <div class="fc-stage" id="sentence-fc-stage" onclick="flipSentenceCard()">
          <div class="fc-inner">
            <!-- FRONT: VIETNAMESE -->
            <div class="fc-face fc-front">
              <span class="fc-top-tag" id="s-front-tag">Bài 3 • Câu 1</span>
              <span class="fc-hint-tag">Mặt trước: Tiếng Việt</span>
              <div class="fc-main-text" id="s-front-vn">Bạn là người Mỹ phải không?</div>
              <div class="fc-sub-hint">💡 Chạm vào thẻ hoặc bấm phím Cách để lật xem Chữ Hán & Phiên âm</div>
              <div style="margin-top:14px;">
                <button class="btn-nav primary" style="pointer-events:none;">🔄 Lật xem Đáp án</button>
              </div>
            </div>

            <!-- BACK: CHINESE & PINYIN -->
            <div class="fc-face fc-back">
              <span class="fc-top-tag" id="s-back-tag">Bài 3 • Đáp án chuẩn</span>
              <span class="fc-hint-tag">Mặt sau: Chữ Hán & Pinyin</span>
              <div class="fc-zh" id="s-back-zh">你是美国人吗？</div>
              <div class="fc-py" id="s-back-py">Nǐ shì Měiguó rén ma?</div>
              <div class="fc-meaning" id="s-back-vn">Bạn là người Mỹ phải không?</div>
              <div class="fc-actions" onclick="event.stopPropagation()">
                <button class="btn-tool" onclick="playChinese(currentSentence.zh)">🔊 Nghe phát âm</button>
                <button class="btn-tool" onclick="copyText(currentSentence.zh)">📋 Sao chép</button>
                <button class="btn-tool" onclick="flipSentenceCard()">🔄 Lật lại</button>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- SENTENCE BOTTOM NAV -->
      <div class="bottom-nav">
        <button class="btn-nav" onclick="prevSentence()">⬅️ Câu trước</button>
        <select id="sentence-jump-select" class="filter-select" style="max-width:280px;" onchange="jumpToSentence(parseInt(this.value))">
          <!-- Populated via JS -->
        </select>
        <button class="btn-nav primary" onclick="nextSentence()">Câu tiếp ➡️</button>
      </div>
      <div class="shortcut-tip">💡 Mẹo: Bấm phím <b>Cách (Space)</b> để lật thẻ | Mũi tên <b>Trái / Phải</b> để chuyển câu | Phím <b>M</b> để nghe đọc</div>
    </section>

    <!-- ================= TAB 2: FLASHCARD 150 TỪ VỰNG HSK 1 ================= -->
    <section id="tab-vocab" class="tab-content">
      <div class="filter-bar">
        <div class="filter-group">
          <label style="font-size:0.8rem; font-weight:700; color:#475569;">Nhóm từ:</label>
          <select id="vocab-cat-filter" class="filter-select" onchange="filterVocab(this.value)">
            <option value="ALL">Tất cả 150 từ vựng</option>
            <option value="Đại từ">Đại từ (14)</option>
            <option value="Người & Gia đình">Người & Gia đình (11)</option>
            <option value="Thời gian">Thời gian (14)</option>
            <option value="Địa điểm & Vị trí">Địa điểm & Vị trí (12)</option>
            <option value="Đồ vật & Đời sống">Đồ vật & Đời sống (22)</option>
            <option value="Động từ">Động từ (30)</option>
            <option value="Tính từ">Tính từ (10)</option>
            <option value="Phó từ & Trợ từ">Phó từ & Trợ từ (14)</option>
            <option value="Số & Lượng từ">Số & Lượng từ (16)</option>
            <option value="Giao tiếp">Giao tiếp (7)</option>
          </select>
          <button class="btn-tool" onclick="shuffleVocab()">🔀 Xáo trộn</button>
        </div>
        <span class="badge-counter" id="vocab-counter">Từ 1 / 150</span>
      </div>

      <!-- VOCAB FLASHCARD -->
      <div class="fc-wrap">
        <button class="btn-flank flank-prev" onclick="prevVocab()" title="Từ trước">❮</button>
        <button class="btn-flank flank-next" onclick="nextVocab()" title="Từ tiếp">❯</button>

        <div class="fc-stage" id="vocab-fc-stage" onclick="flipVocabCard()">
          <div class="fc-inner">
            <!-- FRONT: VIETNAMESE -->
            <div class="fc-face fc-front">
              <span class="fc-top-tag" id="v-front-tag">Nhóm: Đại từ</span>
              <span class="fc-hint-tag">Mặt trước: Tiếng Việt</span>
              <div class="fc-main-text" id="v-front-vn" style="font-size:1.9rem; color:#1d4ed8;">tôi, mình</div>
              <div class="fc-sub-hint">Bạn có nhớ cách đọc Pinyin và viết Chữ Hán không?</div>
              <div style="margin-top:16px;">
                <button class="btn-nav primary" style="pointer-events:none;">🔄 Lật xem Chữ Hán & Pinyin</button>
              </div>
            </div>

            <!-- BACK: PINYIN & HANZI -->
            <div class="fc-face fc-back">
              <span class="fc-top-tag" id="v-back-tag">HSK 1 Chuẩn</span>
              <span class="fc-hint-tag">Mặt sau: Phiên âm & Chữ Hán</span>
              <div class="fc-py" id="v-back-py" style="font-size:1.45rem; color:#0284c7; margin-bottom:4px;">wǒ</div>
              <div class="fc-zh" id="v-back-zh" style="font-size:3rem; margin-bottom:8px;">我</div>
              <div class="fc-meaning" id="v-back-vn">Nghĩa: tôi, mình</div>
              <div class="fc-actions" onclick="event.stopPropagation()">
                <button class="btn-tool" onclick="playChinese(currentVocab.zh)">🔊 Nghe phát âm</button>
                <button class="btn-tool" onclick="copyText(currentVocab.zh)">📋 Sao chép</button>
                <button class="btn-tool" onclick="flipVocabCard()">🔄 Lật lại</button>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- VOCAB BOTTOM NAV -->
      <div class="bottom-nav">
        <button class="btn-nav" onclick="prevVocab()">⬅️ Từ trước</button>
        <select id="vocab-jump-select" class="filter-select" style="max-width:280px;" onchange="jumpToVocab(parseInt(this.value))">
          <!-- Populated via JS -->
        </select>
        <button class="btn-nav primary" onclick="nextVocab()">Từ tiếp ➡️</button>
      </div>
      <div class="shortcut-tip">💡 Mẹo: Bấm phím <b>Cách (Space)</b> để lật thẻ | Mũi tên <b>Trái / Phải</b> để chuyển từ | Phím <b>M</b> để nghe đọc</div>
    </section>

    <!-- ================= TAB 3: DANH SÁCH 11 BỨC TRANH MIÊU TẢ ================= -->
    <section id="tab-pics" class="tab-content">
      <div class="filter-bar">
        <div>
          <span style="font-weight:800; font-size:0.95rem; color:#0f172a;">🖼️ 11 BỨC TRANH THI NÓI HSK 1</span>
          <p style="font-size:0.75rem; color:#64748b;">Mỗi bức tranh được chuẩn hóa đúng <b>3 câu • tầm 40 chữ Hán</b> theo cấu trúc thi nói chuẩn</p>
        </div>
        <span class="metric-badge">Đủ 11 Tranh Đề Thi</span>
      </div>

      <div class="pic-list-container" id="pic-list-container">
        <!-- Rendered via JS -->
      </div>
    </section>

  </main>

  <!-- LIGHTBOX MODAL -->
  <div class="lightbox-modal" id="lightbox" onclick="closeLightbox()">
    <button class="lightbox-close" onclick="closeLightbox()">✕</button>
    <img class="lightbox-img" id="lightbox-img" src="" alt="Phóng to tranh">
  </div>

  <!-- TOAST -->
  <div class="toast" id="toast">Thông báo</div>

  <!-- EMBEDDED DATA & SCRIPT -->
  <script>
    const SENTENCES_DATA = __SENTENCES_JSON__;
    const VOCAB_DATA = __VOCAB_JSON__;
    const PICS_DATA = __CARDS_JSON__;

    let activeTab = 'tab-sentences';
    let showPinyin = true;
    let speechRate = 1.0;

    // SENTENCES STATE
    let currentSentences = [...SENTENCES_DATA];
    let sentenceIndex = 0;
    let isSentenceFlipped = false;
    let currentSentence = currentSentences[0];

    // VOCAB STATE
    let currentVocabs = [...VOCAB_DATA];
    let vocabIndex = 0;
    let isVocabFlipped = false;
    let currentVocab = currentVocabs[0];

    // INIT
    window.addEventListener('DOMContentLoaded', () => {
      initSentences();
      initVocab();
      renderPicsList();
      setupKeyboard();
    });

    // TAB SWITCHING
    function switchTab(tabId) {
      activeTab = tabId;
      document.querySelectorAll('.tab-btn').forEach(btn => btn.classList.remove('active'));
      document.querySelectorAll('.tab-content').forEach(c => c.classList.remove('active'));

      if (tabId === 'tab-sentences') {
        document.getElementById('tab-btn-sentences').classList.add('active');
        document.getElementById('tab-sentences').classList.add('active');
      } else if (tabId === 'tab-vocab') {
        document.getElementById('tab-btn-vocab').classList.add('active');
        document.getElementById('tab-vocab').classList.add('active');
      } else if (tabId === 'tab-pics') {
        document.getElementById('tab-btn-pics').classList.add('active');
        document.getElementById('tab-pics').classList.add('active');
      }
    }

    // ================= 1. SENTENCES MODULE =================
    function initSentences() {
      populateSentenceSelect();
      renderSentence(0);
    }

    function populateSentenceSelect() {
      const select = document.getElementById('sentence-jump-select');
      select.innerHTML = '';
      currentSentences.forEach((s, idx) => {
        const opt = document.createElement('option');
        opt.value = idx;
        opt.textContent = `${idx + 1}. [${s.bai}] ${s.vn.substring(0, 30)}...`;
        select.appendChild(opt);
      });
    }

    function renderSentence(idx) {
      if (idx < 0 || idx >= currentSentences.length) return;
      sentenceIndex = idx;
      currentSentence = currentSentences[idx];

      document.getElementById('sentence-fc-stage').classList.remove('flipped');
      isSentenceFlipped = false;

      document.getElementById('sentence-counter').textContent = `Câu ${idx + 1} / ${currentSentences.length}`;
      document.getElementById('sentence-jump-select').value = idx;

      document.getElementById('s-front-tag').textContent = `${currentSentence.bai} • Câu ${idx + 1}`;
      document.getElementById('s-front-vn').textContent = currentSentence.vn;

      document.getElementById('s-back-tag').textContent = `${currentSentence.bai} • Đáp án chuẩn`;
      document.getElementById('s-back-zh').textContent = currentSentence.zh;
      document.getElementById('s-back-py').textContent = currentSentence.py;
      document.getElementById('s-back-vn').textContent = currentSentence.vn;
    }

    function flipSentenceCard() {
      const stage = document.getElementById('sentence-fc-stage');
      isSentenceFlipped = !isSentenceFlipped;
      stage.classList.toggle('flipped', isSentenceFlipped);
    }

    function nextSentence() {
      if (sentenceIndex < currentSentences.length - 1) {
        renderSentence(sentenceIndex + 1);
      } else {
        renderSentence(0);
      }
    }

    function prevSentence() {
      if (sentenceIndex > 0) {
        renderSentence(sentenceIndex - 1);
      } else {
        renderSentence(currentSentences.length - 1);
      }
    }

    function jumpToSentence(idx) {
      renderSentence(idx);
    }

    function filterSentences(val) {
      if (val === 'ALL') {
        currentSentences = [...SENTENCES_DATA];
      } else {
        currentSentences = SENTENCES_DATA.filter(s => s.bai === val);
      }
      populateSentenceSelect();
      renderSentence(0);
      showToast(`Đã lọc: ${currentSentences.length} câu`);
    }

    function shuffleSentences() {
      currentSentences.sort(() => Math.random() - 0.5);
      populateSentenceSelect();
      renderSentence(0);
      showToast('Đã xáo trộn ngẫu nhiên 110 câu');
    }

    // ================= 2. VOCAB MODULE =================
    function initVocab() {
      populateVocabSelect();
      renderVocab(0);
    }

    function populateVocabSelect() {
      const select = document.getElementById('vocab-jump-select');
      select.innerHTML = '';
      currentVocabs.forEach((v, idx) => {
        const opt = document.createElement('option');
        opt.value = idx;
        opt.textContent = `${idx + 1}. [${v.cat}] ${v.vn} (${v.py})`;
        select.appendChild(opt);
      });
    }

    function renderVocab(idx) {
      if (idx < 0 || idx >= currentVocabs.length) return;
      vocabIndex = idx;
      currentVocab = currentVocabs[idx];

      document.getElementById('vocab-fc-stage').classList.remove('flipped');
      isVocabFlipped = false;

      document.getElementById('vocab-counter').textContent = `Từ ${idx + 1} / ${currentVocabs.length}`;
      document.getElementById('vocab-jump-select').value = idx;

      document.getElementById('v-front-tag').textContent = `Nhóm: ${currentVocab.cat}`;
      document.getElementById('v-front-vn').textContent = currentVocab.vn;

      document.getElementById('v-back-tag').textContent = `HSK 1: ${currentVocab.cat}`;
      document.getElementById('v-back-py').textContent = currentVocab.py;
      document.getElementById('v-back-zh').textContent = currentVocab.zh;
      document.getElementById('v-back-vn').textContent = `Nghĩa: ${currentVocab.vn}`;
    }

    function flipVocabCard() {
      const stage = document.getElementById('vocab-fc-stage');
      isVocabFlipped = !isVocabFlipped;
      stage.classList.toggle('flipped', isVocabFlipped);
    }

    function nextVocab() {
      if (vocabIndex < currentVocabs.length - 1) {
        renderVocab(vocabIndex + 1);
      } else {
        renderVocab(0);
      }
    }

    function prevVocab() {
      if (vocabIndex > 0) {
        renderVocab(vocabIndex - 1);
      } else {
        renderVocab(currentVocabs.length - 1);
      }
    }

    function jumpToVocab(idx) {
      renderVocab(idx);
    }

    function filterVocab(val) {
      if (val === 'ALL') {
        currentVocabs = [...VOCAB_DATA];
      } else {
        currentVocabs = VOCAB_DATA.filter(v => v.cat === val);
      }
      populateVocabSelect();
      renderVocab(0);
      showToast(`Đã lọc: ${currentVocabs.length} từ`);
    }

    function shuffleVocab() {
      currentVocabs.sort(() => Math.random() - 0.5);
      populateVocabSelect();
      renderVocab(0);
      showToast('Đã xáo trộn ngẫu nhiên từ vựng');
    }

    // ================= 3. PICTURE LIST MODULE =================
    function renderPicsList() {
      const container = document.getElementById('pic-list-container');
      container.innerHTML = PICS_DATA.map((p, idx) => `
        <article class="pic-item-card">
          <div class="pic-img-col">
            <div class="pic-img-box" onclick="openLightbox('${p.pic}')">
              <img src="${p.pic}" alt="Tranh ${p.num}" loading="lazy">
            </div>
            <div style="font-size:0.75rem; color:#64748b; text-align:center;">🔍 Chạm để phóng to tranh</div>
          </div>
          <div>
            <div class="pic-header-row">
              <div style="font-size:1.1rem; font-weight:800; color:#0f172a;">${p.title}</div>
              <span class="metric-badge">✨ ${p.sentence_count} CÂU • ${p.char_count} CHỮ HÁN</span>
            </div>

            <!-- KEYWORDS -->
            <div class="kw-pills">
              ${p.keywords.map(k => `<span class="kw-pill"><b>${k.zh}</b> (${k.py}: ${k.vn})</span>`).join('')}
            </div>

            <!-- 3 STEPS BREAKDOWN -->
            <div class="steps-grid">
              ${p.sentences.map(s => `
                <div class="step-box">
                  <span class="step-label">${s.step} • ${s.chars} chữ</span>
                  <div class="step-zh">${s.zh}</div>
                  <div class="step-py py-text">${s.py}</div>
                  <div class="step-vn"><b>Dịch:</b> ${s.vn}</div>
                  <button class="btn-step-speak" onclick="playChinese('${s.zh}')" title="Nghe câu này">🔊</button>
                </div>
              `).join('')}
            </div>

            <!-- FULL PARAGRAPH -->
            <div class="full-p-box">
              <div class="full-zh">${p.full_zh}</div>
              <div class="full-py py-text">${p.full_py}</div>
              <div class="full-vn"><b>Dịch toàn bài:</b> ${p.full_vn}</div>
            </div>

            <div class="grammar-note">${p.grammar_notes}</div>

            <div style="display:flex; gap:8px;">
              <button class="btn-tool" onclick="playChinese('${p.full_zh}')">🔊 Nghe toàn bài</button>
              <button class="btn-tool" onclick="copyText('${p.title}\\n\\n${p.full_zh}\\n${p.full_py}\\n${p.full_vn}')">📋 Sao chép</button>
            </div>
          </div>
        </article>
      `).join('');
    }

    // ================= AUDIO SPEECH =================
    function playChinese(text) {
      if (!('speechSynthesis' in window)) {
        showToast('Trình duyệt không hỗ trợ phát âm tự động');
        return;
      }
      window.speechSynthesis.cancel();

      const utter = new SpeechSynthesisUtterance(text);
      utter.lang = 'zh-CN';
      utter.rate = speechRate;

      const voices = window.speechSynthesis.getVoices();
      const zhVoice = voices.find(v => v.lang.startsWith('zh') || v.lang.includes('cmn'));
      if (zhVoice) utter.voice = zhVoice;

      window.speechSynthesis.speak(utter);
      showToast('Đang phát âm...');
    }

    function changeSpeed(val) {
      speechRate = parseFloat(val);
      showToast(`Tốc độ phát âm: ${speechRate}x`);
    }

    // ================= PINYIN TOGGLE =================
    function togglePinyin() {
      showPinyin = !showPinyin;
      document.body.classList.toggle('hide-pinyin', !showPinyin);
      document.getElementById('pinyin-label').textContent = showPinyin ? 'Pinyin: Bật' : 'Pinyin: Tắt';
      showToast(showPinyin ? 'Đã bật hiển thị Pinyin' : 'Đã ẩn Pinyin để tự luyện đọc');
    }

    // ================= KEYBOARD SHORTCUTS =================
    function setupKeyboard() {
      document.addEventListener('keydown', (e) => {
        if (e.target.tagName === 'INPUT' || e.target.tagName === 'TEXTAREA' || e.target.tagName === 'SELECT') return;

        if (activeTab === 'tab-sentences') {
          if (e.code === 'Space' || e.code === 'ArrowUp' || e.code === 'ArrowDown') {
            e.preventDefault();
            flipSentenceCard();
          } else if (e.code === 'ArrowRight') {
            e.preventDefault();
            nextSentence();
          } else if (e.code === 'ArrowLeft') {
            e.preventDefault();
            prevSentence();
          } else if (e.key === 'm' || e.key === 'M') {
            playChinese(currentSentence.zh);
          }
        } else if (activeTab === 'tab-vocab') {
          if (e.code === 'Space' || e.code === 'ArrowUp' || e.code === 'ArrowDown') {
            e.preventDefault();
            flipVocabCard();
          } else if (e.code === 'ArrowRight') {
            e.preventDefault();
            nextVocab();
          } else if (e.code === 'ArrowLeft') {
            e.preventDefault();
            prevVocab();
          } else if (e.key === 'm' || e.key === 'M') {
            playChinese(currentVocab.zh);
          }
        }
      });
    }

    // ================= LIGHTBOX =================
    function openLightbox(src) {
      document.getElementById('lightbox-img').src = src;
      document.getElementById('lightbox').classList.add('active');
    }

    function closeLightbox() {
      document.getElementById('lightbox').classList.remove('active');
    }

    // ================= CLIPBOARD =================
    function copyText(txt) {
      navigator.clipboard.writeText(txt).then(() => {
        showToast('Đã sao chép vào bộ nhớ tạm!');
      }).catch(() => {
        showToast('Không thể sao chép');
      });
    }

    // ================= TOAST =================
    function showToast(msg) {
      const t = document.getElementById('toast');
      t.textContent = msg;
      t.classList.add('show');
      setTimeout(() => t.classList.remove('show'), 2000);
    }
  </script>
</body>
</html>
'@

$finalHtml = $template.Replace('__SENTENCES_JSON__', $sentencesRaw)
$finalHtml = $finalHtml.Replace('__VOCAB_JSON__', $vocabRaw)
$finalHtml = $finalHtml.Replace('__CARDS_JSON__', $cardsRaw)

$finalHtml | Out-File -FilePath 'C:\Users\ADMIN\.gemini\antigravity\scratch\hsk1-practice\index.html' -Encoding utf8
Write-Output "Successfully built index.html. Total size: $([System.IO.FileInfo]::new('C:\Users\ADMIN\.gemini\antigravity\scratch\hsk1-practice\index.html').Length) bytes."
