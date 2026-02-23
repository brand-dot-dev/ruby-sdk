# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#web_scrape_sitemap
    class BrandWebScrapeSitemapResponse < BrandDev::Internal::Type::BaseModel
      # @!attribute domain
      #   The normalized domain that was crawled
      #
      #   @return [String]
      required :domain, String

      # @!attribute meta
      #   Metadata about the sitemap crawl operation
      #
      #   @return [BrandDev::Models::BrandWebScrapeSitemapResponse::Meta]
      required :meta, -> { BrandDev::Models::BrandWebScrapeSitemapResponse::Meta }

      # @!attribute success
      #   Indicates success
      #
      #   @return [Boolean, BrandDev::Models::BrandWebScrapeSitemapResponse::Success]
      required :success, enum: -> { BrandDev::Models::BrandWebScrapeSitemapResponse::Success }

      # @!attribute urls
      #   Array of discovered page URLs from the sitemap (max 500)
      #
      #   @return [Array<String>]
      required :urls, BrandDev::Internal::Type::ArrayOf[String]

      # @!method initialize(domain:, meta:, success:, urls:)
      #   @param domain [String] The normalized domain that was crawled
      #
      #   @param meta [BrandDev::Models::BrandWebScrapeSitemapResponse::Meta] Metadata about the sitemap crawl operation
      #
      #   @param success [Boolean, BrandDev::Models::BrandWebScrapeSitemapResponse::Success] Indicates success
      #
      #   @param urls [Array<String>] Array of discovered page URLs from the sitemap (max 500)

      # @see BrandDev::Models::BrandWebScrapeSitemapResponse#meta
      class Meta < BrandDev::Internal::Type::BaseModel
        # @!attribute errors
        #   Number of errors encountered during crawling
        #
        #   @return [Integer]
        required :errors, Integer

        # @!attribute sitemaps_discovered
        #   Total number of sitemap files discovered
        #
        #   @return [Integer]
        required :sitemaps_discovered, Integer, api_name: :sitemapsDiscovered

        # @!attribute sitemaps_fetched
        #   Number of sitemap files successfully fetched and parsed
        #
        #   @return [Integer]
        required :sitemaps_fetched, Integer, api_name: :sitemapsFetched

        # @!attribute sitemaps_skipped
        #   Number of sitemap files skipped (due to errors, timeouts, or limits)
        #
        #   @return [Integer]
        required :sitemaps_skipped, Integer, api_name: :sitemapsSkipped

        # @!method initialize(errors:, sitemaps_discovered:, sitemaps_fetched:, sitemaps_skipped:)
        #   Metadata about the sitemap crawl operation
        #
        #   @param errors [Integer] Number of errors encountered during crawling
        #
        #   @param sitemaps_discovered [Integer] Total number of sitemap files discovered
        #
        #   @param sitemaps_fetched [Integer] Number of sitemap files successfully fetched and parsed
        #
        #   @param sitemaps_skipped [Integer] Number of sitemap files skipped (due to errors, timeouts, or limits)
      end

      # Indicates success
      #
      # @see BrandDev::Models::BrandWebScrapeSitemapResponse#success
      module Success
        extend BrandDev::Internal::Type::Enum

        TRUE = true

        # @!method self.values
        #   @return [Array<Boolean>]
      end
    end
  end
end
