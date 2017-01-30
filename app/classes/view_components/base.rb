module ViewComponents
  class Base
    def initialize(template, options = {})
      @template = template
      @options = options
    end

    def render
      yield self if block_given?
      render_html
    end

    private

    attr :options, :template

    def render_html
    end

    def component_name
      self.class.name.demodulize.underscore
    end

    def partial(partial_name)
      template.render("components/#{component_name}/#{partial_name}", component: self)
    end
  end
end
