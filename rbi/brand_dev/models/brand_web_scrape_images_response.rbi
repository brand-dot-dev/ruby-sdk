# typed: strong

module BrandDev
  module Models
    class BrandWebScrapeImagesResponse < BrandDev::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            BrandDev::Models::BrandWebScrapeImagesResponse,
            BrandDev::Internal::AnyHash
          )
        end

      # Cache outcome for this response. Composite responses are hits only when every
      # cache-controlled fetch contributing to the output was a hit; age_ms is the
      # oldest contributing hit.
      sig do
        returns(BrandDev::Models::BrandWebScrapeImagesResponse::CacheMetadata)
      end
      attr_reader :cache_metadata

      sig do
        params(
          cache_metadata:
            BrandDev::Models::BrandWebScrapeImagesResponse::CacheMetadata::OrHash
        ).void
      end
      attr_writer :cache_metadata

      # Images found on the page.
      sig do
        returns(T::Array[BrandDev::Models::BrandWebScrapeImagesResponse::Image])
      end
      attr_accessor :images

      # Always true on success.
      sig do
        returns(
          BrandDev::Models::BrandWebScrapeImagesResponse::Success::TaggedBoolean
        )
      end
      attr_accessor :success

      # Page URL that was scraped.
      sig { returns(String) }
      attr_accessor :url

      # One verified outcome per requested browser action, in request order.
      sig do
        returns(
          T.nilable(
            T::Array[
              BrandDev::Models::BrandWebScrapeImagesResponse::ActionsApplied
            ]
          )
        )
      end
      attr_reader :actions_applied

      sig do
        params(
          actions_applied:
            T::Array[
              BrandDev::Models::BrandWebScrapeImagesResponse::ActionsApplied::OrHash
            ]
        ).void
      end
      attr_writer :actions_applied

      # Metadata about the API key used for the request. Included in every response
      # whenever a valid API key is provided, even when the response status is not 200.
      sig do
        returns(
          T.nilable(BrandDev::Models::BrandWebScrapeImagesResponse::KeyMetadata)
        )
      end
      attr_reader :key_metadata

      sig do
        params(
          key_metadata:
            BrandDev::Models::BrandWebScrapeImagesResponse::KeyMetadata::OrHash
        ).void
      end
      attr_writer :key_metadata

      sig do
        params(
          cache_metadata:
            BrandDev::Models::BrandWebScrapeImagesResponse::CacheMetadata::OrHash,
          images:
            T::Array[
              BrandDev::Models::BrandWebScrapeImagesResponse::Image::OrHash
            ],
          success:
            BrandDev::Models::BrandWebScrapeImagesResponse::Success::OrBoolean,
          url: String,
          actions_applied:
            T::Array[
              BrandDev::Models::BrandWebScrapeImagesResponse::ActionsApplied::OrHash
            ],
          key_metadata:
            BrandDev::Models::BrandWebScrapeImagesResponse::KeyMetadata::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Cache outcome for this response. Composite responses are hits only when every
        # cache-controlled fetch contributing to the output was a hit; age_ms is the
        # oldest contributing hit.
        cache_metadata:,
        # Images found on the page.
        images:,
        # Always true on success.
        success:,
        # Page URL that was scraped.
        url:,
        # One verified outcome per requested browser action, in request order.
        actions_applied: nil,
        # Metadata about the API key used for the request. Included in every response
        # whenever a valid API key is provided, even when the response status is not 200.
        key_metadata: nil
      )
      end

      sig do
        override.returns(
          {
            cache_metadata:
              BrandDev::Models::BrandWebScrapeImagesResponse::CacheMetadata,
            images:
              T::Array[BrandDev::Models::BrandWebScrapeImagesResponse::Image],
            success:
              BrandDev::Models::BrandWebScrapeImagesResponse::Success::TaggedBoolean,
            url: String,
            actions_applied:
              T::Array[
                BrandDev::Models::BrandWebScrapeImagesResponse::ActionsApplied
              ],
            key_metadata:
              BrandDev::Models::BrandWebScrapeImagesResponse::KeyMetadata
          }
        )
      end
      def to_hash
      end

      class CacheMetadata < BrandDev::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              BrandDev::Models::BrandWebScrapeImagesResponse::CacheMetadata,
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
            BrandDev::Models::BrandWebScrapeImagesResponse::CacheMetadata::Status::TaggedSymbol
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
              BrandDev::Models::BrandWebScrapeImagesResponse::CacheMetadata::Status::OrSymbol
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
                BrandDev::Models::BrandWebScrapeImagesResponse::CacheMetadata::Status::TaggedSymbol
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
                BrandDev::Models::BrandWebScrapeImagesResponse::CacheMetadata::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HIT =
            T.let(
              :hit,
              BrandDev::Models::BrandWebScrapeImagesResponse::CacheMetadata::Status::TaggedSymbol
            )
          MISS =
            T.let(
              :miss,
              BrandDev::Models::BrandWebScrapeImagesResponse::CacheMetadata::Status::TaggedSymbol
            )
          ZDR =
            T.let(
              :zdr,
              BrandDev::Models::BrandWebScrapeImagesResponse::CacheMetadata::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                BrandDev::Models::BrandWebScrapeImagesResponse::CacheMetadata::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Image < BrandDev::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              BrandDev::Models::BrandWebScrapeImagesResponse::Image,
              BrandDev::Internal::AnyHash
            )
          end

        # Image alt text, or null when unavailable.
        sig { returns(T.nilable(String)) }
        attr_accessor :alt

        # Where the image was found.
        sig do
          returns(
            BrandDev::Models::BrandWebScrapeImagesResponse::Image::Element::TaggedSymbol
          )
        end
        attr_accessor :element

        # Original image value: URL, inline SVG or HTML, or base64 data URI.
        sig { returns(String) }
        attr_accessor :src

        # Format of src.
        sig do
          returns(
            BrandDev::Models::BrandWebScrapeImagesResponse::Image::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        # Requested metadata for images that could be processed.
        sig do
          returns(
            T.nilable(
              BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment
            )
          )
        end
        attr_reader :enrichment

        sig do
          params(
            enrichment:
              BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment::OrHash
          ).void
        end
        attr_writer :enrichment

        sig do
          params(
            alt: T.nilable(String),
            element:
              BrandDev::Models::BrandWebScrapeImagesResponse::Image::Element::OrSymbol,
            src: String,
            type:
              BrandDev::Models::BrandWebScrapeImagesResponse::Image::Type::OrSymbol,
            enrichment:
              BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Image alt text, or null when unavailable.
          alt:,
          # Where the image was found.
          element:,
          # Original image value: URL, inline SVG or HTML, or base64 data URI.
          src:,
          # Format of src.
          type:,
          # Requested metadata for images that could be processed.
          enrichment: nil
        )
        end

        sig do
          override.returns(
            {
              alt: T.nilable(String),
              element:
                BrandDev::Models::BrandWebScrapeImagesResponse::Image::Element::TaggedSymbol,
              src: String,
              type:
                BrandDev::Models::BrandWebScrapeImagesResponse::Image::Type::TaggedSymbol,
              enrichment:
                BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment
            }
          )
        end
        def to_hash
        end

        # Where the image was found.
        module Element
          extend BrandDev::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                BrandDev::Models::BrandWebScrapeImagesResponse::Image::Element
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IMG =
            T.let(
              :img,
              BrandDev::Models::BrandWebScrapeImagesResponse::Image::Element::TaggedSymbol
            )
          SVG =
            T.let(
              :svg,
              BrandDev::Models::BrandWebScrapeImagesResponse::Image::Element::TaggedSymbol
            )
          LINK =
            T.let(
              :link,
              BrandDev::Models::BrandWebScrapeImagesResponse::Image::Element::TaggedSymbol
            )
          SOURCE =
            T.let(
              :source,
              BrandDev::Models::BrandWebScrapeImagesResponse::Image::Element::TaggedSymbol
            )
          VIDEO =
            T.let(
              :video,
              BrandDev::Models::BrandWebScrapeImagesResponse::Image::Element::TaggedSymbol
            )
          CSS =
            T.let(
              :css,
              BrandDev::Models::BrandWebScrapeImagesResponse::Image::Element::TaggedSymbol
            )
          OBJECT =
            T.let(
              :object,
              BrandDev::Models::BrandWebScrapeImagesResponse::Image::Element::TaggedSymbol
            )
          META =
            T.let(
              :meta,
              BrandDev::Models::BrandWebScrapeImagesResponse::Image::Element::TaggedSymbol
            )
          BACKGROUND =
            T.let(
              :background,
              BrandDev::Models::BrandWebScrapeImagesResponse::Image::Element::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                BrandDev::Models::BrandWebScrapeImagesResponse::Image::Element::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Format of src.
        module Type
          extend BrandDev::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                BrandDev::Models::BrandWebScrapeImagesResponse::Image::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          URL =
            T.let(
              :url,
              BrandDev::Models::BrandWebScrapeImagesResponse::Image::Type::TaggedSymbol
            )
          HTML =
            T.let(
              :html,
              BrandDev::Models::BrandWebScrapeImagesResponse::Image::Type::TaggedSymbol
            )
          BASE64 =
            T.let(
              :base64,
              BrandDev::Models::BrandWebScrapeImagesResponse::Image::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                BrandDev::Models::BrandWebScrapeImagesResponse::Image::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Enrichment < BrandDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment,
                BrandDev::Internal::AnyHash
              )
            end

          # Image height in pixels, when measured.
          sig { returns(T.nilable(Integer)) }
          attr_reader :height

          sig { params(height: Integer).void }
          attr_writer :height

          # Detected MIME type, when hosted.
          sig { returns(T.nilable(String)) }
          attr_reader :mimetype

          sig { params(mimetype: String).void }
          attr_writer :mimetype

          # Visual asset category, when classified.
          sig do
            returns(
              T.nilable(
                BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment::Type::TaggedSymbol
              )
            )
          end
          attr_reader :type

          sig do
            params(
              type:
                BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment::Type::OrSymbol
            ).void
          end
          attr_writer :type

          # Brand.dev CDN URL, when hosted.
          sig { returns(T.nilable(String)) }
          attr_reader :url

          sig { params(url: String).void }
          attr_writer :url

          # Image width in pixels, when measured.
          sig { returns(T.nilable(Integer)) }
          attr_reader :width

          sig { params(width: Integer).void }
          attr_writer :width

          # Requested metadata for images that could be processed.
          sig do
            params(
              height: Integer,
              mimetype: String,
              type:
                BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment::Type::OrSymbol,
              url: String,
              width: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # Image height in pixels, when measured.
            height: nil,
            # Detected MIME type, when hosted.
            mimetype: nil,
            # Visual asset category, when classified.
            type: nil,
            # Brand.dev CDN URL, when hosted.
            url: nil,
            # Image width in pixels, when measured.
            width: nil
          )
          end

          sig do
            override.returns(
              {
                height: Integer,
                mimetype: String,
                type:
                  BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment::Type::TaggedSymbol,
                url: String,
                width: Integer
              }
            )
          end
          def to_hash
          end

          # Visual asset category, when classified.
          module Type
            extend BrandDev::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PHOTOGRAPHY =
              T.let(
                :photography,
                BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment::Type::TaggedSymbol
              )
            ILLUSTRATION =
              T.let(
                :illustration,
                BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment::Type::TaggedSymbol
              )
            LOGO =
              T.let(
                :logo,
                BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment::Type::TaggedSymbol
              )
            WORDMARK =
              T.let(
                :wordmark,
                BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment::Type::TaggedSymbol
              )
            ICON =
              T.let(
                :icon,
                BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment::Type::TaggedSymbol
              )
            PATTERN =
              T.let(
                :pattern,
                BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment::Type::TaggedSymbol
              )
            GRAPHIC =
              T.let(
                :graphic,
                BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment::Type::TaggedSymbol
              )
            OTHER =
              T.let(
                :other,
                BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end

      # Always true on success.
      module Success
        extend BrandDev::Internal::Type::Enum

        TaggedBoolean =
          T.type_alias do
            T.all(
              T::Boolean,
              BrandDev::Models::BrandWebScrapeImagesResponse::Success
            )
          end
        OrBoolean = T.type_alias { T::Boolean }

        TRUE =
          T.let(
            true,
            BrandDev::Models::BrandWebScrapeImagesResponse::Success::TaggedBoolean
          )

        sig do
          override.returns(
            T::Array[
              BrandDev::Models::BrandWebScrapeImagesResponse::Success::TaggedBoolean
            ]
          )
        end
        def self.values
        end
      end

      class ActionsApplied < BrandDev::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              BrandDev::Models::BrandWebScrapeImagesResponse::ActionsApplied,
              BrandDev::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :instruction

        # Applied means the requested page state was visibly verified. Failed means it was
        # not verified. Skipped means it was not attempted.
        sig do
          returns(
            BrandDev::Models::BrandWebScrapeImagesResponse::ActionsApplied::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # Visible page evidence used to verify an applied action.
        sig { returns(T.nilable(String)) }
        attr_reader :completion_evidence

        sig { params(completion_evidence: String).void }
        attr_writer :completion_evidence

        sig { returns(T.nilable(Float)) }
        attr_reader :duration_ms

        sig { params(duration_ms: Float).void }
        attr_writer :duration_ms

        sig { returns(T.nilable(String)) }
        attr_reader :error

        sig { params(error: String).void }
        attr_writer :error

        sig { returns(T.nilable(String)) }
        attr_reader :method_

        sig { params(method_: String).void }
        attr_writer :method_

        sig { returns(T.nilable(String)) }
        attr_reader :target_description

        sig { params(target_description: String).void }
        attr_writer :target_description

        sig do
          params(
            instruction: String,
            status:
              BrandDev::Models::BrandWebScrapeImagesResponse::ActionsApplied::Status::OrSymbol,
            completion_evidence: String,
            duration_ms: Float,
            error: String,
            method_: String,
            target_description: String
          ).returns(T.attached_class)
        end
        def self.new(
          instruction:,
          # Applied means the requested page state was visibly verified. Failed means it was
          # not verified. Skipped means it was not attempted.
          status:,
          # Visible page evidence used to verify an applied action.
          completion_evidence: nil,
          duration_ms: nil,
          error: nil,
          method_: nil,
          target_description: nil
        )
        end

        sig do
          override.returns(
            {
              instruction: String,
              status:
                BrandDev::Models::BrandWebScrapeImagesResponse::ActionsApplied::Status::TaggedSymbol,
              completion_evidence: String,
              duration_ms: Float,
              error: String,
              method_: String,
              target_description: String
            }
          )
        end
        def to_hash
        end

        # Applied means the requested page state was visibly verified. Failed means it was
        # not verified. Skipped means it was not attempted.
        module Status
          extend BrandDev::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                BrandDev::Models::BrandWebScrapeImagesResponse::ActionsApplied::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPLIED =
            T.let(
              :applied,
              BrandDev::Models::BrandWebScrapeImagesResponse::ActionsApplied::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              BrandDev::Models::BrandWebScrapeImagesResponse::ActionsApplied::Status::TaggedSymbol
            )
          SKIPPED =
            T.let(
              :skipped,
              BrandDev::Models::BrandWebScrapeImagesResponse::ActionsApplied::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                BrandDev::Models::BrandWebScrapeImagesResponse::ActionsApplied::Status::TaggedSymbol
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
              BrandDev::Models::BrandWebScrapeImagesResponse::KeyMetadata,
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
