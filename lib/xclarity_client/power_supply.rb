module XClarityClient
  class PowerSupply

    BASE_URI = '/power_supplies'.freeze

    attr_accessor :properties, :_id, :cmmDisplayName, :cmmHealthState, :dataHandle,
    :description, :firmware, :FRU, :fruSerialNumber, :hardwareRevision, :inputVoltageMax,
    :inputVoltageIsAC, :inputVoltageMin, :leds, :machineType, :manufacturer, :manufacturerID,
    :manufactureDate, :model, :name, :parent, :powerAllocation, :partNumber, :posID,
    :powerState, :productID, :productName, :serialNumber, :slots, :type, :uri,
    :userDescription, :uuid, :vpdID

    def initialize(attributes)
      build_power_supply(attributes)
    end

    def build_power_supply(attributes)
      attributes.each do |key, value|
        print "#{key}= #{value};; "
        send("#{key}=", value)
      end
    end
  end
end
