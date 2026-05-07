# typed: strong

module BrandDev
  module Models
    class BrandWebScrapeMdParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(BrandDev::BrandWebScrapeMdParams, BrandDev::Internal::AnyHash)
        end

      # Full URL to scrape into LLM usable Markdown (must include http:// or https://
      # protocol)
      sig { returns(String) }
      attr_accessor :url

      # When true, the contents of iframes are rendered to Markdown.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_frames

      sig { params(include_frames: T::Boolean).void }
      attr_writer :include_frames

      # Include image references in Markdown output
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_images

      sig { params(include_images: T::Boolean).void }
      attr_writer :include_images

      # Preserve hyperlinks in Markdown output
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_links

      sig { params(include_links: T::Boolean).void }
      attr_writer :include_links

      # Return a cached result if a prior scrape for the same parameters exists and is
      # younger than this many milliseconds. Defaults to 1 day (86400000 ms) when
      # omitted. Max is 30 days (2592000000 ms). Set to 0 to always scrape fresh.
      sig { returns(T.nilable(Integer)) }
      attr_reader :max_age_ms

      sig { params(max_age_ms: Integer).void }
      attr_writer :max_age_ms

      # When true (default), PDF URLs are fetched and their text layer is extracted and
      # converted to Markdown. When false, PDF URLs are skipped and a 400
      # WEBSITE_ACCESS_ERROR is returned.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :parse_pdf

      sig { params(parse_pdf: T::Boolean).void }
      attr_writer :parse_pdf

      # Shorten base64-encoded image data in the Markdown output
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :shorten_base64_images

      sig { params(shorten_base64_images: T::Boolean).void }
      attr_writer :shorten_base64_images

      # Optional timeout in milliseconds for the request. If the request takes longer
      # than this value, it will be aborted with a 408 status code. Maximum allowed
      # value is 300000ms (5 minutes).
      sig { returns(T.nilable(Integer)) }
      attr_reader :timeout_ms

      sig { params(timeout_ms: Integer).void }
      attr_writer :timeout_ms

      # Extract only the main content of the page, excluding headers, footers, sidebars,
      # and navigation
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :use_main_content_only

      sig { params(use_main_content_only: T::Boolean).void }
      attr_writer :use_main_content_only

      sig do
        params(
          url: String,
          include_frames: T::Boolean,
          include_images: T::Boolean,
          include_links: T::Boolean,
          max_age_ms: Integer,
          parse_pdf: T::Boolean,
          shorten_base64_images: T::Boolean,
          timeout_ms: Integer,
          use_main_content_only: T::Boolean,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Full URL to scrape into LLM usable Markdown (must include http:// or https://
        # protocol)
        url:,
        # When true, the contents of iframes are rendered to Markdown.
        include_frames: nil,
        # Include image references in Markdown output
        include_images: nil,
        # Preserve hyperlinks in Markdown output
        include_links: nil,
        # Return a cached result if a prior scrape for the same parameters exists and is
        # younger than this many milliseconds. Defaults to 1 day (86400000 ms) when
        # omitted. Max is 30 days (2592000000 ms). Set to 0 to always scrape fresh.
        max_age_ms: nil,
        # When true (default), PDF URLs are fetched and their text layer is extracted and
        # converted to Markdown. When false, PDF URLs are skipped and a 400
        # WEBSITE_ACCESS_ERROR is returned.
        parse_pdf: nil,
        # Shorten base64-encoded image data in the Markdown output
        shorten_base64_images: nil,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        # Extract only the main content of the page, excluding headers, footers, sidebars,
        # and navigation
        use_main_content_only: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            url: String,
            include_frames: T::Boolean,
            include_images: T::Boolean,
            include_links: T::Boolean,
            max_age_ms: Integer,
            parse_pdf: T::Boolean,
            shorten_base64_images: T::Boolean,
            timeout_ms: Integer,
            use_main_content_only: T::Boolean,
            request_options: BrandDev::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
