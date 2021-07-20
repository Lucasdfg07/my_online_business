import $ from 'jquery';

$(document).on('turbolinks:load', function() {
    $('.form_checkbox').on('click', function() {
        $('form').submit();
    });
});