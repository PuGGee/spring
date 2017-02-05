module BuildingTypes
  class Base

    class << self
      attr :build_time, :cost

      def to_s
        super.demodulize.underscore
      end

      %w[build_time cost].each do |attribute_name|
        define_method attribute_name do |value = nil|
          value.present? ? instance_variable_set("@#{attribute_name}", value) : instance_variable_get("@#{attribute_name}")
        end
      end
    end
  end
end
