module EventTypes
  class Recruitment < Base

    def execute
      building.quantity += 1
      building.save
    end

    private

    def unit
      @unit ||= Unit.where(user: user, unit_type: unit_type).first || new_unit
    end

    def army
      user.primary_army
    end

    def unit_type
      event.value
    end

    def new_unit
      Unit.new(user: user, quantity: 0, unit_type: unit_type)
    end
  end
end
