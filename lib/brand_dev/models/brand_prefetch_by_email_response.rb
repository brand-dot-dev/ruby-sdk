# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#prefetch_by_email
    class BrandPrefetchByEmailResponse < BrandDev::Internal::Type::BaseModel
      # @!attribute domain
      #   The domain that was queued for prefetching
      #
      #   @return [String, nil]
      optional :domain, String

      # @!attribute key_metadata
      #   Metadata about the API key used for the request. Included in every response
      #   whenever a valid API key is provided, even when the response status is not 200.
      #
      #   @return [BrandDev::Models::BrandPrefetchByEmailResponse::KeyMetadata, nil]
      optional :key_metadata, -> { BrandDev::Models::BrandPrefetchByEmailResponse::KeyMetadata }

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

      # @!method initialize(domain: nil, key_metadata: nil, message: nil, status: nil)
      #   Some parameter documentations has been truncated, see
      #   {BrandDev::Models::BrandPrefetchByEmailResponse} for more details.
      #
      #   @param domain [String] The domain that was queued for prefetching
      #
      #   @param key_metadata [BrandDev::Models::BrandPrefetchByEmailResponse::KeyMetadata] Metadata about the API key used for the request. Included in every response when
      #
      #   @param message [String] Success message
      #
      #   @param status [String] Status of the response, e.g., 'ok'

      # @see BrandDev::Models::BrandPrefetchByEmailResponse#key_metadata
      class KeyMetadata < BrandDev::Internal::Type::BaseModel
        # @!attribute credits_consumed
        #   The number of credits consumed by this request.
        #
        #   @return [Integer]
        required :credits_consumed, Integer

        # @!attribute credits_remaining
        #   The number of credits remaining for your organization after this request.
        #
        #   @return [Integer]
        required :credits_remaining, Integer

        # @!method initialize(credits_consumed:, credits_remaining:)
        #   Metadata about the API key used for the request. Included in every response
        #   whenever a valid API key is provided, even when the response status is not 200.
        #
        #   @param credits_consumed [Integer] The number of credits consumed by this request.
        #
        #   @param credits_remaining [Integer] The number of credits remaining for your organization after this request.
      end
    end
  end
end
