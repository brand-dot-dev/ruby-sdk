# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#ai_products
    class BrandAIProductsParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      # @!attribute direct_url
      #   A specific URL to use directly as the starting point for extraction without
      #   domain resolution. Useful when you want to extract products from a specific page
      #   rather than discovering the site's product pages automatically. Either 'domain'
      #   or 'directUrl' must be provided, but not both.
      #
      #   @return [String, nil]
      optional :direct_url, String, api_name: :directUrl

      # @!attribute domain
      #   The domain name to analyze. Either 'domain' or 'directUrl' must be provided, but
      #   not both.
      #
      #   @return [String, nil]
      optional :domain, String

      # @!attribute max_products
      #   Maximum number of products to extract.
      #
      #   @return [Integer, nil]
      optional :max_products, Integer, api_name: :maxProducts

      # @!attribute timeout_ms
      #   Optional timeout in milliseconds for the request. If the request takes longer
      #   than this value, it will be aborted with a 408 status code. Maximum allowed
      #   value is 300000ms (5 minutes).
      #
      #   @return [Integer, nil]
      optional :timeout_ms, Integer, api_name: :timeoutMS

      # @!method initialize(direct_url: nil, domain: nil, max_products: nil, timeout_ms: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {BrandDev::Models::BrandAIProductsParams} for more details.
      #
      #   @param direct_url [String] A specific URL to use directly as the starting point for extraction without doma
      #
      #   @param domain [String] The domain name to analyze. Either 'domain' or 'directUrl' must be provided, but
      #
      #   @param max_products [Integer] Maximum number of products to extract.
      #
      #   @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      #   @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
