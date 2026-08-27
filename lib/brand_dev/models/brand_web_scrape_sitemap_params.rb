# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#web_scrape_sitemap
    class BrandWebScrapeSitemapParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      # @!attribute domain
      #   Domain to build a sitemap for
      #
      #   @return [String]
      required :domain, String

      # @!attribute headers
      #   Optional outbound HTTP headers forwarded only to the target URL, sent as
      #   deep-object query params such as headers[X-Custom]=value. When provided, caching
      #   is bypassed: the result is neither read from nor written to cache.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :headers, BrandDev::Internal::Type::HashOf[String]

      # @!attribute max_links
      #   Maximum number of links to return from the sitemap crawl. Defaults to 10,000.
      #   Minimum is 1, maximum is 100,000.
      #
      #   @return [Integer, nil]
      optional :max_links, Integer

      # @!attribute search
      #   Optional search phrase. When provided, the crawled sitemap is filtered to the
      #   pages whose URLs are about that phrase, most relevant first, and the request
      #   costs 2 credits instead of 1.
      #
      #   @return [String, nil]
      optional :search, String

      # @!attribute sitemap_url
      #   Optional explicit sitemap URL. When provided, exactly this sitemap is crawled
      #   instead of discovering the domain's sitemaps.
      #
      #   @return [String, nil]
      optional :sitemap_url, String

      # @!attribute tags
      #   Optional comma-separated caller-defined tags for tracking this request. Tags are
      #   recorded on the request's usage log and can be used to filter usage on the
      #   dashboard usage page. Up to 20 tags, each 1-50 characters.
      #
      #   @return [Array<String>, nil]
      optional :tags, BrandDev::Internal::Type::ArrayOf[String]

      # @!attribute timeout_ms
      #   Optional timeout in milliseconds for the request. If the request takes longer
      #   than this value, it will be aborted with a 408 status code. Maximum allowed
      #   value is 300000ms (5 minutes).
      #
      #   @return [Integer, nil]
      optional :timeout_ms, Integer

      # @!attribute url_regex
      #   Optional RE2-compatible regex pattern. Only URLs matching this pattern are
      #   returned and counted against maxLinks.
      #
      #   @return [String, nil]
      optional :url_regex, String

      # @!attribute zdr
      #   Set to enabled to bypass shared caches and omit request and response content
      #   from retained usage logs. Requires zero data retention to be enabled for your
      #   organization (contact support@context.dev), otherwise the request fails with
      #   ZDR_NOT_ENABLED. Successful ZDR responses include X-Context-ZDR: true.
      #
      #   @return [Symbol, BrandDev::Models::BrandWebScrapeSitemapParams::Zdr, nil]
      optional :zdr, enum: -> { BrandDev::BrandWebScrapeSitemapParams::Zdr }

      # @!method initialize(domain:, headers: nil, max_links: nil, search: nil, sitemap_url: nil, tags: nil, timeout_ms: nil, url_regex: nil, zdr: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {BrandDev::Models::BrandWebScrapeSitemapParams} for more details.
      #
      #   @param domain [String] Domain to build a sitemap for
      #
      #   @param headers [Hash{Symbol=>String}] Optional outbound HTTP headers forwarded only to the target URL, sent as deep-ob
      #
      #   @param max_links [Integer] Maximum number of links to return from the sitemap crawl. Defaults to 10,000. Mi
      #
      #   @param search [String] Optional search phrase. When provided, the crawled sitemap is filtered to the pa
      #
      #   @param sitemap_url [String] Optional explicit sitemap URL. When provided, exactly this sitemap is crawled in
      #
      #   @param tags [Array<String>] Optional comma-separated caller-defined tags for tracking this request. Tags are
      #
      #   @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      #   @param url_regex [String] Optional RE2-compatible regex pattern. Only URLs matching this pattern are retur
      #
      #   @param zdr [Symbol, BrandDev::Models::BrandWebScrapeSitemapParams::Zdr] Set to enabled to bypass shared caches and omit request and response content fro
      #
      #   @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}]

      # Set to enabled to bypass shared caches and omit request and response content
      # from retained usage logs. Requires zero data retention to be enabled for your
      # organization (contact support@context.dev), otherwise the request fails with
      # ZDR_NOT_ENABLED. Successful ZDR responses include X-Context-ZDR: true.
      module Zdr
        extend BrandDev::Internal::Type::Enum

        ENABLED = :enabled
        DISABLED = :disabled

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
