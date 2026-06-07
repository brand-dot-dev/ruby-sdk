# typed: strong

module BrandDev
  module Models
    class BrandWebScrapeHTMLResponse < BrandDev::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            BrandDev::Models::BrandWebScrapeHTMLResponse,
            BrandDev::Internal::AnyHash
          )
        end

      # The scraped content of the page. For normal pages this is the raw HTML. When the
      # page is a sitemap or feed served behind an XSL stylesheet (which browsers render
      # into HTML), this is the underlying XML instead — see the `type` field.
      sig { returns(String) }
      attr_accessor :html

      # Indicates success
      sig do
        returns(
          BrandDev::Models::BrandWebScrapeHTMLResponse::Success::TaggedBoolean
        )
      end
      attr_accessor :success

      # Detected content type of the returned `html` field. Sitemaps and feeds are
      # surfaced as `xml`; ordinary pages are `html`.
      sig do
        returns(
          BrandDev::Models::BrandWebScrapeHTMLResponse::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      # The URL that was scraped
      sig { returns(String) }
      attr_accessor :url

      sig do
        params(
          html: String,
          success:
            BrandDev::Models::BrandWebScrapeHTMLResponse::Success::OrBoolean,
          type: BrandDev::Models::BrandWebScrapeHTMLResponse::Type::OrSymbol,
          url: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The scraped content of the page. For normal pages this is the raw HTML. When the
        # page is a sitemap or feed served behind an XSL stylesheet (which browsers render
        # into HTML), this is the underlying XML instead — see the `type` field.
        html:,
        # Indicates success
        success:,
        # Detected content type of the returned `html` field. Sitemaps and feeds are
        # surfaced as `xml`; ordinary pages are `html`.
        type:,
        # The URL that was scraped
        url:
      )
      end

      sig do
        override.returns(
          {
            html: String,
            success:
              BrandDev::Models::BrandWebScrapeHTMLResponse::Success::TaggedBoolean,
            type:
              BrandDev::Models::BrandWebScrapeHTMLResponse::Type::TaggedSymbol,
            url: String
          }
        )
      end
      def to_hash
      end

      # Indicates success
      module Success
        extend BrandDev::Internal::Type::Enum

        TaggedBoolean =
          T.type_alias do
            T.all(
              T::Boolean,
              BrandDev::Models::BrandWebScrapeHTMLResponse::Success
            )
          end
        OrBoolean = T.type_alias { T::Boolean }

        TRUE =
          T.let(
            true,
            BrandDev::Models::BrandWebScrapeHTMLResponse::Success::TaggedBoolean
          )

        sig do
          override.returns(
            T::Array[
              BrandDev::Models::BrandWebScrapeHTMLResponse::Success::TaggedBoolean
            ]
          )
        end
        def self.values
        end
      end

      # Detected content type of the returned `html` field. Sitemaps and feeds are
      # surfaced as `xml`; ordinary pages are `html`.
      module Type
        extend BrandDev::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, BrandDev::Models::BrandWebScrapeHTMLResponse::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        HTML =
          T.let(
            :html,
            BrandDev::Models::BrandWebScrapeHTMLResponse::Type::TaggedSymbol
          )
        XML =
          T.let(
            :xml,
            BrandDev::Models::BrandWebScrapeHTMLResponse::Type::TaggedSymbol
          )
        JSON =
          T.let(
            :json,
            BrandDev::Models::BrandWebScrapeHTMLResponse::Type::TaggedSymbol
          )
        TEXT =
          T.let(
            :text,
            BrandDev::Models::BrandWebScrapeHTMLResponse::Type::TaggedSymbol
          )
        CSV =
          T.let(
            :csv,
            BrandDev::Models::BrandWebScrapeHTMLResponse::Type::TaggedSymbol
          )
        MARKDOWN =
          T.let(
            :markdown,
            BrandDev::Models::BrandWebScrapeHTMLResponse::Type::TaggedSymbol
          )
        SVG =
          T.let(
            :svg,
            BrandDev::Models::BrandWebScrapeHTMLResponse::Type::TaggedSymbol
          )
        PDF =
          T.let(
            :pdf,
            BrandDev::Models::BrandWebScrapeHTMLResponse::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              BrandDev::Models::BrandWebScrapeHTMLResponse::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
