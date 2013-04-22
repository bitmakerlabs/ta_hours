# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  window.$dp = $('#office_hour_day').datepicker({
    showOptions: {
      direction: 'down'
    },
    showOn: 'both',
    buttonText: '<i class="icon-calendar"></i>',
    dateFormat: 'dd/mm/yy'

  })

  $('.ui-datepicker-trigger').addClass('btn')

  $('#start_time').timepicker({
    template: 'dropdown',
    showInputs: false,
    disableFocus: true
  })