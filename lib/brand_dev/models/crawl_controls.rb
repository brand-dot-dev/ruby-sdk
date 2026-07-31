# frozen_string_literal: true

module BrandDev
  module Models
    class CrawlControls < BrandDev::Internal::Type::BaseModel
      # @!attribute follow_subdomains
      #   Whether links to subdomains were followed. Always false for a sitemap crawl.
      #
      #   @return [Boolean]
      required :follow_subdomains, BrandDev::Internal::Type::Boolean

      # @!attribute max_depth
      #   Link depth limit. Always 0 for a sitemap crawl, which never follows links off
      #   its URLs; null when a `start_url` crawl set no limit.
      #
      #   @return [Integer, nil]
      required :max_depth, Integer, nil?: true

      # @!attribute max_pages
      #   The `maxUrls` submitted with the crawl. A sitemap crawl scrapes only the URLs
      #   its sitemap actually lists, up to this many, so `input.reserved` is often lower.
      #
      #   @return [Integer]
      required :max_pages, Integer

      # @!attribute source
      #   Where the crawl started.
      #
      #   @return [BrandDev::Models::CrawlControls::Source::UnionMember0, BrandDev::Models::CrawlControls::Source::UnionMember1]
      required :source, union: -> { BrandDev::CrawlControls::Source }

      # @!attribute url_pattern
      #   RE2 pattern URLs had to match to be crawled. Null when the crawl set none.
      #
      #   @return [String, nil]
      required :url_pattern, String, nil?: true

      # @!method initialize(follow_subdomains:, max_depth:, max_pages:, source:, url_pattern:)
      #   Some parameter documentations has been truncated, see
      #   {BrandDev::Models::CrawlControls} for more details.
      #
      #   The crawl controls as submitted, so the limits requested can be compared against
      #   what the crawl reached.
      #
      #   @param follow_subdomains [Boolean] Whether links to subdomains were followed. Always false for a sitemap crawl.
      #
      #   @param max_depth [Integer, nil] Link depth limit. Always 0 for a sitemap crawl, which never follows links off it
      #
      #   @param max_pages [Integer] The `maxUrls` submitted with the crawl. A sitemap crawl scrapes only the URLs it
      #
      #   @param source [BrandDev::Models::CrawlControls::Source::UnionMember0, BrandDev::Models::CrawlControls::Source::UnionMember1] Where the crawl started.
      #
      #   @param url_pattern [String, nil] RE2 pattern URLs had to match to be crawled. Null when the crawl set none.

      # Where the crawl started.
      #
      # @see BrandDev::Models::CrawlControls#source
      module Source
        extend BrandDev::Internal::Type::Union

        variant -> { BrandDev::CrawlControls::Source::UnionMember0 }

        variant -> { BrandDev::CrawlControls::Source::UnionMember1 }

        class UnionMember0 < BrandDev::Internal::Type::BaseModel
          # @!attribute type
          #
          #   @return [Symbol, BrandDev::Models::CrawlControls::Source::UnionMember0::Type]
          required :type, enum: -> { BrandDev::CrawlControls::Source::UnionMember0::Type }

          # @!attribute url
          #   Page the crawl started from.
          #
          #   @return [String]
          required :url, String

          # @!method initialize(type:, url:)
          #   @param type [Symbol, BrandDev::Models::CrawlControls::Source::UnionMember0::Type]
          #
          #   @param url [String] Page the crawl started from.

          # @see BrandDev::Models::CrawlControls::Source::UnionMember0#type
          module Type
            extend BrandDev::Internal::Type::Enum

            START_URL = :start_url

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class UnionMember1 < BrandDev::Internal::Type::BaseModel
          # @!attribute domain
          #   Domain whose sitemap supplied the pages.
          #
          #   @return [String]
          required :domain, String

          # @!attribute type
          #
          #   @return [Symbol, BrandDev::Models::CrawlControls::Source::UnionMember1::Type]
          required :type, enum: -> { BrandDev::CrawlControls::Source::UnionMember1::Type }

          # @!method initialize(domain:, type:)
          #   @param domain [String] Domain whose sitemap supplied the pages.
          #
          #   @param type [Symbol, BrandDev::Models::CrawlControls::Source::UnionMember1::Type]

          # @see BrandDev::Models::CrawlControls::Source::UnionMember1#type
          module Type
            extend BrandDev::Internal::Type::Enum

            SITEMAP = :sitemap

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @!method self.variants
        #   @return [Array(BrandDev::Models::CrawlControls::Source::UnionMember0, BrandDev::Models::CrawlControls::Source::UnionMember1)]
      end
    end
  end
end
