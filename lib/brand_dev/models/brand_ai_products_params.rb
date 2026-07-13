# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#ai_products
    class BrandAIProductsParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      # @!attribute body
      #
      #   @return [BrandDev::Models::BrandAIProductsParams::Body::ByDomain, BrandDev::Models::BrandAIProductsParams::Body::ByDirectURL]
      required :body, union: -> { BrandDev::BrandAIProductsParams::Body }

      # @!method initialize(body:, request_options: {})
      #   @param body [BrandDev::Models::BrandAIProductsParams::Body::ByDomain, BrandDev::Models::BrandAIProductsParams::Body::ByDirectURL]
      #   @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}]

      module Body
        extend BrandDev::Internal::Type::Union

        variant -> { BrandDev::BrandAIProductsParams::Body::ByDomain }

        variant -> { BrandDev::BrandAIProductsParams::Body::ByDirectURL }

        class ByDomain < BrandDev::Internal::Type::BaseModel
          # @!attribute domain
          #   The domain name to analyze.
          #
          #   @return [String]
          required :domain, String

          # @!attribute max_age_ms
          #   Return a cached result if a prior scrape for the same parameters exists and is
          #   younger than this many milliseconds. Defaults to 7 days (604800000 ms) when
          #   omitted. Max is 30 days (2592000000 ms). Set to 0 to always scrape fresh.
          #
          #   @return [Integer, nil]
          optional :max_age_ms, Integer, api_name: :maxAgeMs

          # @!attribute max_products
          #   Maximum number of products to extract.
          #
          #   @return [Integer, nil]
          optional :max_products, Integer, api_name: :maxProducts

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

          # @!method initialize(domain:, max_age_ms: nil, max_products: nil, tags: nil, timeout_ms: nil)
          #   Some parameter documentations has been truncated, see
          #   {BrandDev::Models::BrandAIProductsParams::Body::ByDomain} for more details.
          #
          #   @param domain [String] The domain name to analyze.
          #
          #   @param max_age_ms [Integer] Return a cached result if a prior scrape for the same parameters exists and is y
          #
          #   @param max_products [Integer] Maximum number of products to extract.
          #
          #   @param tags [Array<String>] Optional caller-defined tags for tracking this request. Tags are recorded on the
          #
          #   @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
        end

        class ByDirectURL < BrandDev::Internal::Type::BaseModel
          # @!attribute direct_url
          #   A specific URL to use directly as the starting point for extraction without
          #   domain resolution.
          #
          #   @return [String]
          required :direct_url, String, api_name: :directUrl

          # @!attribute max_age_ms
          #   Return a cached result if a prior scrape for the same parameters exists and is
          #   younger than this many milliseconds. Defaults to 7 days (604800000 ms) when
          #   omitted. Max is 30 days (2592000000 ms). Set to 0 to always scrape fresh.
          #
          #   @return [Integer, nil]
          optional :max_age_ms, Integer, api_name: :maxAgeMs

          # @!attribute max_products
          #   Maximum number of products to extract.
          #
          #   @return [Integer, nil]
          optional :max_products, Integer, api_name: :maxProducts

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

          # @!method initialize(direct_url:, max_age_ms: nil, max_products: nil, tags: nil, timeout_ms: nil)
          #   Some parameter documentations has been truncated, see
          #   {BrandDev::Models::BrandAIProductsParams::Body::ByDirectURL} for more details.
          #
          #   @param direct_url [String] A specific URL to use directly as the starting point for extraction without doma
          #
          #   @param max_age_ms [Integer] Return a cached result if a prior scrape for the same parameters exists and is y
          #
          #   @param max_products [Integer] Maximum number of products to extract.
          #
          #   @param tags [Array<String>] Optional caller-defined tags for tracking this request. Tags are recorded on the
          #
          #   @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
        end

        # @!method self.variants
        #   @return [Array(BrandDev::Models::BrandAIProductsParams::Body::ByDomain, BrandDev::Models::BrandAIProductsParams::Body::ByDirectURL)]
      end
    end
  end
end
