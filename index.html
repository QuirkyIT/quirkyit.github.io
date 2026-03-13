<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>QuirkIT – Customised IT Solutions</title>
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Space+Mono:ital,wght@0,400;0,700;1,400&family=Syne:wght@400;600;700;800&display=swap" rel="stylesheet" />
  <style>
    /* ───── TOKENS ───── */
    :root {
      --navy:    #1e2060;
      --indigo:  #2d3291;
      --bright:  #4a52d8;
      --grey:    #6b7280;
      --mid:     #374151;
      --dark:    #0a0b1a;
      --darker:  #060710;
      --light:   #e8eaf6;
      --white:   #f5f6ff;
      --accent:  #00e5ff;
      --warn:    #ff6b35;
      --mono:    'Space Mono', monospace;
      --sans:    'Syne', sans-serif;
    }

    /* ───── RESET ───── */
    *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }
    html { scroll-behavior: smooth; }
    body {
      background: var(--darker);
      color: var(--light);
      font-family: var(--sans);
      overflow-x: hidden;
    }

    /* ───── BACKGROUND GRID ───── */
    body::before {
      content: '';
      position: fixed;
      inset: 0;
      background-image:
        linear-gradient(rgba(45,50,145,0.07) 1px, transparent 1px),
        linear-gradient(90deg, rgba(45,50,145,0.07) 1px, transparent 1px);
      background-size: 40px 40px;
      pointer-events: none;
      z-index: 0;
    }

    /* ───── NAV ───── */
    nav {
      position: fixed;
      top: 0; left: 0; right: 0;
      z-index: 100;
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 1rem 2.5rem;
      background: rgba(6,7,16,0.85);
      backdrop-filter: blur(12px);
      border-bottom: 1px solid rgba(74,82,216,0.2);
    }
    .nav-logo img { height: 40px; }
    .nav-links { display: flex; gap: 2.5rem; list-style: none; }
    .nav-links a {
      font-family: var(--mono);
      font-size: 0.78rem;
      color: var(--grey);
      text-decoration: none;
      letter-spacing: 0.1em;
      text-transform: uppercase;
      transition: color 0.2s;
    }
    .nav-links a:hover { color: var(--accent); }

    /* ───── HERO ───── */
    .hero {
      position: relative;
      min-height: 100vh;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: flex-start;
      padding: 8rem 2.5rem 4rem;
      max-width: 1100px;
      margin: 0 auto;
      z-index: 1;
    }
    .hero-eyebrow {
      font-family: var(--mono);
      font-size: 0.75rem;
      color: var(--accent);
      letter-spacing: 0.25em;
      text-transform: uppercase;
      margin-bottom: 1.5rem;
      opacity: 0;
      animation: fadeUp 0.6s 0.2s forwards;
    }
    .hero-eyebrow::before { content: '> '; opacity: 0.5; }
    .hero h1 {
      font-family: var(--sans);
      font-weight: 800;
      font-size: clamp(3rem, 7vw, 6.5rem);
      line-height: 0.95;
      letter-spacing: -0.02em;
      color: var(--white);
      opacity: 0;
      animation: fadeUp 0.6s 0.35s forwards;
    }
    .hero h1 span {
      color: transparent;
      -webkit-text-stroke: 1.5px var(--indigo);
    }
    .hero-sub {
      margin-top: 2rem;
      max-width: 540px;
      font-size: 1.1rem;
      line-height: 1.7;
      color: var(--grey);
      opacity: 0;
      animation: fadeUp 0.6s 0.5s forwards;
    }
    .hero-cta {
      margin-top: 2.5rem;
      display: flex;
      gap: 1rem;
      flex-wrap: wrap;
      opacity: 0;
      animation: fadeUp 0.6s 0.65s forwards;
    }
    .btn {
      font-family: var(--mono);
      font-size: 0.8rem;
      letter-spacing: 0.1em;
      text-transform: uppercase;
      padding: 0.85rem 2rem;
      border-radius: 3px;
      text-decoration: none;
      transition: all 0.2s;
      cursor: pointer;
      border: none;
    }
    .btn-primary {
      background: var(--indigo);
      color: var(--white);
      border: 1px solid var(--bright);
    }
    .btn-primary:hover {
      background: var(--bright);
      box-shadow: 0 0 24px rgba(74,82,216,0.5);
    }
    .btn-ghost {
      background: transparent;
      color: var(--accent);
      border: 1px solid rgba(0,229,255,0.4);
    }
    .btn-ghost:hover {
      background: rgba(0,229,255,0.07);
      border-color: var(--accent);
    }

    /* floating terminal badge */
    .hero-badge {
      position: absolute;
      right: 2.5rem;
      top: 50%;
      transform: translateY(-50%);
      width: 320px;
      background: rgba(10,11,26,0.9);
      border: 1px solid rgba(74,82,216,0.35);
      border-radius: 6px;
      padding: 1.25rem 1.5rem;
      font-family: var(--mono);
      font-size: 0.78rem;
      line-height: 2;
      opacity: 0;
      animation: fadeLeft 0.7s 0.8s forwards;
    }
    .hero-badge .bar {
      display: flex; gap: 0.4rem; margin-bottom: 1rem;
    }
    .hero-badge .dot {
      width: 10px; height: 10px; border-radius: 50%;
    }
    .dot-r { background: #ff5f57; }
    .dot-y { background: #febc2e; }
    .dot-g { background: #28c840; }
    .hero-badge .cmd { color: var(--grey); }
    .hero-badge .ok  { color: #28c840; }
    .hero-badge .hi  { color: var(--accent); }
    .hero-badge .warn { color: var(--warn); }
    @media (max-width: 900px) { .hero-badge { display: none; } }

    /* ───── SECTION SHELL ───── */
    section {
      position: relative;
      z-index: 1;
      padding: 6rem 2.5rem;
      max-width: 1100px;
      margin: 0 auto;
    }
    .section-label {
      font-family: var(--mono);
      font-size: 0.7rem;
      letter-spacing: 0.25em;
      text-transform: uppercase;
      color: var(--accent);
      margin-bottom: 0.75rem;
    }
    h2 {
      font-size: clamp(2rem, 4vw, 3rem);
      font-weight: 800;
      letter-spacing: -0.02em;
      color: var(--white);
      margin-bottom: 1rem;
    }
    .section-intro {
      max-width: 580px;
      color: var(--grey);
      font-size: 1rem;
      line-height: 1.75;
      margin-bottom: 3.5rem;
    }

    /* ───── DIVIDER LINE ───── */
    .divider {
      width: 100%;
      height: 1px;
      background: linear-gradient(90deg, transparent, rgba(74,82,216,0.4), transparent);
      margin: 0 auto;
    }

    /* ───── SERVICES GRID ───── */
    .services-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
      gap: 1.5px;
      background: rgba(74,82,216,0.15);
      border: 1px solid rgba(74,82,216,0.15);
    }
    .service-card {
      background: var(--darker);
      padding: 2.5rem 2rem;
      transition: background 0.25s;
      position: relative;
      overflow: hidden;
    }
    .service-card::before {
      content: '';
      position: absolute;
      top: 0; left: 0; right: 0;
      height: 2px;
      background: linear-gradient(90deg, var(--indigo), var(--accent));
      transform: scaleX(0);
      transform-origin: left;
      transition: transform 0.3s;
    }
    .service-card:hover { background: rgba(30,32,96,0.3); }
    .service-card:hover::before { transform: scaleX(1); }
    .service-icon {
      font-size: 1.8rem;
      margin-bottom: 1.25rem;
      display: block;
    }
    .service-card h3 {
      font-size: 1.1rem;
      font-weight: 700;
      color: var(--white);
      margin-bottom: 0.75rem;
      letter-spacing: -0.01em;
    }
    .service-card p {
      font-size: 0.9rem;
      color: var(--grey);
      line-height: 1.7;
    }
    .service-tag {
      display: inline-block;
      margin-top: 1.25rem;
      font-family: var(--mono);
      font-size: 0.65rem;
      letter-spacing: 0.1em;
      text-transform: uppercase;
      color: var(--accent);
      border: 1px solid rgba(0,229,255,0.25);
      padding: 0.25rem 0.6rem;
      border-radius: 2px;
    }

    /* ───── WHY OS SECTION ───── */
    .why-grid {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 4rem;
      align-items: center;
    }
    @media (max-width: 720px) { .why-grid { grid-template-columns: 1fr; } }
    .why-list { list-style: none; display: flex; flex-direction: column; gap: 1.5rem; }
    .why-list li {
      display: flex;
      gap: 1rem;
      align-items: flex-start;
    }
    .why-list .num {
      font-family: var(--mono);
      font-size: 0.7rem;
      color: var(--indigo);
      min-width: 28px;
      padding-top: 0.2rem;
    }
    .why-list strong { color: var(--white); display: block; margin-bottom: 0.25rem; }
    .why-list p { font-size: 0.9rem; color: var(--grey); line-height: 1.6; }

    .stat-block {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 1px;
      background: rgba(74,82,216,0.15);
      border: 1px solid rgba(74,82,216,0.15);
    }
    .stat {
      background: var(--darker);
      padding: 2rem 1.5rem;
      text-align: center;
    }
    .stat .num {
      font-family: var(--mono);
      font-size: 2.5rem;
      font-weight: 700;
      color: var(--accent);
      display: block;
    }
    .stat .lbl {
      font-size: 0.8rem;
      color: var(--grey);
      letter-spacing: 0.05em;
      margin-top: 0.25rem;
    }

    /* ───── SECURITY SECTION ───── */
    .sec-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
      gap: 1rem;
      margin-top: 3rem;
    }
    .sec-item {
      border: 1px solid rgba(74,82,216,0.2);
      padding: 1.5rem;
      border-radius: 4px;
      background: rgba(10,11,26,0.6);
      transition: border-color 0.2s, box-shadow 0.2s;
    }
    .sec-item:hover {
      border-color: rgba(0,229,255,0.4);
      box-shadow: 0 0 20px rgba(0,229,255,0.06);
    }
    .sec-item .ico { font-size: 1.4rem; margin-bottom: 0.75rem; display: block; }
    .sec-item h4 { font-size: 0.95rem; color: var(--white); margin-bottom: 0.5rem; }
    .sec-item p  { font-size: 0.82rem; color: var(--grey); line-height: 1.65; }

    /* ───── PROCESS ───── */
    .process-steps {
      display: flex;
      flex-direction: column;
      gap: 0;
    }
    .step {
      display: grid;
      grid-template-columns: 80px 1fr;
      gap: 2rem;
      padding: 2rem 0;
      border-bottom: 1px solid rgba(74,82,216,0.12);
      align-items: start;
    }
    .step:last-child { border-bottom: none; }
    .step-num {
      font-family: var(--mono);
      font-size: 2.5rem;
      font-weight: 700;
      color: rgba(45,50,145,0.4);
      line-height: 1;
      padding-top: 0.2rem;
    }
    .step h3 { font-size: 1.05rem; color: var(--white); margin-bottom: 0.5rem; }
    .step p  { font-size: 0.9rem; color: var(--grey); line-height: 1.7; }

    /* ───── CONTACT ───── */
    .contact-wrap {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 4rem;
      align-items: start;
    }
    @media (max-width: 720px) { .contact-wrap { grid-template-columns: 1fr; } }
    .contact-info p { color: var(--grey); font-size: 0.95rem; line-height: 1.75; margin-bottom: 2rem; }
    .contact-detail {
      display: flex; align-items: center; gap: 0.75rem;
      font-family: var(--mono); font-size: 0.82rem;
      color: var(--light); margin-bottom: 0.75rem;
    }
    .contact-detail .ico { color: var(--accent); }

    .contact-form { display: flex; flex-direction: column; gap: 1rem; }
    .form-field { display: flex; flex-direction: column; gap: 0.4rem; }
    .form-field label {
      font-family: var(--mono); font-size: 0.7rem;
      letter-spacing: 0.1em; text-transform: uppercase; color: var(--grey);
    }
    .form-field input,
    .form-field textarea,
    .form-field select {
      background: rgba(10,11,26,0.8);
      border: 1px solid rgba(74,82,216,0.3);
      border-radius: 3px;
      padding: 0.75rem 1rem;
      color: var(--white);
      font-family: var(--sans);
      font-size: 0.9rem;
      outline: none;
      transition: border-color 0.2s;
    }
    .form-field input:focus,
    .form-field textarea:focus,
    .form-field select:focus { border-color: var(--accent); }
    .form-field textarea { resize: vertical; min-height: 120px; }
    .form-field select option { background: var(--dark); }

    /* ───── FOOTER ───── */
    footer {
      position: relative;
      z-index: 1;
      border-top: 1px solid rgba(74,82,216,0.2);
      padding: 2rem 2.5rem;
      display: flex;
      justify-content: space-between;
      align-items: center;
      flex-wrap: wrap;
      gap: 1rem;
    }
    footer img { height: 30px; opacity: 0.8; }
    footer p {
      font-family: var(--mono);
      font-size: 0.7rem;
      color: var(--mid);
      letter-spacing: 0.05em;
    }

    /* ───── ANIMATIONS ───── */
    @keyframes fadeUp {
      from { opacity: 0; transform: translateY(24px); }
      to   { opacity: 1; transform: translateY(0); }
    }
    @keyframes fadeLeft {
      from { opacity: 0; transform: translate(24px, -50%); }
      to   { opacity: 1; transform: translate(0, -50%); }
    }

    /* scroll reveal */
    .reveal {
      opacity: 0;
      transform: translateY(30px);
      transition: opacity 0.6s ease, transform 0.6s ease;
    }
    .reveal.visible {
      opacity: 1;
      transform: none;
    }
  </style>
</head>
<body>

  <!-- NAV -->
  <nav>
    <div class="nav-logo">
      <img src="Logo.png" alt="QuirkIT" />
    </div>
    <ul class="nav-links">
      <li><a href="#services">Services</a></li>
      <li><a href="#why">Open Source</a></li>
      <li><a href="#security">Security</a></li>
      <li><a href="#process">Process</a></li>
      <li><a href="#contact">Contact</a></li>
    </ul>
  </nav>

  <!-- HERO -->
  <div class="hero">
    <p class="hero-eyebrow">Customised IT Solutions // Brisbane, AU</p>
    <h1>Bespoke IT.<br /><span>Zero</span> Bloat.</h1>
    <p class="hero-sub">
      QuirkIT builds tailored technology solutions using open-source tooling — keeping costs lean while delivering enterprise-grade results. Backed by serious cyber security expertise.
    </p>
    <div class="hero-cta">
      <a href="#contact" class="btn btn-primary">Start a Conversation</a>
      <a href="#services" class="btn btn-ghost">Explore Services</a>
    </div>

    <div class="hero-badge">
      <div class="bar">
        <span class="dot dot-r"></span>
        <span class="dot dot-y"></span>
        <span class="dot dot-g"></span>
      </div>
      <div><span class="cmd">$</span> <span class="hi">quirkit</span> --init</div>
      <div><span class="ok">✔</span> Open-source stack loaded</div>
      <div><span class="ok">✔</span> Security baseline applied</div>
      <div><span class="ok">✔</span> Custom config deployed</div>
      <div><span class="warn">→</span> Cost: <span class="hi">fraction</span> of proprietary</div>
      <div><span class="cmd">$</span> <span style="color:#6b7280">ready for your requirements_</span></div>
    </div>
  </div>

  <div class="divider"></div>

  <!-- SERVICES -->
  <section id="services">
    <div class="reveal">
      <p class="section-label">// 01 — What We Do</p>
      <h2>Services Built Around You</h2>
      <p class="section-intro">No off-the-shelf packages. Every engagement starts with understanding your specific requirements and ends with a solution that fits like it was made for you — because it was.</p>
    </div>
    <div class="services-grid reveal">
      <div class="service-card">
        <span class="service-icon">⚙️</span>
        <h3>Bespoke IT Solutions</h3>
        <p>Custom-built systems, workflows, and integrations designed around your business operations — not the other way around.</p>
        <span class="service-tag">Tailored</span>
      </div>
      <div class="service-card">
        <span class="service-icon">🔒</span>
        <h3>Cyber Security Consultancy</h3>
        <p>Risk assessments, security architecture reviews, vulnerability scanning, and practical hardening guidance for SMEs.</p>
        <span class="service-tag">Consultancy</span>
      </div>
      <div class="service-card">
        <span class="service-icon">🐧</span>
        <h3>Open Source Implementation</h3>
        <p>Deploy battle-tested open-source platforms — from self-hosted productivity suites to infrastructure monitoring stacks.</p>
        <span class="service-tag">Low Cost</span>
      </div>
      <div class="service-card">
        <span class="service-icon">🌐</span>
        <h3>Network & Infrastructure</h3>
        <p>Design, deployment, and management of secure on-premise and hybrid network infrastructure — built to last.</p>
        <span class="service-tag">Infrastructure</span>
      </div>
      <div class="service-card">
        <span class="service-icon">📋</span>
        <h3>IT Audits & Strategy</h3>
        <p>Honest assessments of your current tech stack with a clear, prioritised roadmap for improvement — no jargon, no fluff.</p>
        <span class="service-tag">Advisory</span>
      </div>
      <div class="service-card">
        <span class="service-icon">🔧</span>
        <h3>Ongoing Support</h3>
        <p>Flexible support arrangements for small businesses that need reliable IT without the overhead of an in-house team.</p>
        <span class="service-tag">Managed</span>
      </div>
    </div>
  </section>

  <div class="divider"></div>

  <!-- WHY OPEN SOURCE -->
  <section id="why">
    <div class="why-grid">
      <div class="reveal">
        <p class="section-label">// 02 — Our Philosophy</p>
        <h2>Open Source Is the Smart Choice</h2>
        <ul class="why-list">
          <li>
            <span class="num">01</span>
            <div>
              <strong>No Licence Lock-in</strong>
              <p>You own your stack. No annual licence fees, no vendor holding your data hostage, no surprise price hikes.</p>
            </div>
          </li>
          <li>
            <span class="num">02</span>
            <div>
              <strong>Auditable & Transparent</strong>
              <p>Open source code can be independently inspected — critical for security-conscious organisations.</p>
            </div>
          </li>
          <li>
            <span class="num">03</span>
            <div>
              <strong>Community-Proven Reliability</strong>
              <p>Software trusted by thousands of organisations worldwide, with active development and long-term support.</p>
            </div>
          </li>
          <li>
            <span class="num">04</span>
            <div>
              <strong>Cost Savings Reinvested</strong>
              <p>Licence savings go back into your business — or into custom development that delivers real competitive advantage.</p>
            </div>
          </li>
        </ul>
      </div>
      <div class="stat-block reveal">
        <div class="stat">
          <span class="num">90%</span>
          <span class="lbl">Typical licence cost savings</span>
        </div>
        <div class="stat">
          <span class="num">100%</span>
          <span class="lbl">Solutions tailored to you</span>
        </div>
        <div class="stat">
          <span class="num">0</span>
          <span class="lbl">Vendor lock-in</span>
        </div>
        <div class="stat">
          <span class="num">24/7</span>
          <span class="lbl">Community-backed tooling</span>
        </div>
      </div>
    </div>
  </section>

  <div class="divider"></div>

  <!-- SECURITY -->
  <section id="security">
    <div class="reveal">
      <p class="section-label">// 03 — Cyber Security</p>
      <h2>Security Is Not Optional</h2>
      <p class="section-intro">Cyber threats don't discriminate by business size. QuirkIT brings enterprise-level security thinking to small and medium businesses — practical, actionable, and affordable.</p>
    </div>
    <div class="sec-grid reveal">
      <div class="sec-item">
        <span class="ico">🔍</span>
        <h4>Vulnerability Assessment</h4>
        <p>Systematic scanning and manual review of your systems to identify weaknesses before attackers do.</p>
      </div>
      <div class="sec-item">
        <span class="ico">🏗️</span>
        <h4>Security Architecture</h4>
        <p>Designing systems with security built in from the ground up — not bolted on as an afterthought.</p>
      </div>
      <div class="sec-item">
        <span class="ico">📜</span>
        <h4>Policy & Compliance</h4>
        <p>Practical security policies and frameworks aligned with Australian standards and best practice guidelines.</p>
      </div>
      <div class="sec-item">
        <span class="ico">🧠</span>
        <h4>Staff Awareness Training</h4>
        <p>Your people are your biggest risk and your strongest defence. We make security training engaging and memorable.</p>
      </div>
      <div class="sec-item">
        <span class="ico">🚨</span>
        <h4>Incident Response</h4>
        <p>Clear playbooks and support for when things go wrong — minimising damage and getting you back up fast.</p>
      </div>
      <div class="sec-item">
        <span class="ico">☁️</span>
        <h4>Cloud Security Review</h4>
        <p>Audit of cloud configurations to close common misconfigurations that expose data to the internet.</p>
      </div>
    </div>
  </section>

  <div class="divider"></div>

  <!-- PROCESS -->
  <section id="process">
    <div class="reveal">
      <p class="section-label">// 04 — How We Work</p>
      <h2>Straightforward. No Surprises.</h2>
      <p class="section-intro">A clear, collaborative process that keeps you informed and in control from the first conversation to final delivery.</p>
    </div>
    <div class="process-steps reveal">
      <div class="step">
        <span class="step-num">01</span>
        <div>
          <h3>Discovery Call</h3>
          <p>We start with a no-obligation conversation to understand your business, your current setup, and what's causing you pain. No sales pitch — just honest talk.</p>
        </div>
      </div>
      <div class="step">
        <span class="step-num">02</span>
        <div>
          <h3>Scope & Proposal</h3>
          <p>A clear written proposal outlining the recommended solution, timeline, and fixed price. No hidden fees, no scope creep surprises.</p>
        </div>
      </div>
      <div class="step">
        <span class="step-num">03</span>
        <div>
          <h3>Build & Deliver</h3>
          <p>We build your solution iteratively with regular check-ins. You see progress, you give feedback, we refine — until it's exactly right.</p>
        </div>
      </div>
      <div class="step">
        <span class="step-num">04</span>
        <div>
          <h3>Handover & Support</h3>
          <p>Full documentation, training for your team, and ongoing support options so you're never left in the dark after go-live.</p>
        </div>
      </div>
    </div>
  </section>

  <div class="divider"></div>

  <!-- CONTACT -->
  <section id="contact">
    <div class="contact-wrap">
      <div class="reveal">
        <p class="section-label">// 05 — Get In Touch</p>
        <h2>Let's Solve Something Together</h2>
        <p class="contact-info">
          <p>Whether you have a specific project in mind or just want to talk through a problem, we're happy to have an honest conversation about how QuirkIT can help.</p>
        </p>
        <div class="contact-detail"><span class="ico">📧</span> hello@quirkit.com.au</div>
        <div class="contact-detail"><span class="ico">📍</span> Brisbane, Queensland, Australia</div>
        <div class="contact-detail"><span class="ico">⏰</span> Mon–Fri, 8am–6pm AEST</div>
      </div>
      <div class="contact-form reveal">
        <div class="form-field">
          <label>Your Name</label>
          <input type="text" placeholder="Jane Smith" />
        </div>
        <div class="form-field">
          <label>Email Address</label>
          <input type="email" placeholder="jane@yourcompany.com.au" />
        </div>
        <div class="form-field">
          <label>Service Interest</label>
          <select>
            <option value="">Select a service area...</option>
            <option>Bespoke IT Solutions</option>
            <option>Cyber Security Consultancy</option>
            <option>Open Source Implementation</option>
            <option>Network & Infrastructure</option>
            <option>IT Audit & Strategy</option>
            <option>Ongoing Support</option>
            <option>Not Sure Yet</option>
          </select>
        </div>
        <div class="form-field">
          <label>Tell Us About Your Challenge</label>
          <textarea placeholder="Describe what you're trying to achieve or the problem you're facing..."></textarea>
        </div>
        <button class="btn btn-primary" style="align-self:flex-start">Send Message →</button>
      </div>
    </div>
  </section>

  <!-- FOOTER -->
  <footer>
    <img src="img/Logo.png" alt="QuirkIT" />
    <p>© 2025 QuirkIT Pty Ltd — Customised IT Solutions — Brisbane, AU</p>
    <p style="font-family:var(--mono);font-size:0.65rem;color:var(--mid);">ABN: XX XXX XXX XXX</p>
  </footer>

  <script>
    // Scroll reveal
    const reveals = document.querySelectorAll('.reveal');
    const obs = new IntersectionObserver((entries) => {
      entries.forEach(e => {
        if (e.isIntersecting) {
          e.target.classList.add('visible');
          obs.unobserve(e.target);
        }
      });
    }, { threshold: 0.12 });
    reveals.forEach(r => obs.observe(r));
  </script>

</body>
</html>