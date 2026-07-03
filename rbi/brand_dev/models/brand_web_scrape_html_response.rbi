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

      # Metadata extracted from the scraped page HTML.
      sig { returns(BrandDev::Models::BrandWebScrapeHTMLResponse::Metadata) }
      attr_reader :metadata

      sig do
        params(
          metadata:
            BrandDev::Models::BrandWebScrapeHTMLResponse::Metadata::OrHash
        ).void
      end
      attr_writer :metadata

      # Indicates success
      sig do
        returns(
          BrandDev::Models::BrandWebScrapeHTMLResponse::Success::TaggedBoolean
        )
      end
      attr_accessor :success

      # Detected content type of the returned `html` field. Sitemaps and feeds are
      # surfaced as `xml`; ordinary pages are `html`. Excel workbooks are surfaced as
      # `xlsx`/`xls` with the extracted sheets as HTML tables.
      sig do
        returns(
          BrandDev::Models::BrandWebScrapeHTMLResponse::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      # The URL that was scraped
      sig { returns(String) }
      attr_accessor :url

      # Metadata about the API key used for the request. Included in every response
      # whenever a valid API key is provided, even when the response status is not 200.
      sig do
        returns(
          T.nilable(BrandDev::Models::BrandWebScrapeHTMLResponse::KeyMetadata)
        )
      end
      attr_reader :key_metadata

      sig do
        params(
          key_metadata:
            BrandDev::Models::BrandWebScrapeHTMLResponse::KeyMetadata::OrHash
        ).void
      end
      attr_writer :key_metadata

      sig do
        params(
          html: String,
          metadata:
            BrandDev::Models::BrandWebScrapeHTMLResponse::Metadata::OrHash,
          success:
            BrandDev::Models::BrandWebScrapeHTMLResponse::Success::OrBoolean,
          type: BrandDev::Models::BrandWebScrapeHTMLResponse::Type::OrSymbol,
          url: String,
          key_metadata:
            BrandDev::Models::BrandWebScrapeHTMLResponse::KeyMetadata::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The scraped content of the page. For normal pages this is the raw HTML. When the
        # page is a sitemap or feed served behind an XSL stylesheet (which browsers render
        # into HTML), this is the underlying XML instead — see the `type` field.
        html:,
        # Metadata extracted from the scraped page HTML.
        metadata:,
        # Indicates success
        success:,
        # Detected content type of the returned `html` field. Sitemaps and feeds are
        # surfaced as `xml`; ordinary pages are `html`. Excel workbooks are surfaced as
        # `xlsx`/`xls` with the extracted sheets as HTML tables.
        type:,
        # The URL that was scraped
        url:,
        # Metadata about the API key used for the request. Included in every response
        # whenever a valid API key is provided, even when the response status is not 200.
        key_metadata: nil
      )
      end

      sig do
        override.returns(
          {
            html: String,
            metadata: BrandDev::Models::BrandWebScrapeHTMLResponse::Metadata,
            success:
              BrandDev::Models::BrandWebScrapeHTMLResponse::Success::TaggedBoolean,
            type:
              BrandDev::Models::BrandWebScrapeHTMLResponse::Type::TaggedSymbol,
            url: String,
            key_metadata:
              BrandDev::Models::BrandWebScrapeHTMLResponse::KeyMetadata
          }
        )
      end
      def to_hash
      end

      class Metadata < BrandDev::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              BrandDev::Models::BrandWebScrapeHTMLResponse::Metadata,
              BrandDev::Internal::AnyHash
            )
          end

        # Final URL scraped after redirects or scraper fallback, when known. Falls back to
        # sourceUrl when unavailable.
        sig { returns(String) }
        attr_accessor :final_url

        # Original URL requested by the caller.
        sig { returns(String) }
        attr_accessor :source_url

        # Additional non-social meta tags not promoted to top-level metadata fields.
        sig do
          returns(
            T.nilable(
              T::Hash[
                Symbol,
                BrandDev::Models::BrandWebScrapeHTMLResponse::Metadata::AdditionalMeta::Variants
              ]
            )
          )
        end
        attr_reader :additional_meta

        sig do
          params(
            additional_meta:
              T::Hash[
                Symbol,
                BrandDev::Models::BrandWebScrapeHTMLResponse::Metadata::AdditionalMeta::Variants
              ]
          ).void
        end
        attr_writer :additional_meta

        # Resolved alternate links from link rel=alternate tags.
        sig do
          returns(
            T.nilable(
              T::Array[
                BrandDev::Models::BrandWebScrapeHTMLResponse::Metadata::Alternate
              ]
            )
          )
        end
        attr_reader :alternates

        sig do
          params(
            alternates:
              T::Array[
                BrandDev::Models::BrandWebScrapeHTMLResponse::Metadata::Alternate::OrHash
              ]
          ).void
        end
        attr_writer :alternates

        # Author metadata, when present.
        sig { returns(T.nilable(String)) }
        attr_reader :author

        sig { params(author: String).void }
        attr_writer :author

        # Resolved canonical URL, when present.
        sig { returns(T.nilable(String)) }
        attr_reader :canonical_url

        sig { params(canonical_url: String).void }
        attr_writer :canonical_url

        # Best description extracted from standard, Open Graph, or Twitter metadata.
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # Resolved favicon URL, when present.
        sig { returns(T.nilable(String)) }
        attr_reader :favicon

        sig { params(favicon: String).void }
        attr_writer :favicon

        # Primary resolved preview image from Open Graph, Twitter, or image metadata.
        sig { returns(T.nilable(String)) }
        attr_reader :image

        sig { params(image: String).void }
        attr_writer :image

        # JSON-LD structured data blocks parsed from the page.
        sig { returns(T.nilable(T::Array[T::Hash[Symbol, T.anything]])) }
        attr_reader :json_ld

        sig { params(json_ld: T::Array[T::Hash[Symbol, T.anything]]).void }
        attr_writer :json_ld

        # Keywords extracted from the page's keywords meta tag.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :keywords

        sig { params(keywords: T::Array[String]).void }
        attr_writer :keywords

        # Language extracted from html lang or language meta tags.
        sig { returns(T.nilable(String)) }
        attr_reader :language

        sig { params(language: String).void }
        attr_writer :language

        # Modified timestamp/date from page metadata, when present.
        sig { returns(T.nilable(String)) }
        attr_reader :modified_time

        sig { params(modified_time: String).void }
        attr_writer :modified_time

        # Open Graph metadata with the og: prefix removed and keys camel-cased.
        sig do
          returns(
            T.nilable(
              T::Hash[
                Symbol,
                BrandDev::Models::BrandWebScrapeHTMLResponse::Metadata::OpenGraph::Variants
              ]
            )
          )
        end
        attr_reader :open_graph

        sig do
          params(
            open_graph:
              T::Hash[
                Symbol,
                BrandDev::Models::BrandWebScrapeHTMLResponse::Metadata::OpenGraph::Variants
              ]
          ).void
        end
        attr_writer :open_graph

        # Published timestamp/date from page metadata, when present.
        sig { returns(T.nilable(String)) }
        attr_reader :published_time

        sig { params(published_time: String).void }
        attr_writer :published_time

        # Robots meta directive, when present.
        sig { returns(T.nilable(String)) }
        attr_reader :robots

        sig { params(robots: String).void }
        attr_writer :robots

        # Site or application name from page metadata.
        sig { returns(T.nilable(String)) }
        attr_reader :site_name

        sig { params(site_name: String).void }
        attr_writer :site_name

        # Best title extracted from the page.
        sig { returns(T.nilable(String)) }
        attr_reader :title

        sig { params(title: String).void }
        attr_writer :title

        # Twitter card metadata with the twitter: prefix removed and keys camel-cased.
        sig do
          returns(
            T.nilable(
              T::Hash[
                Symbol,
                BrandDev::Models::BrandWebScrapeHTMLResponse::Metadata::Twitter::Variants
              ]
            )
          )
        end
        attr_reader :twitter

        sig do
          params(
            twitter:
              T::Hash[
                Symbol,
                BrandDev::Models::BrandWebScrapeHTMLResponse::Metadata::Twitter::Variants
              ]
          ).void
        end
        attr_writer :twitter

        # Metadata extracted from the scraped page HTML.
        sig do
          params(
            final_url: String,
            source_url: String,
            additional_meta:
              T::Hash[
                Symbol,
                BrandDev::Models::BrandWebScrapeHTMLResponse::Metadata::AdditionalMeta::Variants
              ],
            alternates:
              T::Array[
                BrandDev::Models::BrandWebScrapeHTMLResponse::Metadata::Alternate::OrHash
              ],
            author: String,
            canonical_url: String,
            description: String,
            favicon: String,
            image: String,
            json_ld: T::Array[T::Hash[Symbol, T.anything]],
            keywords: T::Array[String],
            language: String,
            modified_time: String,
            open_graph:
              T::Hash[
                Symbol,
                BrandDev::Models::BrandWebScrapeHTMLResponse::Metadata::OpenGraph::Variants
              ],
            published_time: String,
            robots: String,
            site_name: String,
            title: String,
            twitter:
              T::Hash[
                Symbol,
                BrandDev::Models::BrandWebScrapeHTMLResponse::Metadata::Twitter::Variants
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # Final URL scraped after redirects or scraper fallback, when known. Falls back to
          # sourceUrl when unavailable.
          final_url:,
          # Original URL requested by the caller.
          source_url:,
          # Additional non-social meta tags not promoted to top-level metadata fields.
          additional_meta: nil,
          # Resolved alternate links from link rel=alternate tags.
          alternates: nil,
          # Author metadata, when present.
          author: nil,
          # Resolved canonical URL, when present.
          canonical_url: nil,
          # Best description extracted from standard, Open Graph, or Twitter metadata.
          description: nil,
          # Resolved favicon URL, when present.
          favicon: nil,
          # Primary resolved preview image from Open Graph, Twitter, or image metadata.
          image: nil,
          # JSON-LD structured data blocks parsed from the page.
          json_ld: nil,
          # Keywords extracted from the page's keywords meta tag.
          keywords: nil,
          # Language extracted from html lang or language meta tags.
          language: nil,
          # Modified timestamp/date from page metadata, when present.
          modified_time: nil,
          # Open Graph metadata with the og: prefix removed and keys camel-cased.
          open_graph: nil,
          # Published timestamp/date from page metadata, when present.
          published_time: nil,
          # Robots meta directive, when present.
          robots: nil,
          # Site or application name from page metadata.
          site_name: nil,
          # Best title extracted from the page.
          title: nil,
          # Twitter card metadata with the twitter: prefix removed and keys camel-cased.
          twitter: nil
        )
        end

        sig do
          override.returns(
            {
              final_url: String,
              source_url: String,
              additional_meta:
                T::Hash[
                  Symbol,
                  BrandDev::Models::BrandWebScrapeHTMLResponse::Metadata::AdditionalMeta::Variants
                ],
              alternates:
                T::Array[
                  BrandDev::Models::BrandWebScrapeHTMLResponse::Metadata::Alternate
                ],
              author: String,
              canonical_url: String,
              description: String,
              favicon: String,
              image: String,
              json_ld: T::Array[T::Hash[Symbol, T.anything]],
              keywords: T::Array[String],
              language: String,
              modified_time: String,
              open_graph:
                T::Hash[
                  Symbol,
                  BrandDev::Models::BrandWebScrapeHTMLResponse::Metadata::OpenGraph::Variants
                ],
              published_time: String,
              robots: String,
              site_name: String,
              title: String,
              twitter:
                T::Hash[
                  Symbol,
                  BrandDev::Models::BrandWebScrapeHTMLResponse::Metadata::Twitter::Variants
                ]
            }
          )
        end
        def to_hash
        end

        module AdditionalMeta
          extend BrandDev::Internal::Type::Union

          Variants = T.type_alias { T.any(String, T::Array[String]) }

          sig do
            override.returns(
              T::Array[
                BrandDev::Models::BrandWebScrapeHTMLResponse::Metadata::AdditionalMeta::Variants
              ]
            )
          end
          def self.variants
          end

          StringArray =
            T.let(
              BrandDev::Internal::Type::ArrayOf[String],
              BrandDev::Internal::Type::Converter
            )
        end

        class Alternate < BrandDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                BrandDev::Models::BrandWebScrapeHTMLResponse::Metadata::Alternate,
                BrandDev::Internal::AnyHash
              )
            end

          # Resolved alternate URL.
          sig { returns(String) }
          attr_accessor :href

          # Language or locale for the alternate URL, when present.
          sig { returns(T.nilable(String)) }
          attr_reader :hreflang

          sig { params(hreflang: String).void }
          attr_writer :hreflang

          # Alternate resource title, when present.
          sig { returns(T.nilable(String)) }
          attr_reader :title

          sig { params(title: String).void }
          attr_writer :title

          # Alternate resource MIME type, when present.
          sig { returns(T.nilable(String)) }
          attr_reader :type

          sig { params(type: String).void }
          attr_writer :type

          sig do
            params(
              href: String,
              hreflang: String,
              title: String,
              type: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Resolved alternate URL.
            href:,
            # Language or locale for the alternate URL, when present.
            hreflang: nil,
            # Alternate resource title, when present.
            title: nil,
            # Alternate resource MIME type, when present.
            type: nil
          )
          end

          sig do
            override.returns(
              { href: String, hreflang: String, title: String, type: String }
            )
          end
          def to_hash
          end
        end

        module OpenGraph
          extend BrandDev::Internal::Type::Union

          Variants = T.type_alias { T.any(String, T::Array[String]) }

          sig do
            override.returns(
              T::Array[
                BrandDev::Models::BrandWebScrapeHTMLResponse::Metadata::OpenGraph::Variants
              ]
            )
          end
          def self.variants
          end

          StringArray =
            T.let(
              BrandDev::Internal::Type::ArrayOf[String],
              BrandDev::Internal::Type::Converter
            )
        end

        module Twitter
          extend BrandDev::Internal::Type::Union

          Variants = T.type_alias { T.any(String, T::Array[String]) }

          sig do
            override.returns(
              T::Array[
                BrandDev::Models::BrandWebScrapeHTMLResponse::Metadata::Twitter::Variants
              ]
            )
          end
          def self.variants
          end

          StringArray =
            T.let(
              BrandDev::Internal::Type::ArrayOf[String],
              BrandDev::Internal::Type::Converter
            )
        end
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
      # surfaced as `xml`; ordinary pages are `html`. Excel workbooks are surfaced as
      # `xlsx`/`xls` with the extracted sheets as HTML tables.
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
        DOCX =
          T.let(
            :docx,
            BrandDev::Models::BrandWebScrapeHTMLResponse::Type::TaggedSymbol
          )
        DOC =
          T.let(
            :doc,
            BrandDev::Models::BrandWebScrapeHTMLResponse::Type::TaggedSymbol
          )
        XLSX =
          T.let(
            :xlsx,
            BrandDev::Models::BrandWebScrapeHTMLResponse::Type::TaggedSymbol
          )
        XLS =
          T.let(
            :xls,
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

      class KeyMetadata < BrandDev::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              BrandDev::Models::BrandWebScrapeHTMLResponse::KeyMetadata,
              BrandDev::Internal::AnyHash
            )
          end

        # The number of credits consumed by this request.
        sig { returns(Integer) }
        attr_accessor :credits_consumed

        # The number of credits remaining for your organization after this request.
        sig { returns(Integer) }
        attr_accessor :credits_remaining

        # Metadata about the API key used for the request. Included in every response
        # whenever a valid API key is provided, even when the response status is not 200.
        sig do
          params(credits_consumed: Integer, credits_remaining: Integer).returns(
            T.attached_class
          )
        end
        def self.new(
          # The number of credits consumed by this request.
          credits_consumed:,
          # The number of credits remaining for your organization after this request.
          credits_remaining:
        )
        end

        sig do
          override.returns(
            { credits_consumed: Integer, credits_remaining: Integer }
          )
        end
        def to_hash
        end
      end
    end
  end
end
