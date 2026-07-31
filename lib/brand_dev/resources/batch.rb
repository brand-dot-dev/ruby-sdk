# frozen_string_literal: true

module BrandDev
  module Resources
    class Batch
      # @api private
      #
      # @param client [BrandDev::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
