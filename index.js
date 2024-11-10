const swiper = new Swiper('.swiper', {
    // Optional parameters
    loop: true,
    // const swiper = new swiper|('.swiper' , {
      autoplay:{
        indicators: true,
      speed: 1500,
      delay: 5000,
      parallax: 0.25
        // delay:5000,
      },
      
  
    // If we need pagination
    pagination: {
      el: '.swiper-pagination',
    },
  
    // Navigation arrows
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
  
    // And if we need scrollbar
    scrollbar: {
      el: '.swiper-scrollbar',
    },
  });