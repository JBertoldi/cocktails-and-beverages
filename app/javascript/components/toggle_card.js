// const hideCard = () => {
//   $('.card').hide();
// };

const toggleAddIngredient = () => {
  $('#btn-add').click(function () {
    // $('.card-container').toggle();
    $('#card-add').toggle();
  });
};

const toggleEditCocktail = () => {
  $('#btn-edit').click(function () {
    // $('.card-container').toggle();
    $('.card-edit').toggle();
  });
};

export { toggleAddIngredient, toggleEditCocktail };