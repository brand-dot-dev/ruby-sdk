# typed: strong

module BrandDev
  module Models
    class BrandFontsResponse < BrandDev::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            BrandDev::Models::BrandFontsResponse,
            BrandDev::Internal::AnyHash
          )
        end

      # Cache outcome for this response. Composite responses are hits only when every
      # cache-controlled fetch contributing to the output was a hit; age_ms is the
      # oldest contributing hit.
      sig { returns(BrandDev::Models::BrandFontsResponse::CacheMetadata) }
      attr_reader :cache_metadata

      sig do
        params(
          cache_metadata:
            BrandDev::Models::BrandFontsResponse::CacheMetadata::OrHash
        ).void
      end
      attr_writer :cache_metadata

      # HTTP status code, e.g., 200
      sig { returns(Integer) }
      attr_accessor :code

      # The normalized domain that was processed
      sig { returns(String) }
      attr_accessor :domain

      # Array of font usage information
      sig { returns(T::Array[BrandDev::Models::BrandFontsResponse::Font]) }
      attr_accessor :fonts

      # Status of the response, e.g., 'ok'
      sig { returns(String) }
      attr_accessor :status

      # Font assets keyed by family name as it appears in the fonts array (non-generic
      # names only). Clients match entries in fonts to pick a file URL from files.
      # Omitted when no families resolve to Google or custom @font-face URLs.
      sig do
        returns(
          T.nilable(
            T::Hash[Symbol, BrandDev::Models::BrandFontsResponse::FontLink]
          )
        )
      end
      attr_reader :font_links

      sig do
        params(
          font_links:
            T::Hash[
              Symbol,
              BrandDev::Models::BrandFontsResponse::FontLink::OrHash
            ]
        ).void
      end
      attr_writer :font_links

      # Metadata about the API key used for the request. Included in every response
      # whenever a valid API key is provided, even when the response status is not 200.
      sig do
        returns(T.nilable(BrandDev::Models::BrandFontsResponse::KeyMetadata))
      end
      attr_reader :key_metadata

      sig do
        params(
          key_metadata:
            BrandDev::Models::BrandFontsResponse::KeyMetadata::OrHash
        ).void
      end
      attr_writer :key_metadata

      sig do
        params(
          cache_metadata:
            BrandDev::Models::BrandFontsResponse::CacheMetadata::OrHash,
          code: Integer,
          domain: String,
          fonts: T::Array[BrandDev::Models::BrandFontsResponse::Font::OrHash],
          status: String,
          font_links:
            T::Hash[
              Symbol,
              BrandDev::Models::BrandFontsResponse::FontLink::OrHash
            ],
          key_metadata:
            BrandDev::Models::BrandFontsResponse::KeyMetadata::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Cache outcome for this response. Composite responses are hits only when every
        # cache-controlled fetch contributing to the output was a hit; age_ms is the
        # oldest contributing hit.
        cache_metadata:,
        # HTTP status code, e.g., 200
        code:,
        # The normalized domain that was processed
        domain:,
        # Array of font usage information
        fonts:,
        # Status of the response, e.g., 'ok'
        status:,
        # Font assets keyed by family name as it appears in the fonts array (non-generic
        # names only). Clients match entries in fonts to pick a file URL from files.
        # Omitted when no families resolve to Google or custom @font-face URLs.
        font_links: nil,
        # Metadata about the API key used for the request. Included in every response
        # whenever a valid API key is provided, even when the response status is not 200.
        key_metadata: nil
      )
      end

      sig do
        override.returns(
          {
            cache_metadata: BrandDev::Models::BrandFontsResponse::CacheMetadata,
            code: Integer,
            domain: String,
            fonts: T::Array[BrandDev::Models::BrandFontsResponse::Font],
            status: String,
            font_links:
              T::Hash[Symbol, BrandDev::Models::BrandFontsResponse::FontLink],
            key_metadata: BrandDev::Models::BrandFontsResponse::KeyMetadata
          }
        )
      end
      def to_hash
      end

      class CacheMetadata < BrandDev::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              BrandDev::Models::BrandFontsResponse::CacheMetadata,
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
            BrandDev::Models::BrandFontsResponse::CacheMetadata::Status::TaggedSymbol
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
              BrandDev::Models::BrandFontsResponse::CacheMetadata::Status::OrSymbol
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
                BrandDev::Models::BrandFontsResponse::CacheMetadata::Status::TaggedSymbol
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
                BrandDev::Models::BrandFontsResponse::CacheMetadata::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HIT =
            T.let(
              :hit,
              BrandDev::Models::BrandFontsResponse::CacheMetadata::Status::TaggedSymbol
            )
          MISS =
            T.let(
              :miss,
              BrandDev::Models::BrandFontsResponse::CacheMetadata::Status::TaggedSymbol
            )
          ZDR =
            T.let(
              :zdr,
              BrandDev::Models::BrandFontsResponse::CacheMetadata::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                BrandDev::Models::BrandFontsResponse::CacheMetadata::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Font < BrandDev::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              BrandDev::Models::BrandFontsResponse::Font,
              BrandDev::Internal::AnyHash
            )
          end

        # Array of fallback font families
        sig { returns(T::Array[String]) }
        attr_accessor :fallbacks

        # Font family name
        sig { returns(String) }
        attr_accessor :font

        # Number of elements using this font
        sig { returns(Float) }
        attr_accessor :num_elements

        # Number of words using this font
        sig { returns(Float) }
        attr_accessor :num_words

        # Percentage of elements using this font
        sig { returns(Float) }
        attr_accessor :percent_elements

        # Percentage of words using this font
        sig { returns(Float) }
        attr_accessor :percent_words

        # Array of CSS selectors or element types where this font is used
        sig { returns(T::Array[String]) }
        attr_accessor :uses

        sig do
          params(
            fallbacks: T::Array[String],
            font: String,
            num_elements: Float,
            num_words: Float,
            percent_elements: Float,
            percent_words: Float,
            uses: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # Array of fallback font families
          fallbacks:,
          # Font family name
          font:,
          # Number of elements using this font
          num_elements:,
          # Number of words using this font
          num_words:,
          # Percentage of elements using this font
          percent_elements:,
          # Percentage of words using this font
          percent_words:,
          # Array of CSS selectors or element types where this font is used
          uses:
        )
        end

        sig do
          override.returns(
            {
              fallbacks: T::Array[String],
              font: String,
              num_elements: Float,
              num_words: Float,
              percent_elements: Float,
              percent_words: Float,
              uses: T::Array[String]
            }
          )
        end
        def to_hash
        end
      end

      class FontLink < BrandDev::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              BrandDev::Models::BrandFontsResponse::FontLink,
              BrandDev::Internal::AnyHash
            )
          end

        # Upright font files keyed by weight string (e.g. "400" for regular, "500",
        # "700"). Values are absolute URLs.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :files

        sig do
          returns(
            BrandDev::Models::BrandFontsResponse::FontLink::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        # Google Fonts category when type is google (e.g. sans-serif, serif, monospace,
        # display, handwriting). Omitted for custom fonts when unknown.
        sig { returns(T.nilable(String)) }
        attr_reader :category

        sig { params(category: String).void }
        attr_writer :category

        # Present when type is custom: human-readable name derived from the fontLinks key
        # (strip build/hash suffixes, split camelCase / PascalCase, normalize separators).
        # Google entries omit this.
        sig { returns(T.nilable(String)) }
        attr_reader :display_name

        sig { params(display_name: String).void }
        attr_writer :display_name

        sig do
          params(
            files: T::Hash[Symbol, String],
            type:
              BrandDev::Models::BrandFontsResponse::FontLink::Type::OrSymbol,
            category: String,
            display_name: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Upright font files keyed by weight string (e.g. "400" for regular, "500",
          # "700"). Values are absolute URLs.
          files:,
          type:,
          # Google Fonts category when type is google (e.g. sans-serif, serif, monospace,
          # display, handwriting). Omitted for custom fonts when unknown.
          category: nil,
          # Present when type is custom: human-readable name derived from the fontLinks key
          # (strip build/hash suffixes, split camelCase / PascalCase, normalize separators).
          # Google entries omit this.
          display_name: nil
        )
        end

        sig do
          override.returns(
            {
              files: T::Hash[Symbol, String],
              type:
                BrandDev::Models::BrandFontsResponse::FontLink::Type::TaggedSymbol,
              category: String,
              display_name: String
            }
          )
        end
        def to_hash
        end

        module Type
          extend BrandDev::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                BrandDev::Models::BrandFontsResponse::FontLink::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          GOOGLE =
            T.let(
              :google,
              BrandDev::Models::BrandFontsResponse::FontLink::Type::TaggedSymbol
            )
          CUSTOM =
            T.let(
              :custom,
              BrandDev::Models::BrandFontsResponse::FontLink::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                BrandDev::Models::BrandFontsResponse::FontLink::Type::TaggedSymbol
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
              BrandDev::Models::BrandFontsResponse::KeyMetadata,
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
