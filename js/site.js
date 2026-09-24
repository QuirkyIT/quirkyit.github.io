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
