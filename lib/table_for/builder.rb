module TableFor
  class Builder

    attr_reader :object, :template

    def initialize(object, template)
      @object, @template = object, template
      @atts = []
    end

    def attribute(name)
      @atts << {:name => name}      
    end 
    
    def build
      @template.content_tag(:table, 
        @template.content_tag(:thead, header) + 
        @template.content_tag(:tbody, body),
        {:class => 'simple_table'})
    end
    
    def wrap_with(tag, content, options = {}) #:nodoc:
      html_options = options.delete(:"#{type}_html") || {}
      #html_options[:class] = "#{type} #{html_options[:class]}".strip
      @template.content_tag(tag, content, html_options)
    end
    
    private
    def header
      content = ""
      @atts.each do |att|
        content << @template.content_tag(:td, att[:name])
      end
      content
    end
    
    def body
      content = ""
      @object.each do |model|
        @atts.each do |att|
          content << "#{att[:name]} model"
        end
      end
      content
  end
end