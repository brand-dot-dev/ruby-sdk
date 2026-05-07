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

      sig do
        returns(
          T.any(
            BrandDev::BrandAIProductsParams::Body::ByDomain,
            BrandDev::BrandAIProductsParams::Body::ByDirectURL
          )
        )
      end
      attr_accessor :body

      sig do
        params(
          body:
            T.any(
              BrandDev::BrandAIProductsParams::Body::ByDomain::OrHash,
              BrandDev::BrandAIProductsParams::Body::ByDirectURL::OrHash
            ),
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(body:, request_options: {})
      end

      sig do
        override.returns(
          {
            body:
              T.any(
                BrandDev::BrandAIProductsParams::Body::ByDomain,
                BrandDev::BrandAIProductsParams::Body::ByDirectURL
              ),
            request_options: BrandDev::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Body
        extend BrandDev::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              BrandDev::BrandAIProductsParams::Body::ByDomain,
              BrandDev::BrandAIProductsParams::Body::ByDirectURL
            )
          end

        class ByDomain < BrandDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                BrandDev::BrandAIProductsParams::Body::ByDomain,
                BrandDev::Internal::AnyHash
              )
            end

          # The domain name to analyze.
          sig { returns(String) }
          attr_accessor :domain

          # Return a cached result if a prior scrape for the same parameters exists and is
          # younger than this many milliseconds. Defaults to 7 days (604800000 ms) when
          # omitted. Max is 30 days (2592000000 ms). Set to 0 to always scrape fresh.
          sig { returns(T.nilable(Integer)) }
          attr_reader :max_age_ms

          sig { params(max_age_ms: Integer).void }
          attr_writer :max_age_ms

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
              domain: String,
              max_age_ms: Integer,
              max_products: Integer,
              timeout_ms: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # The domain name to analyze.
            domain:,
            # Return a cached result if a prior scrape for the same parameters exists and is
            # younger than this many milliseconds. Defaults to 7 days (604800000 ms) when
            # omitted. Max is 30 days (2592000000 ms). Set to 0 to always scrape fresh.
            max_age_ms: nil,
            # Maximum number of products to extract.
            max_products: nil,
            # Optional timeout in milliseconds for the request. If the request takes longer
            # than this value, it will be aborted with a 408 status code. Maximum allowed
            # value is 300000ms (5 minutes).
            timeout_ms: nil
          )
          end

          sig do
            override.returns(
              {
                domain: String,
                max_age_ms: Integer,
                max_products: Integer,
                timeout_ms: Integer
              }
            )
          end
          def to_hash
          end
        end

        class ByDirectURL < BrandDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                BrandDev::BrandAIProductsParams::Body::ByDirectURL,
                BrandDev::Internal::AnyHash
              )
            end

          # A specific URL to use directly as the starting point for extraction without
          # domain resolution.
          sig { returns(String) }
          attr_accessor :direct_url

          # Return a cached result if a prior scrape for the same parameters exists and is
          # younger than this many milliseconds. Defaults to 7 days (604800000 ms) when
          # omitted. Max is 30 days (2592000000 ms). Set to 0 to always scrape fresh.
          sig { returns(T.nilable(Integer)) }
          attr_reader :max_age_ms

          sig { params(max_age_ms: Integer).void }
          attr_writer :max_age_ms

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
              max_age_ms: Integer,
              max_products: Integer,
              timeout_ms: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # A specific URL to use directly as the starting point for extraction without
            # domain resolution.
            direct_url:,
            # Return a cached result if a prior scrape for the same parameters exists and is
            # younger than this many milliseconds. Defaults to 7 days (604800000 ms) when
            # omitted. Max is 30 days (2592000000 ms). Set to 0 to always scrape fresh.
            max_age_ms: nil,
            # Maximum number of products to extract.
            max_products: nil,
            # Optional timeout in milliseconds for the request. If the request takes longer
            # than this value, it will be aborted with a 408 status code. Maximum allowed
            # value is 300000ms (5 minutes).
            timeout_ms: nil
          )
          end

          sig do
            override.returns(
              {
                direct_url: String,
                max_age_ms: Integer,
                max_products: Integer,
                timeout_ms: Integer
              }
            )
          end
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[BrandDev::BrandAIProductsParams::Body::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
