module ViewComponents
  class RecordSet < Base

    def attributes
      @attributes ||= []
    end

    def attribute(name, value)
      attributes << Attribute.new(name, value)
    end

    private

    def render_html
      partial :record_set
    end

    class Attribute < Struct.new(:name, :value)
    end
  end
end
