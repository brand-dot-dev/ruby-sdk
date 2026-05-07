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

      # Maximum number of links to return from the sitemap crawl. Defaults to 10,000.
      # Minimum is 1, maximum is 100,000.
      sig { returns(T.nilable(Integer)) }
      attr_reader :max_links

      sig { params(max_links: Integer).void }
      attr_writer :max_links

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
          max_links: Integer,
          timeout_ms: Integer,
          url_regex: String,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Domain to build a sitemap for
        domain:,
        # Maximum number of links to return from the sitemap crawl. Defaults to 10,000.
        # Minimum is 1, maximum is 100,000.
        max_links: nil,
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
            max_links: Integer,
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
