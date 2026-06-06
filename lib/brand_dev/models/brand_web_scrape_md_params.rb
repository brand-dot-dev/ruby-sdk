# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#web_scrape_md
    class BrandWebScrapeMdParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      # @!attribute url
      #   Full URL to scrape into LLM usable Markdown (must include http:// or https://
      #   protocol)
      #
      #   @return [String]
      required :url, String

      # @!attribute headers
      #   Optional outbound HTTP headers forwarded only to the target URL, sent as
      #   deep-object query params such as headers[X-Custom]=value. When provided, caching
      #   is bypassed: the result is neither read from nor written to cache.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :headers, BrandDev::Internal::Type::HashOf[String]

      # @!attribute include_frames
      #   When true, the contents of iframes are rendered to Markdown.
      #
      #   @return [Boolean, nil]
      optional :include_frames, BrandDev::Internal::Type::Boolean

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
      #   @return [BrandDev::Models::BrandWebScrapeMdParams::Pdf, nil]
      optional :pdf, -> { BrandDev::BrandWebScrapeMdParams::Pdf }

      # @!attribute shorten_base64_images
      #   Shorten base64-encoded image data in the Markdown output
      #
      #   @return [Boolean, nil]
      optional :shorten_base64_images, BrandDev::Internal::Type::Boolean

      # @!attribute timeout_ms
      #   Optional timeout in milliseconds for the request. If the request takes longer
      #   than this value, it will be aborted with a 408 status code. Maximum allowed
      #   value is 300000ms (5 minutes).
      #
      #   @return [Integer, nil]
      optional :timeout_ms, Integer

      # @!attribute use_main_content_only
      #   Extract only the main content of the page, excluding headers, footers, sidebars,
      #   and navigation
      #
      #   @return [Boolean, nil]
      optional :use_main_content_only, BrandDev::Internal::Type::Boolean

      # @!attribute wait_for_ms
      #   Optional browser wait time in milliseconds after initial page load before
      #   converting the page to Markdown. Min: 0. Max: 30000 (30 seconds).
      #
      #   @return [Integer, nil]
      optional :wait_for_ms, Integer

      # @!method initialize(url:, headers: nil, include_frames: nil, include_images: nil, include_links: nil, max_age_ms: nil, pdf: nil, shorten_base64_images: nil, timeout_ms: nil, use_main_content_only: nil, wait_for_ms: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {BrandDev::Models::BrandWebScrapeMdParams} for more details.
      #
      #   @param url [String] Full URL to scrape into LLM usable Markdown (must include http:// or https:// pr
      #
      #   @param headers [Hash{Symbol=>String}] Optional outbound HTTP headers forwarded only to the target URL, sent as deep-ob
      #
      #   @param include_frames [Boolean] When true, the contents of iframes are rendered to Markdown.
      #
      #   @param include_images [Boolean] Include image references in Markdown output
      #
      #   @param include_links [Boolean] Preserve hyperlinks in Markdown output
      #
      #   @param max_age_ms [Integer] Return a cached result if a prior scrape for the same parameters exists and is y
      #
      #   @param pdf [BrandDev::Models::BrandWebScrapeMdParams::Pdf] PDF parsing controls. Use start/end to limit text extraction and OCR to an inclu
      #
      #   @param shorten_base64_images [Boolean] Shorten base64-encoded image data in the Markdown output
      #
      #   @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      #   @param use_main_content_only [Boolean] Extract only the main content of the page, excluding headers, footers, sidebars,
      #
      #   @param wait_for_ms [Integer] Optional browser wait time in milliseconds after initial page load before conver
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
        #   {BrandDev::Models::BrandWebScrapeMdParams::Pdf} for more details.
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
