# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#web_scrape_html
    class BrandWebScrapeHTMLParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      # @!attribute url
      #   Full URL to scrape (must include http:// or https:// protocol)
      #
      #   @return [String]
      required :url, String

      # @!method initialize(url:, request_options: {})
      #   @param url [String] Full URL to scrape (must include http:// or https:// protocol)
      #
      #   @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
