// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.inputmask.bundle.min
//= require bootstrap
//= require rails-ujs
//= require activestorage
//= require_tree .
$(function(){

	tinymce.init({
		selector: '#pfeditor',
		plugins: 'advlist autolink lists link image charmap print preview hr anchor pagebreak',
		toolbar_mode: 'floating'
	});

  $('#user_cpf').inputmask({ mask: '999.999.999.99' })
  $('#company_cnpj').inputmask({ mask: '99.999.999/9999-99' });
  $('#phone').inputmask({ mask: '(99) 99999-9999' });
})
