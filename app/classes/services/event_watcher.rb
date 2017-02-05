module Services
  class EventWatcher

    def watch
      Event.find_each do |event|
        if DateTime.now > event.finishes_at
          EventExecutor.new(event).execute
        end
      end
    end

    private

    attr :event
  end
end
