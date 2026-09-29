const menu = document.querySelector('.mobile-menu');
document.querySelectorAll('[data-print-report]').forEach((button) => {
  button.hidden = false;
  button.addEventListener('click', () => window.print());
});
if (menu) {
  document.addEventListener('keydown', (event) => {
    if (event.key === 'Escape' && menu.open) {
      menu.open = false;
      menu.querySelector('summary').focus();
    }
  });
  document.addEventListener('click', (event) => {
    if (!menu.contains(event.target) || event.target.closest('a')) menu.open = false;
  });
  document.addEventListener('focusin', (event) => {
    if (!menu.contains(event.target)) menu.open = false;
  });
}
const reduceMotion = window.matchMedia('(prefers-reduced-motion: reduce)');
document.querySelectorAll('.slider').forEach((slider) => {
  const track = slider.querySelector('.slider-track');
  const previous = slider.querySelector('[data-slide="prev"]');
  const next = slider.querySelector('[data-slide="next"]');
  if (!track || !previous || !next) return;
  const overflows = () => track.scrollWidth > track.clientWidth + 1;
  const step = () => {
    const cards = track.querySelectorAll('.card');
    if (cards.length > 1) return cards[1].offsetLeft - cards[0].offsetLeft;
    return cards.length ? cards[0].getBoundingClientRect().width : track.clientWidth;
  };
  const update = () => {
    const scrollable = overflows();
    previous.hidden = !scrollable;
    next.hidden = !scrollable;
    previous.disabled = track.scrollLeft <= 0;
    next.disabled = track.scrollLeft >= track.scrollWidth - track.clientWidth - 1;
  };
  const scrollBy = (direction) => track.scrollBy({
    left: direction * step(),
    behavior: reduceMotion.matches ? 'auto' : 'smooth',
  });
  previous.addEventListener('click', () => scrollBy(-1));
  next.addEventListener('click', () => scrollBy(1));
  track.addEventListener('scroll', update, { passive: true });
  window.addEventListener('resize', update);
  update();
});
const copyButton = document.querySelector('[data-copy-email]');
if (copyButton && navigator.clipboard && window.isSecureContext) {
  copyButton.hidden = false;
  copyButton.addEventListener('click', async () => {
    const status = document.querySelector('#copy-status');
    try {
      await navigator.clipboard.writeText('dean@quirkyit.com.au');
      status.textContent = 'Email address copied.';
    } catch {
      status.textContent = 'Please select and copy the email address above.';
    }
  });
}
