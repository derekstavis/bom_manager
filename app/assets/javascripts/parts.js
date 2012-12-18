function add_fields(container, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g")
  $(container).append(content.replace(regexp, new_id))
}

$(function() {
	$('button[data-remove="true"]').live('click', function(evt) {
		parent = $(evt.currentTarget).parents('div.control-group')
		parent.find('input[type="hidden"]').val(true)
		parent.hide()
	})

	$('button[data-add-association]').live('click', function(evt) {
		button = $(evt.currentTarget)
		content = button.data("fields")
		association = button.data("add-association")
		target = button.data("target")
		container = $(target)

		add_fields(container, association, content)
	})
})