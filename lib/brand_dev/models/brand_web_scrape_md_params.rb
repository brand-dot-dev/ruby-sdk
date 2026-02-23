# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#web_scrape_md
    class BrandWebScrapeMdParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      # @!attribute url
      #   Full URL to scrape and convert to markdown (must include http:// or https://
      #   protocol)
      #
      #   @return [String]
      required :url, String

      # @!attribute include_images
      #   Include image references in Markdown output
      #
      #   @return [Boolean, nil]
      optional :include_images, BrandDev::Internal::Type::Boolean

      # @!attribute include_links
      #   Preserve hyperlinks in Markdown output
      #
      #   @return [Boolean, nil]
      optional :include_links, BrandDev::Internal::Type::Boolean

      # @!method initialize(url:, include_images: nil, include_links: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {BrandDev::Models::BrandWebScrapeMdParams} for more details.
      #
      #   @param url [String] Full URL to scrape and convert to markdown (must include http:// or https:// pro
      #
      #   @param include_images [Boolean] Include image references in Markdown output
      #
      #   @param include_links [Boolean] Preserve hyperlinks in Markdown output
      #
      #   @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
