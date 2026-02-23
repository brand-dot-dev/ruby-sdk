# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#web_scrape_sitemap
    class BrandWebScrapeSitemapParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      # @!attribute domain
      #   Domain name to crawl sitemaps for (e.g., 'example.com'). The domain will be
      #   automatically normalized and validated.
      #
      #   @return [String]
      required :domain, String

      # @!method initialize(domain:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {BrandDev::Models::BrandWebScrapeSitemapParams} for more details.
      #
      #   @param domain [String] Domain name to crawl sitemaps for (e.g., 'example.com'). The domain will be auto
      #
      #   @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
