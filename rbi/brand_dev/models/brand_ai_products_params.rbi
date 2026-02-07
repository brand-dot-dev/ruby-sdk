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

      # The domain name to analyze.
      sig { returns(String) }
      attr_accessor :domain

      # Maximum number of products to extract.
      sig { returns(T.nilable(Integer)) }
      attr_reader :max_products

      sig { params(max_products: Integer).void }
      attr_writer :max_products

      # Optional timeout in milliseconds for the request. Maximum allowed value is
      # 300000ms (5 minutes).
      sig { returns(T.nilable(Integer)) }
      attr_reader :timeout_ms

      sig { params(timeout_ms: Integer).void }
      attr_writer :timeout_ms

      # A specific URL to use directly as the starting point for extraction without
      # domain resolution.
      sig { returns(String) }
      attr_accessor :direct_url

      sig do
        params(
          domain: String,
          direct_url: String,
          max_products: Integer,
          timeout_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The domain name to analyze.
        domain:,
        # A specific URL to use directly as the starting point for extraction without
        # domain resolution.
        direct_url:,
        # Maximum number of products to extract.
        max_products: nil,
        # Optional timeout in milliseconds for the request. Maximum allowed value is
        # 300000ms (5 minutes).
        timeout_ms: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            domain: String,
            max_products: Integer,
            timeout_ms: Integer,
            direct_url: String,
            request_options: BrandDev::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
