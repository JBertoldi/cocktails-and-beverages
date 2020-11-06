
// const cocktailListButton = document.querySelector('.cocktail-list')
// const cocktailList = document.querySelector('.list-container')
const scrollTo = () => {
  const cocktailList = document.querySelector('.list-container')
  cocktailList.scrollIntoView({
    behavior: 'smooth',
    block: 'end',
    inline: 'nearest'
  });
};


const scrollToListOnClick = () => {
  const cocktailListButton = document.querySelector('.cocktail-list-btn')
  cocktailListButton.addEventListener('click', scrollTo);
};


// const scrollToListOnClick = () => {
//   const cocktailListButton = document.querySelector('.cocktail-list')
//   cocktailListButton.addEventListener('click', (e) {
//     e.preventDefault();
//     scrollTo();
//   });
// };



export { scrollToListOnClick };