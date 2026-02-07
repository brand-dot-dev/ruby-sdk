# typed: strong

module BrandDev
  module Models
    class BrandAIProductsParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(BrandDev::BrandAIProductsParams, BrandDev::Internal::AnyHash)
        end

      # A specific URL to use directly as the starting point for extraction without
      # domain resolution. Useful when you want to extract products from a specific page
      # rather than discovering the site's product pages automatically. Either 'domain'
      # or 'directUrl' must be provided, but not both.
      sig { returns(T.nilable(String)) }
      attr_reader :direct_url

      sig { params(direct_url: String).void }
      attr_writer :direct_url

      # The domain name to analyze. Either 'domain' or 'directUrl' must be provided, but
      # not both.
      sig { returns(T.nilable(String)) }
      attr_reader :domain

      sig { params(domain: String).void }
      attr_writer :domain

      # Maximum number of products to extract.
      sig { returns(T.nilable(Integer)) }
      attr_reader :max_products

      sig { params(max_products: Integer).void }
      attr_writer :max_products

      # Optional timeout in milliseconds for the request. If the request takes longer
      # than this value, it will be aborted with a 408 status code. Maximum allowed
      # value is 300000ms (5 minutes).
      sig { returns(T.nilable(Integer)) }
      attr_reader :timeout_ms

      sig { params(timeout_ms: Integer).void }
      attr_writer :timeout_ms

      sig do
        params(
          direct_url: String,
          domain: String,
          max_products: Integer,
          timeout_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A specific URL to use directly as the starting point for extraction without
        # domain resolution. Useful when you want to extract products from a specific page
        # rather than discovering the site's product pages automatically. Either 'domain'
        # or 'directUrl' must be provided, but not both.
        direct_url: nil,
        # The domain name to analyze. Either 'domain' or 'directUrl' must be provided, but
        # not both.
        domain: nil,
        # Maximum number of products to extract.
        max_products: nil,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            direct_url: String,
            domain: String,
            max_products: Integer,
            timeout_ms: Integer,
            request_options: BrandDev::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
