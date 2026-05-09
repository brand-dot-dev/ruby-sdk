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

      # @!attribute include_frames
      #   When true, iframes are rendered inline into the returned HTML.
      #
      #   @return [Boolean, nil]
      optional :include_frames, BrandDev::Internal::Type::Boolean

      # @!attribute max_age_ms
      #   Return a cached result if a prior scrape for the same parameters exists and is
      #   younger than this many milliseconds. Defaults to 1 day (86400000 ms) when
      #   omitted. Max is 30 days (2592000000 ms). Set to 0 to always scrape fresh.
      #
      #   @return [Integer, nil]
      optional :max_age_ms, Integer

      # @!attribute parse_pdf
      #   When true (default), PDF URLs are fetched and their text layer is extracted and
      #   returned wrapped in <html><pdf>…</pdf></html>. When false, PDF URLs are skipped
      #   and a 400 WEBSITE_ACCESS_ERROR is returned.
      #
      #   @return [Boolean, nil]
      optional :parse_pdf, BrandDev::Internal::Type::Boolean

      # @!attribute timeout_ms
      #   Optional timeout in milliseconds for the request. If the request takes longer
      #   than this value, it will be aborted with a 408 status code. Maximum allowed
      #   value is 300000ms (5 minutes).
      #
      #   @return [Integer, nil]
      optional :timeout_ms, Integer

      # @!attribute wait_for_ms
      #   Optional browser wait time in milliseconds after initial page load. Min: 0. Max:
      #   30000 (30 seconds).
      #
      #   @return [Integer, nil]
      optional :wait_for_ms, Integer

      # @!method initialize(url:, include_frames: nil, max_age_ms: nil, parse_pdf: nil, timeout_ms: nil, wait_for_ms: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {BrandDev::Models::BrandWebScrapeHTMLParams} for more details.
      #
      #   @param url [String] Full URL to scrape (must include http:// or https:// protocol)
      #
      #   @param include_frames [Boolean] When true, iframes are rendered inline into the returned HTML.
      #
      #   @param max_age_ms [Integer] Return a cached result if a prior scrape for the same parameters exists and is y
      #
      #   @param parse_pdf [Boolean] When true (default), PDF URLs are fetched and their text layer is extracted and
      #
      #   @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      #   @param wait_for_ms [Integer] Optional browser wait time in milliseconds after initial page load. Min: 0. Max:
      #
      #   @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
