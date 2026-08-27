# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#web_scrape_images
    class BrandWebScrapeImagesResponse < BrandDev::Internal::Type::BaseModel
      # @!attribute cache_metadata
      #   Cache outcome for this response. Composite responses are hits only when every
      #   cache-controlled fetch contributing to the output was a hit; age_ms is the
      #   oldest contributing hit.
      #
      #   @return [BrandDev::Models::BrandWebScrapeImagesResponse::CacheMetadata]
      required :cache_metadata, -> { BrandDev::Models::BrandWebScrapeImagesResponse::CacheMetadata }

      # @!attribute images
      #   Images found on the page.
      #
      #   @return [Array<BrandDev::Models::BrandWebScrapeImagesResponse::Image>]
      required :images,
               -> { BrandDev::Internal::Type::ArrayOf[BrandDev::Models::BrandWebScrapeImagesResponse::Image] }

      # @!attribute success
      #   Always true on success.
      #
      #   @return [Boolean, BrandDev::Models::BrandWebScrapeImagesResponse::Success]
      required :success, enum: -> { BrandDev::Models::BrandWebScrapeImagesResponse::Success }

      # @!attribute url
      #   Page URL that was scraped.
      #
      #   @return [String]
      required :url, String

      # @!attribute actions_applied
      #   One verified outcome per requested browser action, in request order.
      #
      #   @return [Array<BrandDev::Models::BrandWebScrapeImagesResponse::ActionsApplied>, nil]
      optional :actions_applied,
               -> { BrandDev::Internal::Type::ArrayOf[BrandDev::Models::BrandWebScrapeImagesResponse::ActionsApplied] },
               api_name: :actionsApplied

      # @!attribute key_metadata
      #   Metadata about the API key used for the request. Included in every response
      #   whenever a valid API key is provided, even when the response status is not 200.
      #
      #   @return [BrandDev::Models::BrandWebScrapeImagesResponse::KeyMetadata, nil]
      optional :key_metadata, -> { BrandDev::Models::BrandWebScrapeImagesResponse::KeyMetadata }

      # @!method initialize(cache_metadata:, images:, success:, url:, actions_applied: nil, key_metadata: nil)
      #   Some parameter documentations has been truncated, see
      #   {BrandDev::Models::BrandWebScrapeImagesResponse} for more details.
      #
      #   @param cache_metadata [BrandDev::Models::BrandWebScrapeImagesResponse::CacheMetadata] Cache outcome for this response. Composite responses are hits only when every ca
      #
      #   @param images [Array<BrandDev::Models::BrandWebScrapeImagesResponse::Image>] Images found on the page.
      #
      #   @param success [Boolean, BrandDev::Models::BrandWebScrapeImagesResponse::Success] Always true on success.
      #
      #   @param url [String] Page URL that was scraped.
      #
      #   @param actions_applied [Array<BrandDev::Models::BrandWebScrapeImagesResponse::ActionsApplied>] One verified outcome per requested browser action, in request order.
      #
      #   @param key_metadata [BrandDev::Models::BrandWebScrapeImagesResponse::KeyMetadata] Metadata about the API key used for the request. Included in every response when

      # @see BrandDev::Models::BrandWebScrapeImagesResponse#cache_metadata
      class CacheMetadata < BrandDev::Internal::Type::BaseModel
        # @!attribute age_ms
        #   Age of the cached data in milliseconds. Zero for miss and zdr responses.
        #
        #   @return [Integer]
        required :age_ms, Integer

        # @!attribute status
        #   Whether the response was served from cache, required fresh work, or honored
        #   zero-data-retention cache bypass.
        #
        #   @return [Symbol, BrandDev::Models::BrandWebScrapeImagesResponse::CacheMetadata::Status]
        required :status, enum: -> { BrandDev::Models::BrandWebScrapeImagesResponse::CacheMetadata::Status }

        # @!method initialize(age_ms:, status:)
        #   Some parameter documentations has been truncated, see
        #   {BrandDev::Models::BrandWebScrapeImagesResponse::CacheMetadata} for more
        #   details.
        #
        #   Cache outcome for this response. Composite responses are hits only when every
        #   cache-controlled fetch contributing to the output was a hit; age_ms is the
        #   oldest contributing hit.
        #
        #   @param age_ms [Integer] Age of the cached data in milliseconds. Zero for miss and zdr responses.
        #
        #   @param status [Symbol, BrandDev::Models::BrandWebScrapeImagesResponse::CacheMetadata::Status] Whether the response was served from cache, required fresh work, or honored zero

        # Whether the response was served from cache, required fresh work, or honored
        # zero-data-retention cache bypass.
        #
        # @see BrandDev::Models::BrandWebScrapeImagesResponse::CacheMetadata#status
        module Status
          extend BrandDev::Internal::Type::Enum

          HIT = :hit
          MISS = :miss
          ZDR = :zdr

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class Image < BrandDev::Internal::Type::BaseModel
        # @!attribute alt
        #   Image alt text, or null when unavailable.
        #
        #   @return [String, nil]
        required :alt, String, nil?: true

        # @!attribute element
        #   Where the image was found.
        #
        #   @return [Symbol, BrandDev::Models::BrandWebScrapeImagesResponse::Image::Element]
        required :element, enum: -> { BrandDev::Models::BrandWebScrapeImagesResponse::Image::Element }

        # @!attribute src
        #   Original image value: URL, inline SVG or HTML, or base64 data URI.
        #
        #   @return [String]
        required :src, String

        # @!attribute type
        #   Format of src.
        #
        #   @return [Symbol, BrandDev::Models::BrandWebScrapeImagesResponse::Image::Type]
        required :type, enum: -> { BrandDev::Models::BrandWebScrapeImagesResponse::Image::Type }

        # @!attribute enrichment
        #   Requested metadata for images that could be processed.
        #
        #   @return [BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment, nil]
        optional :enrichment, -> { BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment }

        # @!method initialize(alt:, element:, src:, type:, enrichment: nil)
        #   @param alt [String, nil] Image alt text, or null when unavailable.
        #
        #   @param element [Symbol, BrandDev::Models::BrandWebScrapeImagesResponse::Image::Element] Where the image was found.
        #
        #   @param src [String] Original image value: URL, inline SVG or HTML, or base64 data URI.
        #
        #   @param type [Symbol, BrandDev::Models::BrandWebScrapeImagesResponse::Image::Type] Format of src.
        #
        #   @param enrichment [BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment] Requested metadata for images that could be processed.

        # Where the image was found.
        #
        # @see BrandDev::Models::BrandWebScrapeImagesResponse::Image#element
        module Element
          extend BrandDev::Internal::Type::Enum

          IMG = :img
          SVG = :svg
          LINK = :link
          SOURCE = :source
          VIDEO = :video
          CSS = :css
          OBJECT = :object
          META = :meta
          BACKGROUND = :background

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Format of src.
        #
        # @see BrandDev::Models::BrandWebScrapeImagesResponse::Image#type
        module Type
          extend BrandDev::Internal::Type::Enum

          URL = :url
          HTML = :html
          BASE64 = :base64

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see BrandDev::Models::BrandWebScrapeImagesResponse::Image#enrichment
        class Enrichment < BrandDev::Internal::Type::BaseModel
          # @!attribute height
          #   Image height in pixels, when measured.
          #
          #   @return [Integer, nil]
          optional :height, Integer

          # @!attribute mimetype
          #   Detected MIME type, when hosted.
          #
          #   @return [String, nil]
          optional :mimetype, String

          # @!attribute type
          #   Visual asset category, when classified.
          #
          #   @return [Symbol, BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment::Type, nil]
          optional :type, enum: -> { BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment::Type }

          # @!attribute url
          #   Brand.dev CDN URL, when hosted.
          #
          #   @return [String, nil]
          optional :url, String

          # @!attribute width
          #   Image width in pixels, when measured.
          #
          #   @return [Integer, nil]
          optional :width, Integer

          # @!method initialize(height: nil, mimetype: nil, type: nil, url: nil, width: nil)
          #   Requested metadata for images that could be processed.
          #
          #   @param height [Integer] Image height in pixels, when measured.
          #
          #   @param mimetype [String] Detected MIME type, when hosted.
          #
          #   @param type [Symbol, BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment::Type] Visual asset category, when classified.
          #
          #   @param url [String] Brand.dev CDN URL, when hosted.
          #
          #   @param width [Integer] Image width in pixels, when measured.

          # Visual asset category, when classified.
          #
          # @see BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment#type
          module Type
            extend BrandDev::Internal::Type::Enum

            PHOTOGRAPHY = :photography
            ILLUSTRATION = :illustration
            LOGO = :logo
            WORDMARK = :wordmark
            ICON = :icon
            PATTERN = :pattern
            GRAPHIC = :graphic
            OTHER = :other

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end

      # Always true on success.
      #
      # @see BrandDev::Models::BrandWebScrapeImagesResponse#success
      module Success
        extend BrandDev::Internal::Type::Enum

        TRUE = true

        # @!method self.values
        #   @return [Array<Boolean>]
      end

      class ActionsApplied < BrandDev::Internal::Type::BaseModel
        # @!attribute instruction
        #
        #   @return [String]
        required :instruction, String

        # @!attribute status
        #   Applied means the requested page state was visibly verified. Failed means it was
        #   not verified. Skipped means it was not attempted.
        #
        #   @return [Symbol, BrandDev::Models::BrandWebScrapeImagesResponse::ActionsApplied::Status]
        required :status, enum: -> { BrandDev::Models::BrandWebScrapeImagesResponse::ActionsApplied::Status }

        # @!attribute completion_evidence
        #   Visible page evidence used to verify an applied action.
        #
        #   @return [String, nil]
        optional :completion_evidence, String, api_name: :completionEvidence

        # @!attribute duration_ms
        #
        #   @return [Float, nil]
        optional :duration_ms, Float, api_name: :durationMs

        # @!attribute error
        #
        #   @return [String, nil]
        optional :error, String

        # @!attribute method_
        #
        #   @return [String, nil]
        optional :method_, String, api_name: :method

        # @!attribute target_description
        #
        #   @return [String, nil]
        optional :target_description, String, api_name: :targetDescription

        # @!method initialize(instruction:, status:, completion_evidence: nil, duration_ms: nil, error: nil, method_: nil, target_description: nil)
        #   Some parameter documentations has been truncated, see
        #   {BrandDev::Models::BrandWebScrapeImagesResponse::ActionsApplied} for more
        #   details.
        #
        #   @param instruction [String]
        #
        #   @param status [Symbol, BrandDev::Models::BrandWebScrapeImagesResponse::ActionsApplied::Status] Applied means the requested page state was visibly verified. Failed means it was
        #
        #   @param completion_evidence [String] Visible page evidence used to verify an applied action.
        #
        #   @param duration_ms [Float]
        #
        #   @param error [String]
        #
        #   @param method_ [String]
        #
        #   @param target_description [String]

        # Applied means the requested page state was visibly verified. Failed means it was
        # not verified. Skipped means it was not attempted.
        #
        # @see BrandDev::Models::BrandWebScrapeImagesResponse::ActionsApplied#status
        module Status
          extend BrandDev::Internal::Type::Enum

          APPLIED = :applied
          FAILED = :failed
          SKIPPED = :skipped

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see BrandDev::Models::BrandWebScrapeImagesResponse#key_metadata
      class KeyMetadata < BrandDev::Internal::Type::BaseModel
        # @!attribute credits_consumed
        #   The number of credits consumed by this request.
        #
        #   @return [Integer]
        required :credits_consumed, Integer

        # @!attribute credits_remaining
        #   The number of credits remaining for your organization after this request.
        #
        #   @return [Integer]
        required :credits_remaining, Integer

        # @!method initialize(credits_consumed:, credits_remaining:)
        #   Metadata about the API key used for the request. Included in every response
        #   whenever a valid API key is provided, even when the response status is not 200.
        #
        #   @param credits_consumed [Integer] The number of credits consumed by this request.
        #
        #   @param credits_remaining [Integer] The number of credits remaining for your organization after this request.
      end
    end
  end
end
