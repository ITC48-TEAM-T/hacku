$(function () {
  $('.name').first().on('click', function () {
    $('.name_form').removeClass('none');
    $('.name').first().addClass('none');
  });

  $('.player_name').first().on('click', function () {
    $('.player_name_form').removeClass('none');
    $('.player_name').first().addClass('none');
  })
});
