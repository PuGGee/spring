module EventTypes
  class Base

    def initialize(event)
      @event = event
    end

    def execute
    end

    def self.to_s
      super.demodulize.underscore
    end

    private

    attr :event

    delegate :user, to: :event
  end
end
