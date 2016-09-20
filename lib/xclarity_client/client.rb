module XClarityClient
  class Client

    def initialize(connection)
      @connection = connection
    end

    def discover_nodes
      NodeManagement.new(@connection).population
    end

    def fetch_nodes(uuids = nil, includeAttributes = nil, excludeAttributes = nil)
      array_nodes = NodeManagement.new(@connection)
      .get_object_nodes(uuids, includeAttributes, excludeAttributes)
    end

    def discover_power_supplies
      PowerSupplyManagement.new(@connection).population
    end

    def fetch_power_supplies(uuids = nil, includeAttributes = nil, excludeAttributes = nil)
      array_power_supplies = PowerSupplyManagement.new(@connection)
      .get_object_power_supplies(uuids, includeAttributes, excludeAttributes)
    end
  end
end
