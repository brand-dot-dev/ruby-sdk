# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#web_scrape_images
    class BrandWebScrapeImagesResponse < BrandDev::Internal::Type::BaseModel
      # @!attribute images
      #   Array of scraped images
      #
      #   @return [Array<BrandDev::Models::BrandWebScrapeImagesResponse::Image>]
      required :images,
               -> { BrandDev::Internal::Type::ArrayOf[BrandDev::Models::BrandWebScrapeImagesResponse::Image] }

      # @!attribute success
      #   Indicates success
      #
      #   @return [Boolean, BrandDev::Models::BrandWebScrapeImagesResponse::Success]
      required :success, enum: -> { BrandDev::Models::BrandWebScrapeImagesResponse::Success }

      # @!attribute url
      #   The URL that was scraped
      #
      #   @return [String]
      required :url, String

      # @!method initialize(images:, success:, url:)
      #   @param images [Array<BrandDev::Models::BrandWebScrapeImagesResponse::Image>] Array of scraped images
      #
      #   @param success [Boolean, BrandDev::Models::BrandWebScrapeImagesResponse::Success] Indicates success
      #
      #   @param url [String] The URL that was scraped

      class Image < BrandDev::Internal::Type::BaseModel
        # @!attribute alt
        #   Alt text of the image, or null if not present
        #
        #   @return [String, nil]
        required :alt, String, nil?: true

        # @!attribute element
        #   The HTML element the image was found in
        #
        #   @return [Symbol, BrandDev::Models::BrandWebScrapeImagesResponse::Image::Element]
        required :element, enum: -> { BrandDev::Models::BrandWebScrapeImagesResponse::Image::Element }

        # @!attribute src
        #   The image source - can be a URL, inline HTML (for SVGs), or a base64 data URI
        #
        #   @return [String]
        required :src, String

        # @!attribute type
        #   The type/format of the src value
        #
        #   @return [Symbol, BrandDev::Models::BrandWebScrapeImagesResponse::Image::Type]
        required :type, enum: -> { BrandDev::Models::BrandWebScrapeImagesResponse::Image::Type }

        # @!method initialize(alt:, element:, src:, type:)
        #   @param alt [String, nil] Alt text of the image, or null if not present
        #
        #   @param element [Symbol, BrandDev::Models::BrandWebScrapeImagesResponse::Image::Element] The HTML element the image was found in
        #
        #   @param src [String] The image source - can be a URL, inline HTML (for SVGs), or a base64 data URI
        #
        #   @param type [Symbol, BrandDev::Models::BrandWebScrapeImagesResponse::Image::Type] The type/format of the src value

        # The HTML element the image was found in
        #
        # @see BrandDev::Models::BrandWebScrapeImagesResponse::Image#element
        module Element
          extend BrandDev::Internal::Type::Enum

          IMG = :img
          SVG = :svg
          LINK = :link
          SOURCE = :source
          VIDEO = :video

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The type/format of the src value
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
      end

      # Indicates success
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
