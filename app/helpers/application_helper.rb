module ApplicationHelper

		def link_to_add_question_fields(name, f, association)
			new_object = f.object.send(association).klass.new
			id = new_object.object_id
			fields = f.fields_for(association, new_object, child_index: id) do |builder|
				render(association.to_s.singularize + "_fields", f: builder)
		end
	
		link_to(name, "#", class: "add_fields button small radius", data: {id: id, fields: fields.gsub("\n", "")})
		end

		def link_to_add_answer_field(name, f, association)
			new_object = f.object.send(association).klass.new
			id = new_object.object_id
			fields = f.fields_for(association, new_object, child_index: id) do |builder|
				render(association.to_s.singularize + "_fields", f: builder)
		end


			link_to(name, '#', class: "add_fields button small radius", data: {id: id, fields: fields.gsub("\n", "")})
		end


end
