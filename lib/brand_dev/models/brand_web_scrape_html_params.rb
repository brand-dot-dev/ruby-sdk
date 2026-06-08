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

      # @!attribute exclude_selectors
      #   CSS selectors to remove from the result. Applied after includeSelectors.
      #   Exclusion takes precedence: an element matching both is removed. Examples:
      #   "nav", "footer", ".ad-banner", "[aria-hidden=true]".
      #
      #   @return [Array<String>, nil]
      optional :exclude_selectors, BrandDev::Internal::Type::ArrayOf[String]

      # @!attribute headers
      #   Optional outbound HTTP headers forwarded only to the target URL, sent as
      #   deep-object query params such as headers[X-Custom]=value. When provided, caching
      #   is bypassed: the result is neither read from nor written to cache.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :headers, BrandDev::Internal::Type::HashOf[String]

      # @!attribute include_frames
      #   When true, iframes are rendered inline into the returned HTML.
      #
      #   @return [Boolean, nil]
      optional :include_frames, BrandDev::Internal::Type::Boolean

      # @!attribute include_selectors
      #   CSS selectors. When provided, only matching subtrees (and their descendants) are
      #   kept and everything else is dropped. When omitted, the entire document is kept.
      #   Examples: "article.main", "#content", "[role=main]".
      #
      #   @return [Array<String>, nil]
      optional :include_selectors, BrandDev::Internal::Type::ArrayOf[String]

      # @!attribute max_age_ms
      #   Return a cached result if a prior scrape for the same parameters exists and is
      #   younger than this many milliseconds. Defaults to 1 day (86400000 ms) when
      #   omitted. Max is 30 days (2592000000 ms). Set to 0 to always scrape fresh.
      #
      #   @return [Integer, nil]
      optional :max_age_ms, Integer

      # @!attribute pdf
      #   PDF parsing controls. Use start/end to limit text extraction and OCR to an
      #   inclusive 1-based page range.
      #
      #   @return [BrandDev::Models::BrandWebScrapeHTMLParams::Pdf, nil]
      optional :pdf, -> { BrandDev::BrandWebScrapeHTMLParams::Pdf }

      # @!attribute timeout_ms
      #   Optional timeout in milliseconds for the request. If the request takes longer
      #   than this value, it will be aborted with a 408 status code. Maximum allowed
      #   value is 300000ms (5 minutes).
      #
      #   @return [Integer, nil]
      optional :timeout_ms, Integer

      # @!attribute use_main_content_only
      #   When true, return only the page's main content in the HTML response, excluding
      #   headers, footers, sidebars, and navigation when detectable.
      #
      #   @return [Boolean, nil]
      optional :use_main_content_only, BrandDev::Internal::Type::Boolean

      # @!attribute wait_for_ms
      #   Optional browser wait time in milliseconds after initial page load. Min: 0. Max:
      #   30000 (30 seconds).
      #
      #   @return [Integer, nil]
      optional :wait_for_ms, Integer

      # @!method initialize(url:, exclude_selectors: nil, headers: nil, include_frames: nil, include_selectors: nil, max_age_ms: nil, pdf: nil, timeout_ms: nil, use_main_content_only: nil, wait_for_ms: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {BrandDev::Models::BrandWebScrapeHTMLParams} for more details.
      #
      #   @param url [String] Full URL to scrape (must include http:// or https:// protocol)
      #
      #   @param exclude_selectors [Array<String>] CSS selectors to remove from the result. Applied after includeSelectors. Exclusi
      #
      #   @param headers [Hash{Symbol=>String}] Optional outbound HTTP headers forwarded only to the target URL, sent as deep-ob
      #
      #   @param include_frames [Boolean] When true, iframes are rendered inline into the returned HTML.
      #
      #   @param include_selectors [Array<String>] CSS selectors. When provided, only matching subtrees (and their descendants) are
      #
      #   @param max_age_ms [Integer] Return a cached result if a prior scrape for the same parameters exists and is y
      #
      #   @param pdf [BrandDev::Models::BrandWebScrapeHTMLParams::Pdf] PDF parsing controls. Use start/end to limit text extraction and OCR to an inclu
      #
      #   @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      #   @param use_main_content_only [Boolean] When true, return only the page's main content in the HTML response, excluding h
      #
      #   @param wait_for_ms [Integer] Optional browser wait time in milliseconds after initial page load. Min: 0. Max:
      #
      #   @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}]

      class Pdf < BrandDev::Internal::Type::BaseModel
        # @!attribute end_
        #   Last 1-based PDF page to parse. When omitted, parsing ends at the last page.
        #   Must be greater than or equal to start when both are provided.
        #
        #   @return [Integer, nil]
        optional :end_, Integer, api_name: :end

        # @!attribute should_parse
        #   When true, PDF URLs are fetched and parsed. When false, PDF URLs are skipped and
        #   a 400 WEBSITE_ACCESS_ERROR is returned.
        #
        #   @return [Boolean, nil]
        optional :should_parse, BrandDev::Internal::Type::Boolean, api_name: :shouldParse

        # @!attribute start
        #   First 1-based PDF page to parse. When omitted, parsing starts at the first page.
        #
        #   @return [Integer, nil]
        optional :start, Integer

        # @!method initialize(end_: nil, should_parse: nil, start: nil)
        #   Some parameter documentations has been truncated, see
        #   {BrandDev::Models::BrandWebScrapeHTMLParams::Pdf} for more details.
        #
        #   PDF parsing controls. Use start/end to limit text extraction and OCR to an
        #   inclusive 1-based page range.
        #
        #   @param end_ [Integer] Last 1-based PDF page to parse. When omitted, parsing ends at the last page. Mus
        #
        #   @param should_parse [Boolean] When true, PDF URLs are fetched and parsed. When false, PDF URLs are skipped and
        #
        #   @param start [Integer] First 1-based PDF page to parse. When omitted, parsing starts at the first page.
      end
    end
  end
end
