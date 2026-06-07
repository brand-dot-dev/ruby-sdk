# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#web_scrape_html
    class BrandWebScrapeHTMLResponse < BrandDev::Internal::Type::BaseModel
      # @!attribute html
      #   The scraped content of the page. For normal pages this is the raw HTML. When the
      #   page is a sitemap or feed served behind an XSL stylesheet (which browsers render
      #   into HTML), this is the underlying XML instead — see the `type` field.
      #
      #   @return [String]
      required :html, String

      # @!attribute success
      #   Indicates success
      #
      #   @return [Boolean, BrandDev::Models::BrandWebScrapeHTMLResponse::Success]
      required :success, enum: -> { BrandDev::Models::BrandWebScrapeHTMLResponse::Success }

      # @!attribute type
      #   Detected content type of the returned `html` field. Sitemaps and feeds are
      #   surfaced as `xml`; ordinary pages are `html`.
      #
      #   @return [Symbol, BrandDev::Models::BrandWebScrapeHTMLResponse::Type]
      required :type, enum: -> { BrandDev::Models::BrandWebScrapeHTMLResponse::Type }

      # @!attribute url
      #   The URL that was scraped
      #
      #   @return [String]
      required :url, String

      # @!method initialize(html:, success:, type:, url:)
      #   Some parameter documentations has been truncated, see
      #   {BrandDev::Models::BrandWebScrapeHTMLResponse} for more details.
      #
      #   @param html [String] The scraped content of the page. For normal pages this is the raw HTML. When the
      #
      #   @param success [Boolean, BrandDev::Models::BrandWebScrapeHTMLResponse::Success] Indicates success
      #
      #   @param type [Symbol, BrandDev::Models::BrandWebScrapeHTMLResponse::Type] Detected content type of the returned `html` field. Sitemaps and feeds are surfa
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

      # Detected content type of the returned `html` field. Sitemaps and feeds are
      # surfaced as `xml`; ordinary pages are `html`.
      #
      # @see BrandDev::Models::BrandWebScrapeHTMLResponse#type
      module Type
        extend BrandDev::Internal::Type::Enum

        HTML = :html
        XML = :xml
        JSON = :json
        TEXT = :text
        CSV = :csv
        MARKDOWN = :markdown
        SVG = :svg
        PDF = :pdf

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
