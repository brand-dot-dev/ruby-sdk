# typed: strong

module BrandDev
  module Models
    class BrandWebScrapeSitemapResponse < BrandDev::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            BrandDev::Models::BrandWebScrapeSitemapResponse,
            BrandDev::Internal::AnyHash
          )
        end

      # The normalized domain that was crawled
      sig { returns(String) }
      attr_accessor :domain

      # Metadata about the sitemap crawl operation
      sig { returns(BrandDev::Models::BrandWebScrapeSitemapResponse::Meta) }
      attr_reader :meta

      sig do
        params(
          meta: BrandDev::Models::BrandWebScrapeSitemapResponse::Meta::OrHash
        ).void
      end
      attr_writer :meta

      # Indicates success
      sig do
        returns(
          BrandDev::Models::BrandWebScrapeSitemapResponse::Success::TaggedBoolean
        )
      end
      attr_accessor :success

      # Array of discovered page URLs from the sitemap (max 500)
      sig { returns(T::Array[String]) }
      attr_accessor :urls

      # Metadata about the API key used for the request. Included in every response
      # whenever a valid API key is provided, even when the response status is not 200.
      sig do
        returns(
          T.nilable(
            BrandDev::Models::BrandWebScrapeSitemapResponse::KeyMetadata
          )
        )
      end
      attr_reader :key_metadata

      sig do
        params(
          key_metadata:
            BrandDev::Models::BrandWebScrapeSitemapResponse::KeyMetadata::OrHash
        ).void
      end
      attr_writer :key_metadata

      sig do
        params(
          domain: String,
          meta: BrandDev::Models::BrandWebScrapeSitemapResponse::Meta::OrHash,
          success:
            BrandDev::Models::BrandWebScrapeSitemapResponse::Success::OrBoolean,
          urls: T::Array[String],
          key_metadata:
            BrandDev::Models::BrandWebScrapeSitemapResponse::KeyMetadata::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The normalized domain that was crawled
        domain:,
        # Metadata about the sitemap crawl operation
        meta:,
        # Indicates success
        success:,
        # Array of discovered page URLs from the sitemap (max 500)
        urls:,
        # Metadata about the API key used for the request. Included in every response
        # whenever a valid API key is provided, even when the response status is not 200.
        key_metadata: nil
      )
      end

      sig do
        override.returns(
          {
            domain: String,
            meta: BrandDev::Models::BrandWebScrapeSitemapResponse::Meta,
            success:
              BrandDev::Models::BrandWebScrapeSitemapResponse::Success::TaggedBoolean,
            urls: T::Array[String],
            key_metadata:
              BrandDev::Models::BrandWebScrapeSitemapResponse::KeyMetadata
          }
        )
      end
      def to_hash
      end

      class Meta < BrandDev::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              BrandDev::Models::BrandWebScrapeSitemapResponse::Meta,
              BrandDev::Internal::AnyHash
            )
          end

        # Number of errors encountered during crawling
        sig { returns(Integer) }
        attr_accessor :errors

        # Total number of sitemap files discovered
        sig { returns(Integer) }
        attr_accessor :sitemaps_discovered

        # Number of sitemap files successfully fetched and parsed
        sig { returns(Integer) }
        attr_accessor :sitemaps_fetched

        # Number of sitemap files skipped (due to errors, timeouts, or limits)
        sig { returns(Integer) }
        attr_accessor :sitemaps_skipped

        # Metadata about the sitemap crawl operation
        sig do
          params(
            errors: Integer,
            sitemaps_discovered: Integer,
            sitemaps_fetched: Integer,
            sitemaps_skipped: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Number of errors encountered during crawling
          errors:,
          # Total number of sitemap files discovered
          sitemaps_discovered:,
          # Number of sitemap files successfully fetched and parsed
          sitemaps_fetched:,
          # Number of sitemap files skipped (due to errors, timeouts, or limits)
          sitemaps_skipped:
        )
        end

        sig do
          override.returns(
            {
              errors: Integer,
              sitemaps_discovered: Integer,
              sitemaps_fetched: Integer,
              sitemaps_skipped: Integer
            }
          )
        end
        def to_hash
        end
      end

      # Indicates success
      module Success
        extend BrandDev::Internal::Type::Enum

        TaggedBoolean =
          T.type_alias do
            T.all(
              T::Boolean,
              BrandDev::Models::BrandWebScrapeSitemapResponse::Success
            )
          end
        OrBoolean = T.type_alias { T::Boolean }

        TRUE =
          T.let(
            true,
            BrandDev::Models::BrandWebScrapeSitemapResponse::Success::TaggedBoolean
          )

        sig do
          override.returns(
            T::Array[
              BrandDev::Models::BrandWebScrapeSitemapResponse::Success::TaggedBoolean
            ]
          )
        end
        def self.values
        end
      end

      class KeyMetadata < BrandDev::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              BrandDev::Models::BrandWebScrapeSitemapResponse::KeyMetadata,
              BrandDev::Internal::AnyHash
            )
          end

        # The number of credits consumed by this request.
        sig { returns(Integer) }
        attr_accessor :credits_consumed

        # The number of credits remaining for your organization after this request.
        sig { returns(Integer) }
        attr_accessor :credits_remaining

        # Metadata about the API key used for the request. Included in every response
        # whenever a valid API key is provided, even when the response status is not 200.
        sig do
          params(credits_consumed: Integer, credits_remaining: Integer).returns(
            T.attached_class
          )
        end
        def self.new(
          # The number of credits consumed by this request.
          credits_consumed:,
          # The number of credits remaining for your organization after this request.
          credits_remaining:
        )
        end

        sig do
          override.returns(
            { credits_consumed: Integer, credits_remaining: Integer }
          )
        end
        def to_hash
        end
      end
    end
  end
end
