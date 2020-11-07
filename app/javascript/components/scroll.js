
// const cocktailListButton = document.querySelector('.cocktail-list')
// const cocktailList = document.querySelector('.list-container')
const scrollTo = () => {
  const cocktailList = document.querySelector('.page')
  cocktailList.scrollIntoView({
    behavior: 'smooth',
    block: 'end',
    inline: 'nearest'
  });
};


const scrollToListOnClick = () => {
  const cocktailListButton = document.querySelector('.down-page-btn')
  cocktailListButton.addEventListener('click', () => {
    // window.removeEventListener('scroll', noScroll);
    scrollTo();
  });
};

// const noScroll = () => {
//   window.scrollTo(0, 0);
// };

// add listener to disable scroll
// const fixedWindow = () => {
//   window.addEventListener('scroll', noScroll);
// };

// const scrollToListOnClick = () => {
//   const cocktailListButton = document.querySelector('.cocktail-list')
//   cocktailListButton.addEventListener('click', (e) {
//     e.preventDefault();
//     scrollTo();
//   });
// };



  export { scrollToListOnClick };
