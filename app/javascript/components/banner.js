import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Save your favourite movies", "Browse popular lists", "Ready for movie night?"],
    typeSpeed: 40,
    loop: true
  });
}

export { loadDynamicBannerText };
