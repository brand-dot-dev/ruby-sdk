# typed: strong

module BrandDev
  module Models
    class BrandWebScrapeSitemapParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            BrandDev::BrandWebScrapeSitemapParams,
            BrandDev::Internal::AnyHash
          )
        end

      # Domain to build a sitemap for
      sig { returns(String) }
      attr_accessor :domain

      # Optional outbound HTTP headers forwarded only to the target URL, sent as
      # deep-object query params such as headers[X-Custom]=value. When provided, caching
      # is bypassed: the result is neither read from nor written to cache.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :headers

      sig { params(headers: T::Hash[Symbol, String]).void }
      attr_writer :headers

      # Maximum number of links to return from the sitemap crawl. Defaults to 10,000.
      # Minimum is 1, maximum is 100,000.
      sig { returns(T.nilable(Integer)) }
      attr_reader :max_links

      sig { params(max_links: Integer).void }
      attr_writer :max_links

      # Optional explicit sitemap URL. When provided, exactly this sitemap is crawled
      # instead of discovering the domain's sitemaps.
      sig { returns(T.nilable(String)) }
      attr_reader :sitemap_url

      sig { params(sitemap_url: String).void }
      attr_writer :sitemap_url

      # Optional comma-separated caller-defined tags for tracking this request. Tags are
      # recorded on the request's usage log and can be used to filter usage on the
      # dashboard usage page. Up to 20 tags, each 1-50 characters.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :tags

      sig { params(tags: T::Array[String]).void }
      attr_writer :tags

      # Optional timeout in milliseconds for the request. If the request takes longer
      # than this value, it will be aborted with a 408 status code. Maximum allowed
      # value is 300000ms (5 minutes).
      sig { returns(T.nilable(Integer)) }
      attr_reader :timeout_ms

      sig { params(timeout_ms: Integer).void }
      attr_writer :timeout_ms

      # Optional RE2-compatible regex pattern. Only URLs matching this pattern are
      # returned and counted against maxLinks.
      sig { returns(T.nilable(String)) }
      attr_reader :url_regex

      sig { params(url_regex: String).void }
      attr_writer :url_regex

      sig do
        params(
          domain: String,
          headers: T::Hash[Symbol, String],
          max_links: Integer,
          sitemap_url: String,
          tags: T::Array[String],
          timeout_ms: Integer,
          url_regex: String,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Domain to build a sitemap for
        domain:,
        # Optional outbound HTTP headers forwarded only to the target URL, sent as
        # deep-object query params such as headers[X-Custom]=value. When provided, caching
        # is bypassed: the result is neither read from nor written to cache.
        headers: nil,
        # Maximum number of links to return from the sitemap crawl. Defaults to 10,000.
        # Minimum is 1, maximum is 100,000.
        max_links: nil,
        # Optional explicit sitemap URL. When provided, exactly this sitemap is crawled
        # instead of discovering the domain's sitemaps.
        sitemap_url: nil,
        # Optional comma-separated caller-defined tags for tracking this request. Tags are
        # recorded on the request's usage log and can be used to filter usage on the
        # dashboard usage page. Up to 20 tags, each 1-50 characters.
        tags: nil,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        # Optional RE2-compatible regex pattern. Only URLs matching this pattern are
        # returned and counted against maxLinks.
        url_regex: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            domain: String,
            headers: T::Hash[Symbol, String],
            max_links: Integer,
            sitemap_url: String,
            tags: T::Array[String],
            timeout_ms: Integer,
            url_regex: String,
            request_options: BrandDev::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
