
// const cocktailListButton = document.querySelector('.cocktail-list')
// const cocktailList = document.querySelector('.list-container')
const scrollTo = () => {
  const downPage = document.querySelector('.page')
  downPage.scrollIntoView({
    behavior: 'smooth',
    block: 'end',
    inline: 'nearest'
  });
};


const scrollToListOnClick = () => {
  const downButton = document.querySelector('.down-page-btn')
  downButton.addEventListener('click', scrollTo);
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
