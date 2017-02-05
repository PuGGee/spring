module Services
  class Recruiter

    def initialize(army, unit_type, quantity)
      @army = army
      @unit_type = building_type
      @quantity = quantity
    end

    def start_conscription
      Services::Resources.new(user).decrease_resources(recruitment_cost)
      Event.create(user: user, event_type: :recruitment, value: unit_type, finishes_at: finishes_at)
    end

    private

    attr :army, :unit_type, :quantity

    delegate :user, to: :army

    def recruitment_cost
      unit_type.cost.map { |resource_name, amount| [resource_name, amount * quantity] }.to_h
    end

    def finishes_at
      DateTime.now + building_type.build_time
    end
  end
end
