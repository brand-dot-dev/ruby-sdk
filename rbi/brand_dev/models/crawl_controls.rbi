# typed: strong

module BrandDev
  module Models
    class CrawlControls < BrandDev::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(BrandDev::CrawlControls, BrandDev::Internal::AnyHash)
        end

      # Whether links to subdomains were followed. Always false for a sitemap crawl.
      sig { returns(T::Boolean) }
      attr_accessor :follow_subdomains

      # Link depth limit. Always 0 for a sitemap crawl, which never follows links off
      # its URLs; null when a `start_url` crawl set no limit.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :max_depth

      # The `maxUrls` submitted with the crawl. A sitemap crawl scrapes only the URLs
      # its sitemap actually lists, up to this many, so `input.reserved` is often lower.
      sig { returns(Integer) }
      attr_accessor :max_pages

      # Where the crawl started.
      sig do
        returns(
          T.any(
            BrandDev::CrawlControls::Source::UnionMember0,
            BrandDev::CrawlControls::Source::UnionMember1
          )
        )
      end
      attr_accessor :source

      # RE2 pattern URLs had to match to be crawled. Null when the crawl set none.
      sig { returns(T.nilable(String)) }
      attr_accessor :url_pattern

      # The crawl controls as submitted, so the limits requested can be compared against
      # what the crawl reached.
      sig do
        params(
          follow_subdomains: T::Boolean,
          max_depth: T.nilable(Integer),
          max_pages: Integer,
          source:
            T.any(
              BrandDev::CrawlControls::Source::UnionMember0::OrHash,
              BrandDev::CrawlControls::Source::UnionMember1::OrHash
            ),
          url_pattern: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Whether links to subdomains were followed. Always false for a sitemap crawl.
        follow_subdomains:,
        # Link depth limit. Always 0 for a sitemap crawl, which never follows links off
        # its URLs; null when a `start_url` crawl set no limit.
        max_depth:,
        # The `maxUrls` submitted with the crawl. A sitemap crawl scrapes only the URLs
        # its sitemap actually lists, up to this many, so `input.reserved` is often lower.
        max_pages:,
        # Where the crawl started.
        source:,
        # RE2 pattern URLs had to match to be crawled. Null when the crawl set none.
        url_pattern:
      )
      end

      sig do
        override.returns(
          {
            follow_subdomains: T::Boolean,
            max_depth: T.nilable(Integer),
            max_pages: Integer,
            source:
              T.any(
                BrandDev::CrawlControls::Source::UnionMember0,
                BrandDev::CrawlControls::Source::UnionMember1
              ),
            url_pattern: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # Where the crawl started.
      module Source
        extend BrandDev::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              BrandDev::CrawlControls::Source::UnionMember0,
              BrandDev::CrawlControls::Source::UnionMember1
            )
          end

        class UnionMember0 < BrandDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                BrandDev::CrawlControls::Source::UnionMember0,
                BrandDev::Internal::AnyHash
              )
            end

          sig do
            returns(
              BrandDev::CrawlControls::Source::UnionMember0::Type::OrSymbol
            )
          end
          attr_accessor :type

          # Page the crawl started from.
          sig { returns(String) }
          attr_accessor :url

          sig do
            params(
              type:
                BrandDev::CrawlControls::Source::UnionMember0::Type::OrSymbol,
              url: String
            ).returns(T.attached_class)
          end
          def self.new(
            type:,
            # Page the crawl started from.
            url:
          )
          end

          sig do
            override.returns(
              {
                type:
                  BrandDev::CrawlControls::Source::UnionMember0::Type::OrSymbol,
                url: String
              }
            )
          end
          def to_hash
          end

          module Type
            extend BrandDev::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  BrandDev::CrawlControls::Source::UnionMember0::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            START_URL =
              T.let(
                :start_url,
                BrandDev::CrawlControls::Source::UnionMember0::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  BrandDev::CrawlControls::Source::UnionMember0::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class UnionMember1 < BrandDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                BrandDev::CrawlControls::Source::UnionMember1,
                BrandDev::Internal::AnyHash
              )
            end

          # Domain whose sitemap supplied the pages.
          sig { returns(String) }
          attr_accessor :domain

          sig do
            returns(
              BrandDev::CrawlControls::Source::UnionMember1::Type::OrSymbol
            )
          end
          attr_accessor :type

          sig do
            params(
              domain: String,
              type:
                BrandDev::CrawlControls::Source::UnionMember1::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Domain whose sitemap supplied the pages.
            domain:,
            type:
          )
          end

          sig do
            override.returns(
              {
                domain: String,
                type:
                  BrandDev::CrawlControls::Source::UnionMember1::Type::OrSymbol
              }
            )
          end
          def to_hash
          end

          module Type
            extend BrandDev::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  BrandDev::CrawlControls::Source::UnionMember1::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SITEMAP =
              T.let(
                :sitemap,
                BrandDev::CrawlControls::Source::UnionMember1::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  BrandDev::CrawlControls::Source::UnionMember1::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        sig do
          override.returns(T::Array[BrandDev::CrawlControls::Source::Variants])
        end
        def self.variants
        end
      end
    end
  end
end
