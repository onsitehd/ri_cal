module RiCal

  class OccurrenceListValue < ArrayValue
    class Enumerator

      attr_accessor :default_duration

      # TODO: the component parameter should always be the parent
      def initialize(occurrence_list_value, component)
        self.occurrence_list = occurrence_list_value
        self.default_duration = component.default_duration
        @index = 0
      end

      def result_hash(date_time_value)
        {:start => date_time_value, :end => nil}
      end

      def next_occurrence
      end
    end

    def value=(string)
      super
      case params[:value]
      when 'DATE-TIME', nil
        @elements = @value.map {|string| DateTimeValue.new(:value => string)}
      when 'DATE'
        @elements = @value.map {|string| DateValue.new(:value => string)}
      when 'PERIOD'
      end
    end
  end
end