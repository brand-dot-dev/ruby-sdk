# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#retrieve_simplified
    class BrandRetrieveSimplifiedParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      # @!attribute domain
      #   Domain name to retrieve simplified brand data for
      #
      #   @return [String]
      required :domain, String

      # @!attribute max_age_ms
      #   Maximum age in milliseconds for cached brand data before the API performs a hard
      #   refresh. Defaults to 3 months (7776000000 ms). Values below 1 day (86400000 ms)
      #   are clamped to 1 day; values above 1 year (31536000000 ms) are clamped to 1
      #   year.
      #
      #   @return [Integer, nil]
      optional :max_age_ms, Integer

      # @!attribute tags
      #   Optional comma-separated caller-defined tags for tracking this request. Tags are
      #   recorded on the request's usage log and can be used to filter usage on the
      #   dashboard usage page. Up to 20 tags, each 1-50 characters.
      #
      #   @return [Array<String>, nil]
      optional :tags, BrandDev::Internal::Type::ArrayOf[String]

      # @!attribute timeout_ms
      #   Optional timeout in milliseconds for the request. If the request takes longer
      #   than this value, it will be aborted with a 408 status code. Maximum allowed
      #   value is 300000ms (5 minutes).
      #
      #   @return [Integer, nil]
      optional :timeout_ms, Integer

      # @!method initialize(domain:, max_age_ms: nil, tags: nil, timeout_ms: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {BrandDev::Models::BrandRetrieveSimplifiedParams} for more details.
      #
      #   @param domain [String] Domain name to retrieve simplified brand data for
      #
      #   @param max_age_ms [Integer] Maximum age in milliseconds for cached brand data before the API performs a hard
      #
      #   @param tags [Array<String>] Optional comma-separated caller-defined tags for tracking this request. Tags are
      #
      #   @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      #   @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
