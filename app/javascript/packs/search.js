import $ from 'jquery';
import "select2";
import 'select2/dist/css/select2.css';


$(document).on('turbolinks:load', function() {
  let el = $('#dropdown');
  $(el).select2();
});