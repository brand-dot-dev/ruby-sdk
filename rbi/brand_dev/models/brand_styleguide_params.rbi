# typed: strong

module BrandDev
  module Models
    class BrandStyleguideParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(BrandDev::BrandStyleguideParams, BrandDev::Internal::AnyHash)
        end

      # Optional browser color scheme to emulate for websites that respond to
      # prefers-color-scheme. This value is part of the styleguide cache key.
      sig do
        returns(
          T.nilable(BrandDev::BrandStyleguideParams::ColorScheme::OrSymbol)
        )
      end
      attr_reader :color_scheme

      sig do
        params(
          color_scheme: BrandDev::BrandStyleguideParams::ColorScheme::OrSymbol
        ).void
      end
      attr_writer :color_scheme

      # A specific URL to fetch the styleguide from directly, bypassing domain
      # resolution (e.g., 'https://example.com/design-system'). When provided, the
      # styleguide is extracted from this exact URL. You must provide either 'domain' or
      # 'directUrl', but not both.
      sig { returns(T.nilable(String)) }
      attr_reader :direct_url

      sig { params(direct_url: String).void }
      attr_writer :direct_url

      # Domain name to extract styleguide from (e.g., 'example.com', 'google.com'). The
      # domain will be automatically normalized and validated. You must provide either
      # 'domain' or 'directUrl', but not both.
      sig { returns(T.nilable(String)) }
      attr_reader :domain

      sig { params(domain: String).void }
      attr_writer :domain

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

      # Optional timeout in milliseconds for the request. If the request takes longer
      # than this value, it will be aborted with a 408 status code. Maximum allowed
      # value is 300000ms (5 minutes).
      sig { returns(T.nilable(Integer)) }
      attr_reader :timeout_ms

      sig { params(timeout_ms: Integer).void }
      attr_writer :timeout_ms

      sig do
        params(
          color_scheme: BrandDev::BrandStyleguideParams::ColorScheme::OrSymbol,
          direct_url: String,
          domain: String,
          max_age_ms: T.nilable(Integer),
          tags: T::Array[String],
          timeout_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Optional browser color scheme to emulate for websites that respond to
        # prefers-color-scheme. This value is part of the styleguide cache key.
        color_scheme: nil,
        # A specific URL to fetch the styleguide from directly, bypassing domain
        # resolution (e.g., 'https://example.com/design-system'). When provided, the
        # styleguide is extracted from this exact URL. You must provide either 'domain' or
        # 'directUrl', but not both.
        direct_url: nil,
        # Domain name to extract styleguide from (e.g., 'example.com', 'google.com'). The
        # domain will be automatically normalized and validated. You must provide either
        # 'domain' or 'directUrl', but not both.
        domain: nil,
        # Maximum age in milliseconds for cached brand data before the API performs a hard
        # refresh. Defaults to 3 months (7776000000 ms). Values below 1 day (86400000 ms)
        # are clamped to 1 day; values above 1 year (31536000000 ms) are clamped to 1
        # year.
        max_age_ms: nil,
        # Optional comma-separated caller-defined tags for tracking this request. Tags are
        # recorded on the request's usage log and can be used to filter usage on the
        # dashboard usage page. Up to 20 tags, each 1-50 characters.
        tags: nil,
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
            color_scheme:
              BrandDev::BrandStyleguideParams::ColorScheme::OrSymbol,
            direct_url: String,
            domain: String,
            max_age_ms: T.nilable(Integer),
            tags: T::Array[String],
            timeout_ms: Integer,
            request_options: BrandDev::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Optional browser color scheme to emulate for websites that respond to
      # prefers-color-scheme. This value is part of the styleguide cache key.
      module ColorScheme
        extend BrandDev::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, BrandDev::BrandStyleguideParams::ColorScheme)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LIGHT =
          T.let(
            :light,
            BrandDev::BrandStyleguideParams::ColorScheme::TaggedSymbol
          )
        DARK =
          T.let(
            :dark,
            BrandDev::BrandStyleguideParams::ColorScheme::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[BrandDev::BrandStyleguideParams::ColorScheme::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
