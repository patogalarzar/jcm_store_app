// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

var jQuery = require("jquery");

// import jQuery from "jquery";
global.$ = global.jQuery = jQuery;
window.$ = window.jQuery = jQuery;
require("bootstrap");
import "../stylesheets/application";

document.addEventListener("turbolinks:load", function () {
  $(function () {
    $('[data-toggle="tooltip"]').tooltip();
    $('[data-toggle="popover"]').popover();
  });
});

$(document).ready(function () {
  $("#product_name").keyup(function () {
    var valthis = $(this).val().toLowerCase();
    var num = 0;
    $("select#product_category_id>option").each(function () {
      var text = $(this).attr("keywords").toLowerCase();
      if (text.indexOf(valthis) !== -1) {
        $(this).show();
        $(this).prop("selected", true);
      } else {
        $(this).hide();
      }
    });
  });
});
