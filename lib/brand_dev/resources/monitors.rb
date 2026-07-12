# frozen_string_literal: true

module BrandDev
  module Resources
    class Monitors
      # @api private
      #
      # @param client [BrandDev::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
