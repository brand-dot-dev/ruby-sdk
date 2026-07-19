# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#ai_product
    class BrandAIProductParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      # @!attribute url
      #   The product page URL to extract product data from.
      #
      #   @return [String]
      required :url, String

      # @!attribute max_age_ms
      #   Return a cached result if a prior scrape for the same parameters exists and is
      #   younger than this many milliseconds. Defaults to 7 days (604800000 ms) when
      #   omitted. Max is 30 days (2592000000 ms). Set to 0 to always scrape fresh.
      #
      #   @return [Integer, nil]
      optional :max_age_ms, Integer, api_name: :maxAgeMs

      # @!attribute tags
      #   Optional tags for tracking usage. Up to 20 tags, each 1 to 50 characters.
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

      # @!method initialize(url:, max_age_ms: nil, tags: nil, timeout_ms: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {BrandDev::Models::BrandAIProductParams} for more details.
      #
      #   @param url [String] The product page URL to extract product data from.
      #
      #   @param max_age_ms [Integer] Return a cached result if a prior scrape for the same parameters exists and is y
      #
      #   @param tags [Array<String>] Optional tags for tracking usage. Up to 20 tags, each 1 to 50 characters.
      #
      #   @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      #   @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
