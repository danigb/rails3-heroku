module TableFor
  module Helper
    # Creates a div around the object and yields a builder.
    #
    # Example:
    #
    #   show_for @user do |f|
    #     f.attribute :name
    #     f.attribute :email
    #   end
    #
    def table_for(object, html_options={}, &block)
      tag = html_options.delete(:show_for_tag) || TableFor.table_for_tag

      #html_options[:id]  ||= dom_id(object)
      #html_options[:class] = "show_for #{dom_class(object)} #{html_options[:class]}".strip

      builder = html_options.delete(:builder) || TableFor::Builder
      #content = capture(builder.new(object, self), &block)
      instance = builder.new(object, self)
      yield instance
      content_tag(tag, instance.build, html_options)
    end
  end
end


ActionView::Base.send :include, TableFor::Helper