module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title)                          
    base_title = "Chapter Financial Statements"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
  def button_to_add_fields(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", f: builder)
    end
    button_tag(name, :href => '#', :type=> "button", :class => "add_fields btn btn-primary", :data => {id: id, fields: fields.gsub("\n", "")})
  end
end