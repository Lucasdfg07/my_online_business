import $ from 'jquery';

$(document).ready(function() {
    $('.form_checkbox').on('click', function() {
        $('form').submit();
    });
});