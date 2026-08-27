# typed: strong

module BrandDev
  module Models
    class BrandScreenshotResponse < BrandDev::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            BrandDev::Models::BrandScreenshotResponse,
            BrandDev::Internal::AnyHash
          )
        end

      # Cache outcome for this response. Composite responses are hits only when every
      # cache-controlled fetch contributing to the output was a hit; age_ms is the
      # oldest contributing hit.
      sig { returns(BrandDev::Models::BrandScreenshotResponse::CacheMetadata) }
      attr_reader :cache_metadata

      sig do
        params(
          cache_metadata:
            BrandDev::Models::BrandScreenshotResponse::CacheMetadata::OrHash
        ).void
      end
      attr_writer :cache_metadata

      # HTTP status code
      sig { returns(T.nilable(Integer)) }
      attr_reader :code

      sig { params(code: Integer).void }
      attr_writer :code

      # The normalized domain that was processed
      sig { returns(T.nilable(String)) }
      attr_reader :domain

      sig { params(domain: String).void }
      attr_writer :domain

      # Height in pixels of the returned screenshot image
      sig { returns(T.nilable(Integer)) }
      attr_reader :height

      sig { params(height: Integer).void }
      attr_writer :height

      # Metadata about the API key used for the request. Included in every response
      # whenever a valid API key is provided, even when the response status is not 200.
      sig do
        returns(
          T.nilable(BrandDev::Models::BrandScreenshotResponse::KeyMetadata)
        )
      end
      attr_reader :key_metadata

      sig do
        params(
          key_metadata:
            BrandDev::Models::BrandScreenshotResponse::KeyMetadata::OrHash
        ).void
      end
      attr_writer :key_metadata

      # Public image URL for standard requests, or an in-memory data URL when ZDR is
      # enabled.
      sig { returns(T.nilable(String)) }
      attr_reader :screenshot

      sig { params(screenshot: String).void }
      attr_writer :screenshot

      # Type of screenshot that was captured
      sig do
        returns(
          T.nilable(
            BrandDev::Models::BrandScreenshotResponse::ScreenshotType::TaggedSymbol
          )
        )
      end
      attr_reader :screenshot_type

      sig do
        params(
          screenshot_type:
            BrandDev::Models::BrandScreenshotResponse::ScreenshotType::OrSymbol
        ).void
      end
      attr_writer :screenshot_type

      # Status of the response, e.g., 'ok'
      sig { returns(T.nilable(String)) }
      attr_reader :status

      sig { params(status: String).void }
      attr_writer :status

      # Width in pixels of the returned screenshot image
      sig { returns(T.nilable(Integer)) }
      attr_reader :width

      sig { params(width: Integer).void }
      attr_writer :width

      sig do
        params(
          cache_metadata:
            BrandDev::Models::BrandScreenshotResponse::CacheMetadata::OrHash,
          code: Integer,
          domain: String,
          height: Integer,
          key_metadata:
            BrandDev::Models::BrandScreenshotResponse::KeyMetadata::OrHash,
          screenshot: String,
          screenshot_type:
            BrandDev::Models::BrandScreenshotResponse::ScreenshotType::OrSymbol,
          status: String,
          width: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # Cache outcome for this response. Composite responses are hits only when every
        # cache-controlled fetch contributing to the output was a hit; age_ms is the
        # oldest contributing hit.
        cache_metadata:,
        # HTTP status code
        code: nil,
        # The normalized domain that was processed
        domain: nil,
        # Height in pixels of the returned screenshot image
        height: nil,
        # Metadata about the API key used for the request. Included in every response
        # whenever a valid API key is provided, even when the response status is not 200.
        key_metadata: nil,
        # Public image URL for standard requests, or an in-memory data URL when ZDR is
        # enabled.
        screenshot: nil,
        # Type of screenshot that was captured
        screenshot_type: nil,
        # Status of the response, e.g., 'ok'
        status: nil,
        # Width in pixels of the returned screenshot image
        width: nil
      )
      end

      sig do
        override.returns(
          {
            cache_metadata:
              BrandDev::Models::BrandScreenshotResponse::CacheMetadata,
            code: Integer,
            domain: String,
            height: Integer,
            key_metadata:
              BrandDev::Models::BrandScreenshotResponse::KeyMetadata,
            screenshot: String,
            screenshot_type:
              BrandDev::Models::BrandScreenshotResponse::ScreenshotType::TaggedSymbol,
            status: String,
            width: Integer
          }
        )
      end
      def to_hash
      end

      class CacheMetadata < BrandDev::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              BrandDev::Models::BrandScreenshotResponse::CacheMetadata,
              BrandDev::Internal::AnyHash
            )
          end

        # Age of the cached data in milliseconds. Zero for miss and zdr responses.
        sig { returns(Integer) }
        attr_accessor :age_ms

        # Whether the response was served from cache, required fresh work, or honored
        # zero-data-retention cache bypass.
        sig do
          returns(
            BrandDev::Models::BrandScreenshotResponse::CacheMetadata::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # Cache outcome for this response. Composite responses are hits only when every
        # cache-controlled fetch contributing to the output was a hit; age_ms is the
        # oldest contributing hit.
        sig do
          params(
            age_ms: Integer,
            status:
              BrandDev::Models::BrandScreenshotResponse::CacheMetadata::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Age of the cached data in milliseconds. Zero for miss and zdr responses.
          age_ms:,
          # Whether the response was served from cache, required fresh work, or honored
          # zero-data-retention cache bypass.
          status:
        )
        end

        sig do
          override.returns(
            {
              age_ms: Integer,
              status:
                BrandDev::Models::BrandScreenshotResponse::CacheMetadata::Status::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # Whether the response was served from cache, required fresh work, or honored
        # zero-data-retention cache bypass.
        module Status
          extend BrandDev::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                BrandDev::Models::BrandScreenshotResponse::CacheMetadata::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HIT =
            T.let(
              :hit,
              BrandDev::Models::BrandScreenshotResponse::CacheMetadata::Status::TaggedSymbol
            )
          MISS =
            T.let(
              :miss,
              BrandDev::Models::BrandScreenshotResponse::CacheMetadata::Status::TaggedSymbol
            )
          ZDR =
            T.let(
              :zdr,
              BrandDev::Models::BrandScreenshotResponse::CacheMetadata::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                BrandDev::Models::BrandScreenshotResponse::CacheMetadata::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class KeyMetadata < BrandDev::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              BrandDev::Models::BrandScreenshotResponse::KeyMetadata,
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

      # Type of screenshot that was captured
      module ScreenshotType
        extend BrandDev::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              BrandDev::Models::BrandScreenshotResponse::ScreenshotType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        VIEWPORT =
          T.let(
            :viewport,
            BrandDev::Models::BrandScreenshotResponse::ScreenshotType::TaggedSymbol
          )
        FULL_PAGE =
          T.let(
            :fullPage,
            BrandDev::Models::BrandScreenshotResponse::ScreenshotType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              BrandDev::Models::BrandScreenshotResponse::ScreenshotType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
