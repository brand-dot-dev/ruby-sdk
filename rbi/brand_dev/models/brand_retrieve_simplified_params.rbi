# typed: strong

module BrandDev
  module Models
    class BrandRetrieveSimplifiedParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            BrandDev::BrandRetrieveSimplifiedParams,
            BrandDev::Internal::AnyHash
          )
        end

      # Domain name to retrieve simplified brand data for
      sig { returns(String) }
      attr_accessor :domain

      # Maximum age in milliseconds for cached brand data before the API performs a hard
      # refresh. Defaults to 3 months (7776000000 ms). Values below 1 day (86400000 ms)
      # are clamped to 1 day; values above 1 year (31536000000 ms) are clamped to 1
      # year.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :max_age_ms

      # Optional comma-separated caller-defined tags for tracking this request. Tags are
      # recorded on the request's usage log and can be used to filter usage on the
      # dashboard usage page. Up to 20 tags, each 1-50 characters.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :tags

      sig { params(tags: T::Array[String]).void }
      attr_writer :tags

      # Optional theme preference used when selecting brand assets.
      sig do
        returns(
          T.nilable(BrandDev::BrandRetrieveSimplifiedParams::Theme::OrSymbol)
        )
      end
      attr_reader :theme

      sig do
        params(
          theme: BrandDev::BrandRetrieveSimplifiedParams::Theme::OrSymbol
        ).void
      end
      attr_writer :theme

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
          max_age_ms: T.nilable(Integer),
          tags: T::Array[String],
          theme: BrandDev::BrandRetrieveSimplifiedParams::Theme::OrSymbol,
          timeout_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Domain name to retrieve simplified brand data for
        domain:,
        # Maximum age in milliseconds for cached brand data before the API performs a hard
        # refresh. Defaults to 3 months (7776000000 ms). Values below 1 day (86400000 ms)
        # are clamped to 1 day; values above 1 year (31536000000 ms) are clamped to 1
        # year.
        max_age_ms: nil,
        # Optional comma-separated caller-defined tags for tracking this request. Tags are
        # recorded on the request's usage log and can be used to filter usage on the
        # dashboard usage page. Up to 20 tags, each 1-50 characters.
        tags: nil,
        # Optional theme preference used when selecting brand assets.
        theme: nil,
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
            domain: String,
            max_age_ms: T.nilable(Integer),
            tags: T::Array[String],
            theme: BrandDev::BrandRetrieveSimplifiedParams::Theme::OrSymbol,
            timeout_ms: Integer,
            request_options: BrandDev::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Optional theme preference used when selecting brand assets.
      module Theme
        extend BrandDev::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, BrandDev::BrandRetrieveSimplifiedParams::Theme)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LIGHT =
          T.let(
            :light,
            BrandDev::BrandRetrieveSimplifiedParams::Theme::TaggedSymbol
          )
        DARK =
          T.let(
            :dark,
            BrandDev::BrandRetrieveSimplifiedParams::Theme::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              BrandDev::BrandRetrieveSimplifiedParams::Theme::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
