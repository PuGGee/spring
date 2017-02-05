module EventTypes
  class Construction < Base

    def execute
      building.quantity += 1
      building.save
    end

    private

    def building
      @building ||= Building.where(user: user, building_type: building_type).first || new_building
    end

    def building_type
      event.value
    end

    def new_building
      Building.new(user: user, quantity: 0, building_type: building_type)
    end
  end
end
