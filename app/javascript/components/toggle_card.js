// const hideCard = () => {
//   $('.card').hide();
// };

const toggleCard = () => {
  $('#btn-edit').click(function () {
    // $('.card-container').toggle();
    $('.card').toggle();
  });
};

export { toggleCard };