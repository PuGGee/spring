module Services
  class UserInitializer

    def initialize(user = User.new)
      @user = user
    end

    def init
      user.resource = starting_resource
      user.armies << Army.new
      user.save
    end

    private

    attr :user

    def starting_resource
      Resource.new(
        food: 100,
        wood: 100
      )
    end
  end
end
