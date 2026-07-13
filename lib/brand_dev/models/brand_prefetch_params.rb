# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#prefetch
    class BrandPrefetchParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      # @!attribute domain
      #   Domain name to prefetch brand data for
      #
      #   @return [String]
      required :domain, String

      # @!attribute tags
      #   Optional caller-defined tags for tracking this request. Tags are recorded on the
      #   request's usage log and can be used to filter usage on the dashboard usage page.
      #   Up to 20 tags, each 1-50 characters.
      #
      #   @return [Array<String>, nil]
      optional :tags, BrandDev::Internal::Type::ArrayOf[String]

      # @!attribute timeout_ms
      #   Optional timeout in milliseconds for the request. If the request takes longer
      #   than this value, it will be aborted with a 408 status code. Maximum allowed
      #   value is 300000ms (5 minutes).
      #
      #   @return [Integer, nil]
      optional :timeout_ms, Integer, api_name: :timeoutMS

      # @!method initialize(domain:, tags: nil, timeout_ms: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {BrandDev::Models::BrandPrefetchParams} for more details.
      #
      #   @param domain [String] Domain name to prefetch brand data for
      #
      #   @param tags [Array<String>] Optional caller-defined tags for tracking this request. Tags are recorded on the
      #
      #   @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      #   @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
