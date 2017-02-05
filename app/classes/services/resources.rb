module Services
  class Resources

    def initialize(user)
      @user = user
    end

    %w[food wood iron gold].each do |resource_type|
      define_method "change_#{resource_type}" do |amount|
        change_resource(resource_type, amount)
      end
    end

    def increase_resources(resource_hash)
      resource_hash.each do |key_value_pair|
        change_resource(*key_value_pair)
      end
    end

    def decrease_resources(resource_hash)
      resource_hash.each do |resource_type, amount|
        change_resource(resource_type, -amount)
      end
    end

    private

    attr :user

    delegate :resource, to: :user

    def change_resource(resource_type, amount)
      current_value = resource.read_attribute(resource_type)
      resource.update_attribute(resource_type, current_value + amount)
    end
  end
end
