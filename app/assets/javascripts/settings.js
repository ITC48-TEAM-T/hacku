$(function () {
  $('.name').first().on('click', function () {
    $('.name_form').removeClass('none');
    $('.name').first().addClass('none');
  });
});
