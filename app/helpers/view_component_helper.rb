module ViewComponentHelper
  def render_component(component_name, options = {})
    ViewComponents.const_get(component_name.to_s.camelize).new(self, options).render do |component|
      yield component
    end
  end
end
