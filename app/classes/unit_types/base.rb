module UnitTypes
  class Base

    class << self
      attr :cost, :upkeep

      def to_s
        super.demodulize.underscore
      end

      %w[cost upkeep].each do |attribute_name|
        define_method attribute_name do |value = nil|
          value.present? ? instance_variable_set("@#{attribute_name}", value) : instance_variable_get("@#{attribute_name}")
        end
      end
    end
  end
end
