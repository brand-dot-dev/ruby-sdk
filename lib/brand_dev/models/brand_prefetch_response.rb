# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#prefetch
    class BrandPrefetchResponse < BrandDev::Internal::Type::BaseModel
      # @!attribute domain
      #   The domain that was queued for prefetching
      #
      #   @return [String, nil]
      optional :domain, String

      # @!attribute message
      #   Success message
      #
      #   @return [String, nil]
      optional :message, String

      # @!attribute status
      #   Status of the response, e.g., 'ok'
      #
      #   @return [String, nil]
      optional :status, String

      # @!method initialize(domain: nil, message: nil, status: nil)
      #   @param domain [String] The domain that was queued for prefetching
      #
      #   @param message [String] Success message
      #
      #   @param status [String] Status of the response, e.g., 'ok'
    end
  end
end
