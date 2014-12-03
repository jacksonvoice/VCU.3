module ApplicationHelper

	def link_to_add_question_fields(name, questions, association)
		new_object = questions.object.send(association).klass.new
		id = new_object.object_id
		fields = questions.fields_for(association, new_object, child_index: id) 
	end
	
	link_to(name, "#", class: "add_fields", data: {id: id, fields: fields.gsub("\n", "")})

end
