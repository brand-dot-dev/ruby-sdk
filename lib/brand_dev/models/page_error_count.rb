# frozen_string_literal: true

module BrandDev
  module Models
    class PageErrorCount < BrandDev::Internal::Type::BaseModel
      # @!attribute code
      #   Error code for these failures.
      #
      #   @return [String]
      required :code, String

      # @!attribute count
      #   Pages that failed with this code.
      #
      #   @return [Integer]
      required :count, Integer

      # @!method initialize(code:, count:)
      #   Page failures sharing one error code.
      #
      #   @param code [String] Error code for these failures.
      #
      #   @param count [Integer] Pages that failed with this code.
    end
  end
end
