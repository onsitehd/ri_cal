module RiCal
  module Properties
    # Properties::Alarm provides property accessing methods for the Alarm class
    # This source file is generated by the  rical:gen_propmodules rake tasks, DO NOT EDIT
    module Alarm

      # return the the ACTION property
      # which will be an instances of RiCal::PropertyValueText
      # 
      # [purpose (from RFC 2445)]
      # This property defines the action to be invoked when an alarm is triggered
      # 
      # see RFC 2445 4.8.6.1 p 126
      def action_property
        @action_property
      end

      # set the ACTION property
      # property value should be an instance of RiCal::PropertyValueText
      def action_property=(property_value)
        @action_property = property_value
      end

      # set the value of the ACTION property
      def action=(ruby_value)
        self.action_property= RiCal::PropertyValue::Text.convert(ruby_value)
      end

      # return the value of the ACTION property
      # which will be an instance of String
      def action
        action_property ? action_property.ruby_value : nil
      end

      def action_property_from_string(line) # :nodoc:
        @action_property = RiCal::PropertyValue::Text.new(line)
      end


      # return the the DESCRIPTION property
      # which will be an instances of RiCal::PropertyValueText
      # 
      # [purpose (from RFC 2445)]
      # This property provides a more complete description of the calendar component, than that provided by the "SUMMARY" property.
      # 
      # see RFC 2445 4.8.1.5 pp 81-82
      def description_property
        @description_property
      end

      # set the DESCRIPTION property
      # property value should be an instance of RiCal::PropertyValueText
      def description_property=(property_value)
        @description_property = property_value
      end

      # set the value of the DESCRIPTION property
      def description=(ruby_value)
        self.description_property= RiCal::PropertyValue::Text.convert(ruby_value)
      end

      # return the value of the DESCRIPTION property
      # which will be an instance of String
      def description
        description_property ? description_property.ruby_value : nil
      end

      def description_property_from_string(line) # :nodoc:
        @description_property = RiCal::PropertyValue::Text.new(line)
      end


      # return the the TRIGGER property
      # which will be an instances of RiCal::PropertyValueduration_or_utc_date_time
      # 
      # [purpose (from RFC 2445)]
      # This property specifies when an alarm will trigger.
      # 
      # see RFC 2445 4.8.6.3 p 127-129
      def trigger_property
        @trigger_property
      end

      # set the TRIGGER property
      # property value should be an instance of RiCal::PropertyValueduration_or_utc_date_time
      def trigger_property=(property_value)
        @trigger_property = property_value
      end

      # set the value of the TRIGGER property
      def trigger=(ruby_value)
        self.trigger_property= RiCal::PropertyValue::duration_or_utc_date_time.convert(ruby_value)
      end

      # return the value of the TRIGGER property
      # which will be an instance of duration_or_utc_date_time
      def trigger
        trigger_property ? trigger_property.ruby_value : nil
      end

      def trigger_property_from_string(line) # :nodoc:
        @trigger_property = RiCal::PropertyValue::duration_or_utc_date_time.new(line)
      end


      # return the the DURATION property
      # which will be an instances of RiCal::PropertyValueDuration
      # 
      # [purpose (from RFC 2445)]
      # This property specifies a positive duration of time.
      # 
      # see RFC 2445 4.8.2.5 pp 94-95
      def duration_property
        @duration_property
      end

      # set the DURATION property
      # property value should be an instance of RiCal::PropertyValueDuration
      def duration_property=(property_value)
        @duration_property = property_value
      end

      # set the value of the DURATION property
      def duration=(ruby_value)
        self.duration_property= RiCal::PropertyValue::Duration.convert(ruby_value)
      end

      # return the value of the DURATION property
      # which will be an instance of Duration
      def duration
        duration_property ? duration_property.ruby_value : nil
      end

      def duration_property_from_string(line) # :nodoc:
        @duration_property = RiCal::PropertyValue::Duration.new(line)
      end


      # return the the REPEAT property
      # which will be an instances of RiCal::PropertyValueInteger
      # 
      # [purpose (from RFC 2445)]
      # This property defines the number of times the alarm should be repeated, after the initial trigger.
      # 
      # see RFC 2445 4.8.6.2 p 126-127
      def repeat_property
        @repeat_property
      end

      # set the REPEAT property
      # property value should be an instance of RiCal::PropertyValueInteger
      def repeat_property=(property_value)
        @repeat_property = property_value
      end

      # set the value of the REPEAT property
      def repeat=(ruby_value)
        self.repeat_property= RiCal::PropertyValue::Integer.convert(ruby_value)
      end

      # return the value of the REPEAT property
      # which will be an instance of Integer
      def repeat
        repeat_property ? repeat_property.ruby_value : nil
      end

      def repeat_property_from_string(line) # :nodoc:
        @repeat_property = RiCal::PropertyValue::Integer.new(line)
      end


      # return the the SUMMARY property
      # which will be an instances of RiCal::PropertyValueText
      # 
      # [purpose (from RFC 2445)]
      # This property defines a short summary or subject for the calendar component.
      # 
      # see RFC 2445 4.8.1.12 pp 89-90
      def summary_property
        @summary_property
      end

      # set the SUMMARY property
      # property value should be an instance of RiCal::PropertyValueText
      def summary_property=(property_value)
        @summary_property = property_value
      end

      # set the value of the SUMMARY property
      def summary=(ruby_value)
        self.summary_property= RiCal::PropertyValue::Text.convert(ruby_value)
      end

      # return the value of the SUMMARY property
      # which will be an instance of String
      def summary
        summary_property ? summary_property.ruby_value : nil
      end

      def summary_property_from_string(line) # :nodoc:
        @summary_property = RiCal::PropertyValue::Text.new(line)
      end


      # return the the ATTENDEE property
      # which will be an array of instances of RiCal::PropertyValueCalAddress
      # 
      # [purpose (from RFC 2445)]
      # The property defines an 'Attendee' within a calendar component.
      # 
      # see RFC 2445 4.8.4.1 pp 102-104
      def attendee_property
        @attendee_property ||= []
      end

      # set the the ATTENDEE property
      # one or more instances of RiCal::PropertyValueCalAddress may be passed to this method
      def attendee_property=(*property_values)
        @attendee_property= property_values
      end

      # set the value of the ATTENDEE property to multiple values
      # one or more instances of CalAddress may be passed to this method
      def attendees=(*ruby_values)
        @attendee_property = ruby_values.map {|val| RiCal::PropertyValue::CalAddress.convert(val)}
      end

      # set the value of the ATTENDEE property to a single value
      # one instance of CalAddress may be passed to this method
      def attendee=(ruby_value)
        @attendee_property = [RiCal::PropertyValue::CalAddress.convert(ruby_value)]
      end

      # add one or more values to the ATTENDEE property
      # one or more instances of CalAddress may be passed to this method
      def  add_attendees(*ruby_values)
       ruby_values.do {|val|  self.attendee_property << RiCal::PropertyValue::CalAddress.convert(val)}
      end

      # add one value to the ATTENDEE property
      # one instances of CalAddress may be passed to this method
      def  add_attendee(ruby_value)
       self.attendee_property << RiCal::PropertyValue::CalAddress.convert(ruby_value)
      end

      # remove one or more values from the ATTENDEE property
      # one or more instances of CalAddress may be passed to this method
      def  remove_attendees(*ruby_values)
       ruby_values.do {|val|  self.attendee_property.delete(RiCal::PropertyValue::CalAddress.convert(val))}
      end

      # remove one value from the ATTENDEE property
      # one instances of CalAddress may be passed to this method
      def  remove_attendee(ruby_value)
       self.attendee_property.delete(RiCal::PropertyValue::CalAddress.convert(ruby_value))
      end

      # return the value of the ATTENDEE property
      # which will be an array of instances of CalAddress
      def attendee
        attendee_property.map {|prop| prop ? prop.value : prop}
      end

      def attendee_property_from_string(line) # :nodoc:
        attendee_property << RiCal::PropertyValue::CalAddress.new(line)
      end

      # return the the ATTACH property
      # which will be an array of instances of RiCal::PropertyValueUri
      # 
      # [purpose (from RFC 2445)]
      # The property provides the capability to associate a document object with a calendar component.
      # 
      # see RFC 2445 4.8.1.1 pp 77-78
      def attach_property
        @attach_property ||= []
      end

      # set the the ATTACH property
      # one or more instances of RiCal::PropertyValueUri may be passed to this method
      def attach_property=(*property_values)
        @attach_property= property_values
      end

      # set the value of the ATTACH property to multiple values
      # one or more instances of Uri may be passed to this method
      def attachments=(*ruby_values)
        @attach_property = ruby_values.map {|val| RiCal::PropertyValue::Uri.convert(val)}
      end

      # set the value of the ATTACH property to a single value
      # one instance of Uri may be passed to this method
      def attach=(ruby_value)
        @attach_property = [RiCal::PropertyValue::Uri.convert(ruby_value)]
      end

      # add one or more values to the ATTACH property
      # one or more instances of Uri may be passed to this method
      def  add_attachments(*ruby_values)
       ruby_values.do {|val|  self.attach_property << RiCal::PropertyValue::Uri.convert(val)}
      end

      # add one value to the ATTACH property
      # one instances of Uri may be passed to this method
      def  add_attach(ruby_value)
       self.attach_property << RiCal::PropertyValue::Uri.convert(ruby_value)
      end

      # remove one or more values from the ATTACH property
      # one or more instances of Uri may be passed to this method
      def  remove_attachments(*ruby_values)
       ruby_values.do {|val|  self.attach_property.delete(RiCal::PropertyValue::Uri.convert(val))}
      end

      # remove one value from the ATTACH property
      # one instances of Uri may be passed to this method
      def  remove_attach(ruby_value)
       self.attach_property.delete(RiCal::PropertyValue::Uri.convert(ruby_value))
      end

      # return the value of the ATTACH property
      # which will be an array of instances of Uri
      def attach
        attach_property.map {|prop| prop ? prop.value : prop}
      end

      def attach_property_from_string(line) # :nodoc:
        attach_property << RiCal::PropertyValue::Uri.new(line)
      end

      def export_properties_to(export_stream)
        export_prop_to(export_stream, "ACTION", @action_property)
        export_prop_to(export_stream, "ATTENDEE", @attendee_property)
        export_prop_to(export_stream, "DURATION", @duration_property)
        export_prop_to(export_stream, "TRIGGER", @trigger_property)
        export_prop_to(export_stream, "DESCRIPTION", @description_property)
        export_prop_to(export_stream, "SUMMARY", @summary_property)
        export_prop_to(export_stream, "REPEAT", @repeat_property)
        export_prop_to(export_stream, "ATTACH", @attach_property)
      end

      def ==(o)
        if o.class == self.class
        (action_property == o.action_property) &&
        (attendee_property == o.attendee_property) &&
        (duration_property == o.duration_property) &&
        (trigger_property == o.trigger_property) &&
        (description_property == o.description_property) &&
        (summary_property == o.summary_property) &&
        (repeat_property == o.repeat_property) &&
        (attach_property == o.attach_property)
        else
           super
        end
      end

      def initialize_copy(o)
        super
        action_property = action_property && action_property.dup
        attendee_property = attendee_property && attendee_property.dup
        duration_property = duration_property && duration_property.dup
        trigger_property = trigger_property && trigger_property.dup
        description_property = description_property && description_property.dup
        summary_property = summary_property && summary_property.dup
        repeat_property = repeat_property && repeat_property.dup
        attach_property = attach_property && attach_property.dup
      end

      def add_date_times_to(required_timezones)
      end

      module ClassMethods
        def property_parser
          {"ACTION"=>:action_property_from_string, "ATTACH"=>:attach_property_from_string, "REPEAT"=>:repeat_property_from_string, "SUMMARY"=>:summary_property_from_string, "TRIGGER"=>:trigger_property_from_string, "ATTENDEE"=>:attendee_property_from_string, "DURATION"=>:duration_property_from_string, "DESCRIPTION"=>:description_property_from_string}
        end
      end

      def self.included(mod)
        mod.extend ClassMethods
      end

      def mutual_exclusion_violation
        false
      end
    end
  end
end
