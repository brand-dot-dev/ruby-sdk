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

      # @!attribute timeout_ms
      #   Optional timeout in milliseconds for the request. Maximum allowed value is
      #   300000ms (5 minutes).
      #
      #   @return [Integer, nil]
      optional :timeout_ms, Integer, api_name: :timeoutMS

      # @!method initialize(url:, timeout_ms: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {BrandDev::Models::BrandAIProductParams} for more details.
      #
      #   @param url [String] The product page URL to extract product data from.
      #
      #   @param timeout_ms [Integer] Optional timeout in milliseconds for the request. Maximum allowed value is 30000
      #
      #   @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
