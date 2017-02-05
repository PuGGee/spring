module Services
  class Constructor

    def initialize(user, building_type)
      @user = user
      @building_type = building_type
    end

    def start_construction
      Services::Resources.new(user).decrease_resources(building_type.cost)
      Event.create(user: user, event_type: :construction, value: building_type, finishes_at: finishes_at)
    end

    private

    attr :user, :building_type

    def finishes_at
      DateTime.now + building_type.build_time
    end
  end
end
