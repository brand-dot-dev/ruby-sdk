# typed: strong

module BrandDev
  module Models
    class BrandWebScrapeHTMLParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(BrandDev::BrandWebScrapeHTMLParams, BrandDev::Internal::AnyHash)
        end

      # Full URL to scrape (must include http:// or https:// protocol)
      sig { returns(String) }
      attr_accessor :url

      # CSS selectors to remove from the result. Applied after includeSelectors.
      # Exclusion takes precedence: an element matching both is removed. Examples:
      # "nav", "footer", ".ad-banner", "[aria-hidden=true]".
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :exclude_selectors

      sig { params(exclude_selectors: T::Array[String]).void }
      attr_writer :exclude_selectors

      # Optional outbound HTTP headers forwarded only to the target URL, sent as
      # deep-object query params such as headers[X-Custom]=value. When provided, caching
      # is bypassed: the result is neither read from nor written to cache.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :headers

      sig { params(headers: T::Hash[Symbol, String]).void }
      attr_writer :headers

      # When true, iframes are rendered inline into the returned HTML.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_frames

      sig { params(include_frames: T::Boolean).void }
      attr_writer :include_frames

      # CSS selectors. When provided, only matching subtrees (and their descendants) are
      # kept and everything else is dropped. When omitted, the entire document is kept.
      # Examples: "article.main", "#content", "[role=main]".
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :include_selectors

      sig { params(include_selectors: T::Array[String]).void }
      attr_writer :include_selectors

      # Return a cached result if a prior scrape for the same parameters exists and is
      # younger than this many milliseconds. Defaults to 1 day (86400000 ms) when
      # omitted. Max is 30 days (2592000000 ms). Set to 0 to always scrape fresh.
      sig { returns(T.nilable(Integer)) }
      attr_reader :max_age_ms

      sig { params(max_age_ms: Integer).void }
      attr_writer :max_age_ms

      # PDF parsing controls. Use start/end to limit text extraction and OCR to an
      # inclusive 1-based page range.
      sig { returns(T.nilable(BrandDev::BrandWebScrapeHTMLParams::Pdf)) }
      attr_reader :pdf

      sig { params(pdf: BrandDev::BrandWebScrapeHTMLParams::Pdf::OrHash).void }
      attr_writer :pdf

      # Optional timeout in milliseconds for the request. If the request takes longer
      # than this value, it will be aborted with a 408 status code. Maximum allowed
      # value is 300000ms (5 minutes).
      sig { returns(T.nilable(Integer)) }
      attr_reader :timeout_ms

      sig { params(timeout_ms: Integer).void }
      attr_writer :timeout_ms

      # When true, return only the page's main content in the HTML response, excluding
      # headers, footers, sidebars, and navigation when detectable.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :use_main_content_only

      sig { params(use_main_content_only: T::Boolean).void }
      attr_writer :use_main_content_only

      # Optional browser wait time in milliseconds after initial page load. Min: 0. Max:
      # 30000 (30 seconds).
      sig { returns(T.nilable(Integer)) }
      attr_reader :wait_for_ms

      sig { params(wait_for_ms: Integer).void }
      attr_writer :wait_for_ms

      sig do
        params(
          url: String,
          exclude_selectors: T::Array[String],
          headers: T::Hash[Symbol, String],
          include_frames: T::Boolean,
          include_selectors: T::Array[String],
          max_age_ms: Integer,
          pdf: BrandDev::BrandWebScrapeHTMLParams::Pdf::OrHash,
          timeout_ms: Integer,
          use_main_content_only: T::Boolean,
          wait_for_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Full URL to scrape (must include http:// or https:// protocol)
        url:,
        # CSS selectors to remove from the result. Applied after includeSelectors.
        # Exclusion takes precedence: an element matching both is removed. Examples:
        # "nav", "footer", ".ad-banner", "[aria-hidden=true]".
        exclude_selectors: nil,
        # Optional outbound HTTP headers forwarded only to the target URL, sent as
        # deep-object query params such as headers[X-Custom]=value. When provided, caching
        # is bypassed: the result is neither read from nor written to cache.
        headers: nil,
        # When true, iframes are rendered inline into the returned HTML.
        include_frames: nil,
        # CSS selectors. When provided, only matching subtrees (and their descendants) are
        # kept and everything else is dropped. When omitted, the entire document is kept.
        # Examples: "article.main", "#content", "[role=main]".
        include_selectors: nil,
        # Return a cached result if a prior scrape for the same parameters exists and is
        # younger than this many milliseconds. Defaults to 1 day (86400000 ms) when
        # omitted. Max is 30 days (2592000000 ms). Set to 0 to always scrape fresh.
        max_age_ms: nil,
        # PDF parsing controls. Use start/end to limit text extraction and OCR to an
        # inclusive 1-based page range.
        pdf: nil,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        # When true, return only the page's main content in the HTML response, excluding
        # headers, footers, sidebars, and navigation when detectable.
        use_main_content_only: nil,
        # Optional browser wait time in milliseconds after initial page load. Min: 0. Max:
        # 30000 (30 seconds).
        wait_for_ms: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            url: String,
            exclude_selectors: T::Array[String],
            headers: T::Hash[Symbol, String],
            include_frames: T::Boolean,
            include_selectors: T::Array[String],
            max_age_ms: Integer,
            pdf: BrandDev::BrandWebScrapeHTMLParams::Pdf,
            timeout_ms: Integer,
            use_main_content_only: T::Boolean,
            wait_for_ms: Integer,
            request_options: BrandDev::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Pdf < BrandDev::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              BrandDev::BrandWebScrapeHTMLParams::Pdf,
              BrandDev::Internal::AnyHash
            )
          end

        # Last 1-based PDF page to parse. When omitted, parsing ends at the last page.
        # Must be greater than or equal to start when both are provided.
        sig { returns(T.nilable(Integer)) }
        attr_reader :end_

        sig { params(end_: Integer).void }
        attr_writer :end_

        # When true, PDF URLs are fetched and parsed. When false, PDF URLs are skipped and
        # a 400 WEBSITE_ACCESS_ERROR is returned.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :should_parse

        sig { params(should_parse: T::Boolean).void }
        attr_writer :should_parse

        # First 1-based PDF page to parse. When omitted, parsing starts at the first page.
        sig { returns(T.nilable(Integer)) }
        attr_reader :start

        sig { params(start: Integer).void }
        attr_writer :start

        # PDF parsing controls. Use start/end to limit text extraction and OCR to an
        # inclusive 1-based page range.
        sig do
          params(
            end_: Integer,
            should_parse: T::Boolean,
            start: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Last 1-based PDF page to parse. When omitted, parsing ends at the last page.
          # Must be greater than or equal to start when both are provided.
          end_: nil,
          # When true, PDF URLs are fetched and parsed. When false, PDF URLs are skipped and
          # a 400 WEBSITE_ACCESS_ERROR is returned.
          should_parse: nil,
          # First 1-based PDF page to parse. When omitted, parsing starts at the first page.
          start: nil
        )
        end

        sig do
          override.returns(
            { end_: Integer, should_parse: T::Boolean, start: Integer }
          )
        end
        def to_hash
        end
      end
    end
  end
end
