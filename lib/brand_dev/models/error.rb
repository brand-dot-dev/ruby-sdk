# frozen_string_literal: true

module BrandDev
  module Models
    class Error < BrandDev::Internal::Type::BaseModel
      # @!attribute code
      #   Batch error code.
      #
      #   @return [String]
      required :code, String

      # @!attribute message
      #   Batch error message.
      #
      #   @return [String]
      required :message, String

      # @!method initialize(code:, message:)
      #   Why the batch failed.
      #
      #   @param code [String] Batch error code.
      #
      #   @param message [String] Batch error message.
    end
  end
end
