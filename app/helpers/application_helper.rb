module ApplicationHelper

	def link_to_add_fields(name, f, association, target)
		new_object = f.object.class.reflect_on_association(association).klass.new
	  fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
	    render :partial => (association.to_s + "_fields"), :locals => { :f => builder }
	  end

	  button_tag(name, :class => "btn btn-primary", :type => "button", :data => { 
	  	:"add-association" => association.to_s,
	  	:target => target,
	  	:fields => "#{fields}" })
	end

end
