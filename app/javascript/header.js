document.addEventListener('DOMContentLoaded', function() {
    const header = document.querySelector('.header');
    window.addEventListener('scroll', function() {
      if (window.scrollY > 50) { 
        header.classList.remove('initial-state');
        header.classList.add('scrolled-state');
      } else {
        header.classList.remove('scrolled-state');
        header.classList.add('initial-state');
      }
    });
  });
  