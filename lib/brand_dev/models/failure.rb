# frozen_string_literal: true

module BrandDev
  module Models
    class Failure < BrandDev::Internal::Type::BaseModel
      # @!attribute code
      #   Why the batch itself stopped.
      #
      #   @return [String]
      required :code, String

      # @!attribute message
      #   Human-readable explanation.
      #
      #   @return [String]
      required :message, String

      # @!method initialize(code:, message:)
      #   A failure of the batch as a whole, distinct from the per-page failures in
      #   `page_errors`.
      #
      #   @param code [String] Why the batch itself stopped.
      #
      #   @param message [String] Human-readable explanation.
    end
  end
end
