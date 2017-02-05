module Services
  class EventExecutor

    def initialize(event)
      @event = event
    end

    def execute
      type_definition.new(event).execute
      event.destroy
    end

    private

    attr :event

    delegate :type_definition, to: :event
  end
end
