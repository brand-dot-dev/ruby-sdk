# typed: strong

module BrandDev
  module Models
    class BrandWebScrapeMdResponse < BrandDev::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            BrandDev::Models::BrandWebScrapeMdResponse,
            BrandDev::Internal::AnyHash
          )
        end

      # UTF-8 byte length of the returned Markdown. Use 0 to identify an empty result
      # and compare small values against your workload's minimum useful-content
      # threshold.
      sig { returns(Integer) }
      attr_accessor :content_length

      # Page content converted to GitHub Flavored Markdown
      sig { returns(String) }
      attr_accessor :markdown

      # Metadata extracted from the scraped page HTML.
      sig { returns(BrandDev::Models::BrandWebScrapeMdResponse::Metadata) }
      attr_reader :metadata

      sig do
        params(
          metadata: BrandDev::Models::BrandWebScrapeMdResponse::Metadata::OrHash
        ).void
      end
      attr_writer :metadata

      # Indicates success
      sig do
        returns(
          BrandDev::Models::BrandWebScrapeMdResponse::Success::TaggedBoolean
        )
      end
      attr_accessor :success

      # The URL that was scraped
      sig { returns(String) }
      attr_accessor :url

      # One verified outcome per requested browser action, in request order.
      sig do
        returns(
          T.nilable(
            T::Array[BrandDev::Models::BrandWebScrapeMdResponse::ActionsApplied]
          )
        )
      end
      attr_reader :actions_applied

      sig do
        params(
          actions_applied:
            T::Array[
              BrandDev::Models::BrandWebScrapeMdResponse::ActionsApplied::OrHash
            ]
        ).void
      end
      attr_writer :actions_applied

      # True when an action was applied but the returned content could not be refreshed
      # afterward.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :actions_html_stale

      sig { params(actions_html_stale: T::Boolean).void }
      attr_writer :actions_html_stale

      # Only present when includeHTML=true: the page HTML the Markdown was converted
      # from — the same body the Scrape HTML endpoint returns for the equivalent
      # request.
      sig { returns(T.nilable(String)) }
      attr_reader :html

      sig { params(html: String).void }
      attr_writer :html

      # Metadata about the API key used for the request. Included in every response
      # whenever a valid API key is provided, even when the response status is not 200.
      sig do
        returns(
          T.nilable(BrandDev::Models::BrandWebScrapeMdResponse::KeyMetadata)
        )
      end
      attr_reader :key_metadata

      sig do
        params(
          key_metadata:
            BrandDev::Models::BrandWebScrapeMdResponse::KeyMetadata::OrHash
        ).void
      end
      attr_writer :key_metadata

      sig do
        params(
          content_length: Integer,
          markdown: String,
          metadata:
            BrandDev::Models::BrandWebScrapeMdResponse::Metadata::OrHash,
          success:
            BrandDev::Models::BrandWebScrapeMdResponse::Success::OrBoolean,
          url: String,
          actions_applied:
            T::Array[
              BrandDev::Models::BrandWebScrapeMdResponse::ActionsApplied::OrHash
            ],
          actions_html_stale: T::Boolean,
          html: String,
          key_metadata:
            BrandDev::Models::BrandWebScrapeMdResponse::KeyMetadata::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # UTF-8 byte length of the returned Markdown. Use 0 to identify an empty result
        # and compare small values against your workload's minimum useful-content
        # threshold.
        content_length:,
        # Page content converted to GitHub Flavored Markdown
        markdown:,
        # Metadata extracted from the scraped page HTML.
        metadata:,
        # Indicates success
        success:,
        # The URL that was scraped
        url:,
        # One verified outcome per requested browser action, in request order.
        actions_applied: nil,
        # True when an action was applied but the returned content could not be refreshed
        # afterward.
        actions_html_stale: nil,
        # Only present when includeHTML=true: the page HTML the Markdown was converted
        # from — the same body the Scrape HTML endpoint returns for the equivalent
        # request.
        html: nil,
        # Metadata about the API key used for the request. Included in every response
        # whenever a valid API key is provided, even when the response status is not 200.
        key_metadata: nil
      )
      end

      sig do
        override.returns(
          {
            content_length: Integer,
            markdown: String,
            metadata: BrandDev::Models::BrandWebScrapeMdResponse::Metadata,
            success:
              BrandDev::Models::BrandWebScrapeMdResponse::Success::TaggedBoolean,
            url: String,
            actions_applied:
              T::Array[
                BrandDev::Models::BrandWebScrapeMdResponse::ActionsApplied
              ],
            actions_html_stale: T::Boolean,
            html: String,
            key_metadata:
              BrandDev::Models::BrandWebScrapeMdResponse::KeyMetadata
          }
        )
      end
      def to_hash
      end

      class Metadata < BrandDev::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              BrandDev::Models::BrandWebScrapeMdResponse::Metadata,
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
                BrandDev::Models::BrandWebScrapeMdResponse::Metadata::AdditionalMeta::Variants
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
                BrandDev::Models::BrandWebScrapeMdResponse::Metadata::AdditionalMeta::Variants
              ]
          ).void
        end
        attr_writer :additional_meta

        # Resolved alternate links from link rel=alternate tags.
        sig do
          returns(
            T.nilable(
              T::Array[
                BrandDev::Models::BrandWebScrapeMdResponse::Metadata::Alternate
              ]
            )
          )
        end
        attr_reader :alternates

        sig do
          params(
            alternates:
              T::Array[
                BrandDev::Models::BrandWebScrapeMdResponse::Metadata::Alternate::OrHash
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

        # Page headings (h1–h6) in document order, extracted from the unfiltered document.
        # Capped at the first 500 headings. Omitted when the page has none.
        sig do
          returns(
            T.nilable(
              T::Array[
                BrandDev::Models::BrandWebScrapeMdResponse::Metadata::Heading
              ]
            )
          )
        end
        attr_reader :headings

        sig do
          params(
            headings:
              T::Array[
                BrandDev::Models::BrandWebScrapeMdResponse::Metadata::Heading::OrHash
              ]
          ).void
        end
        attr_writer :headings

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
                BrandDev::Models::BrandWebScrapeMdResponse::Metadata::OpenGraph::Variants
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
                BrandDev::Models::BrandWebScrapeMdResponse::Metadata::OpenGraph::Variants
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
                BrandDev::Models::BrandWebScrapeMdResponse::Metadata::Twitter::Variants
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
                BrandDev::Models::BrandWebScrapeMdResponse::Metadata::Twitter::Variants
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
                BrandDev::Models::BrandWebScrapeMdResponse::Metadata::AdditionalMeta::Variants
              ],
            alternates:
              T::Array[
                BrandDev::Models::BrandWebScrapeMdResponse::Metadata::Alternate::OrHash
              ],
            author: String,
            canonical_url: String,
            description: String,
            favicon: String,
            headings:
              T::Array[
                BrandDev::Models::BrandWebScrapeMdResponse::Metadata::Heading::OrHash
              ],
            image: String,
            json_ld: T::Array[T::Hash[Symbol, T.anything]],
            keywords: T::Array[String],
            language: String,
            modified_time: String,
            open_graph:
              T::Hash[
                Symbol,
                BrandDev::Models::BrandWebScrapeMdResponse::Metadata::OpenGraph::Variants
              ],
            published_time: String,
            robots: String,
            site_name: String,
            title: String,
            twitter:
              T::Hash[
                Symbol,
                BrandDev::Models::BrandWebScrapeMdResponse::Metadata::Twitter::Variants
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
          # Page headings (h1–h6) in document order, extracted from the unfiltered document.
          # Capped at the first 500 headings. Omitted when the page has none.
          headings: nil,
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
                  BrandDev::Models::BrandWebScrapeMdResponse::Metadata::AdditionalMeta::Variants
                ],
              alternates:
                T::Array[
                  BrandDev::Models::BrandWebScrapeMdResponse::Metadata::Alternate
                ],
              author: String,
              canonical_url: String,
              description: String,
              favicon: String,
              headings:
                T::Array[
                  BrandDev::Models::BrandWebScrapeMdResponse::Metadata::Heading
                ],
              image: String,
              json_ld: T::Array[T::Hash[Symbol, T.anything]],
              keywords: T::Array[String],
              language: String,
              modified_time: String,
              open_graph:
                T::Hash[
                  Symbol,
                  BrandDev::Models::BrandWebScrapeMdResponse::Metadata::OpenGraph::Variants
                ],
              published_time: String,
              robots: String,
              site_name: String,
              title: String,
              twitter:
                T::Hash[
                  Symbol,
                  BrandDev::Models::BrandWebScrapeMdResponse::Metadata::Twitter::Variants
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
                BrandDev::Models::BrandWebScrapeMdResponse::Metadata::AdditionalMeta::Variants
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
                BrandDev::Models::BrandWebScrapeMdResponse::Metadata::Alternate,
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

        class Heading < BrandDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                BrandDev::Models::BrandWebScrapeMdResponse::Metadata::Heading,
                BrandDev::Internal::AnyHash
              )
            end

          # Heading level, 1–6 (from h1–h6).
          sig { returns(Integer) }
          attr_accessor :level

          # Heading text with whitespace collapsed, truncated to 1000 characters.
          sig { returns(String) }
          attr_accessor :text

          sig { params(level: Integer, text: String).returns(T.attached_class) }
          def self.new(
            # Heading level, 1–6 (from h1–h6).
            level:,
            # Heading text with whitespace collapsed, truncated to 1000 characters.
            text:
          )
          end

          sig { override.returns({ level: Integer, text: String }) }
          def to_hash
          end
        end

        module OpenGraph
          extend BrandDev::Internal::Type::Union

          Variants = T.type_alias { T.any(String, T::Array[String]) }

          sig do
            override.returns(
              T::Array[
                BrandDev::Models::BrandWebScrapeMdResponse::Metadata::OpenGraph::Variants
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
                BrandDev::Models::BrandWebScrapeMdResponse::Metadata::Twitter::Variants
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
              BrandDev::Models::BrandWebScrapeMdResponse::Success
            )
          end
        OrBoolean = T.type_alias { T::Boolean }

        TRUE =
          T.let(
            true,
            BrandDev::Models::BrandWebScrapeMdResponse::Success::TaggedBoolean
          )

        sig do
          override.returns(
            T::Array[
              BrandDev::Models::BrandWebScrapeMdResponse::Success::TaggedBoolean
            ]
          )
        end
        def self.values
        end
      end

      class ActionsApplied < BrandDev::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              BrandDev::Models::BrandWebScrapeMdResponse::ActionsApplied,
              BrandDev::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :instruction

        # Applied means the requested page state was visibly verified. Failed means it was
        # not verified. Skipped means it was not attempted.
        sig do
          returns(
            BrandDev::Models::BrandWebScrapeMdResponse::ActionsApplied::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # Visible page evidence used to verify an applied action.
        sig { returns(T.nilable(String)) }
        attr_reader :completion_evidence

        sig { params(completion_evidence: String).void }
        attr_writer :completion_evidence

        sig { returns(T.nilable(Float)) }
        attr_reader :duration_ms

        sig { params(duration_ms: Float).void }
        attr_writer :duration_ms

        sig { returns(T.nilable(String)) }
        attr_reader :error

        sig { params(error: String).void }
        attr_writer :error

        sig { returns(T.nilable(String)) }
        attr_reader :method_

        sig { params(method_: String).void }
        attr_writer :method_

        sig { returns(T.nilable(String)) }
        attr_reader :target_description

        sig { params(target_description: String).void }
        attr_writer :target_description

        sig do
          params(
            instruction: String,
            status:
              BrandDev::Models::BrandWebScrapeMdResponse::ActionsApplied::Status::OrSymbol,
            completion_evidence: String,
            duration_ms: Float,
            error: String,
            method_: String,
            target_description: String
          ).returns(T.attached_class)
        end
        def self.new(
          instruction:,
          # Applied means the requested page state was visibly verified. Failed means it was
          # not verified. Skipped means it was not attempted.
          status:,
          # Visible page evidence used to verify an applied action.
          completion_evidence: nil,
          duration_ms: nil,
          error: nil,
          method_: nil,
          target_description: nil
        )
        end

        sig do
          override.returns(
            {
              instruction: String,
              status:
                BrandDev::Models::BrandWebScrapeMdResponse::ActionsApplied::Status::TaggedSymbol,
              completion_evidence: String,
              duration_ms: Float,
              error: String,
              method_: String,
              target_description: String
            }
          )
        end
        def to_hash
        end

        # Applied means the requested page state was visibly verified. Failed means it was
        # not verified. Skipped means it was not attempted.
        module Status
          extend BrandDev::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                BrandDev::Models::BrandWebScrapeMdResponse::ActionsApplied::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPLIED =
            T.let(
              :applied,
              BrandDev::Models::BrandWebScrapeMdResponse::ActionsApplied::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              BrandDev::Models::BrandWebScrapeMdResponse::ActionsApplied::Status::TaggedSymbol
            )
          SKIPPED =
            T.let(
              :skipped,
              BrandDev::Models::BrandWebScrapeMdResponse::ActionsApplied::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                BrandDev::Models::BrandWebScrapeMdResponse::ActionsApplied::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class KeyMetadata < BrandDev::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              BrandDev::Models::BrandWebScrapeMdResponse::KeyMetadata,
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
