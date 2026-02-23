# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#web_scrape_html
    class BrandWebScrapeHTMLResponse < BrandDev::Internal::Type::BaseModel
      # @!attribute html
      #   Raw HTML content of the page
      #
      #   @return [String]
      required :html, String

      # @!attribute success
      #   Indicates success
      #
      #   @return [Boolean, BrandDev::Models::BrandWebScrapeHTMLResponse::Success]
      required :success, enum: -> { BrandDev::Models::BrandWebScrapeHTMLResponse::Success }

      # @!attribute url
      #   The URL that was scraped
      #
      #   @return [String]
      required :url, String

      # @!method initialize(html:, success:, url:)
      #   @param html [String] Raw HTML content of the page
      #
      #   @param success [Boolean, BrandDev::Models::BrandWebScrapeHTMLResponse::Success] Indicates success
      #
      #   @param url [String] The URL that was scraped

      # Indicates success
      #
      # @see BrandDev::Models::BrandWebScrapeHTMLResponse#success
      module Success
        extend BrandDev::Internal::Type::Enum

        TRUE = true

        # @!method self.values
        #   @return [Array<Boolean>]
      end
    end
  end
end
