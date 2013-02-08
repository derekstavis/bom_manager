

$(".assembly-items").change(function() {
	assemblable_type = $(this).find(":selected").data("assemblable-type")
	assemblable_type_input = $("#new_assembly_item input[name='assembly_item[assemblable_type]']")

	assemblable_type_input.val(assemblable_type)
})