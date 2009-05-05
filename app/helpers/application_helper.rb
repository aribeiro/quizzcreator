# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def nested_attributes_for(form_builder, *args)  
    content_for :javascript do  
      content = ""  
      args.each do |association|  
        content << "\nvar #{association}_template='#{generate_template(form_builder, association.to_sym)}';"  
      end  
      content  
    end  
  end  

  def generate_html(form_builder, method, options = {})  
    options[:object] ||= form_builder.object.class.reflect_on_association(method).klass.new  
    options[:partial] ||= method.to_s.singularize  
    options[:form_builder_local] ||= :form

    form_builder.fields_for(method, options[:object], :child_index => 'NEW_RECORD') do |f|  
      render(:partial => options[:partial], :locals => { options[:form_builder_local] => f })  
    end  
  end  

  def generate_template(form_builder, method, options = {})  
    escape_javascript generate_html(form_builder, method, options = {})  
  end
    
  def remove_link_unless_new_record(form_builder)  
    unless form_builder.object.new_record?  
      form_builder.check_box(:_delete) + form_builder.label(:_delete, 'Delete')  
    else  
      link_to_function('Remove', "$(this).up('.#{form_builder.object.class.name.underscore}').remove();", :id => "test_#{rand(100)}")  
    end  
  end  
end
