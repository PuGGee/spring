module ViewComponents
  class TabbedPane < Base

    def tabs
      @tabs ||= []
    end

    def add_tab(name, content = nil, active: false)
      content = template.capture { yield } if block_given?
      tabs << Tab.new(name, content, active)
    end

    private

    def render_html
      ensure_active_tab
      partial :tabbed_pane
    end

    def ensure_active_tab
      tabs.first.active = true if tabs.select(&:active).empty?
    end

    class Tab < Struct.new(:name, :content, :active)
      def active?
        active
      end
    end
  end
end
