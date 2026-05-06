# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#web_scrape_images
    class BrandWebScrapeImagesResponse < BrandDev::Internal::Type::BaseModel
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

      # @!method initialize(images:, success:, url:)
      #   @param images [Array<BrandDev::Models::BrandWebScrapeImagesResponse::Image>] Images found on the page.
      #
      #   @param success [Boolean, BrandDev::Models::BrandWebScrapeImagesResponse::Success] Always true on success.
      #
      #   @param url [String] Page URL that was scraped.

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
    end
  end
end
