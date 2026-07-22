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

      # Optional browser actions executed in array order after the page loads and before
      # content is captured. Requires a paid plan. Send a JSON array in the query
      # parameter. Maximum: 5 actions.
      sig do
        returns(
          T.nilable(
            T::Array[
              T.any(
                BrandDev::BrandWebScrapeMdParams::Action::Wait,
                BrandDev::BrandWebScrapeMdParams::Action::Perform
              )
            ]
          )
        )
      end
      attr_accessor :actions

      # Two-letter ISO 3166-1 alpha-2 country code identifying a supported Context.dev
      # residential proxy exit location. Must be one of Context.dev's supported
      # countries. When provided, Context.dev fetches the target page from that country.
      sig do
        returns(T.nilable(BrandDev::BrandWebScrapeMdParams::Country::OrSymbol))
      end
      attr_reader :country

      sig do
        params(
          country: BrandDev::BrandWebScrapeMdParams::Country::OrSymbol
        ).void
      end
      attr_writer :country

      # CSS selectors to remove before conversion to Markdown. Applied after
      # includeSelectors. Exclusion takes precedence: an element matching both is
      # removed. Examples: "nav", "footer", ".ad-banner", "[aria-hidden=true]".
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :exclude_selectors

      # Optional outbound HTTP headers forwarded only to the target URL, sent as
      # deep-object query params such as headers[X-Custom]=value. When provided, caching
      # is bypassed: the result is neither read from nor written to cache.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :headers

      sig { params(headers: T::Hash[Symbol, String]).void }
      attr_writer :headers

      # When true, the contents of iframes are rendered to Markdown.
      sig do
        returns(
          T.nilable(
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeMdParams::IncludeFrames::OrSymbol
            )
          )
        )
      end
      attr_reader :include_frames

      sig do
        params(
          include_frames:
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeMdParams::IncludeFrames::OrSymbol
            )
        ).void
      end
      attr_writer :include_frames

      # Include image references in Markdown output
      sig do
        returns(
          T.nilable(
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeMdParams::IncludeImages::OrSymbol
            )
          )
        )
      end
      attr_reader :include_images

      sig do
        params(
          include_images:
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeMdParams::IncludeImages::OrSymbol
            )
        ).void
      end
      attr_writer :include_images

      # Preserve hyperlinks in Markdown output
      sig do
        returns(
          T.nilable(
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeMdParams::IncludeLinks::OrSymbol
            )
          )
        )
      end
      attr_reader :include_links

      sig do
        params(
          include_links:
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeMdParams::IncludeLinks::OrSymbol
            )
        ).void
      end
      attr_writer :include_links

      # CSS selectors. When provided, only matching HTML subtrees (and their
      # descendants) are kept before conversion to Markdown. When omitted, the entire
      # document is kept. Examples: "article.main", "#content", "[role=main]".
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :include_selectors

      # Return a cached result if a prior scrape for the same parameters exists and is
      # younger than this many milliseconds. Defaults to 1 day (86400000 ms) when
      # omitted. Max is 30 days (2592000000 ms). Set to 0 to always scrape fresh.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :max_age_ms

      # PDF parsing controls. Use start/end to limit text extraction and embedded-image
      # detection/OCR to an inclusive 1-based page range.
      sig { returns(T.nilable(BrandDev::BrandWebScrapeMdParams::Pdf)) }
      attr_reader :pdf

      sig { params(pdf: BrandDev::BrandWebScrapeMdParams::Pdf::OrHash).void }
      attr_writer :pdf

      # When true, waits briefly for CSS and transition animations to settle before
      # converting to Markdown. Defaults to false. This adds a bit of latency in
      # exchange for more stable output on animated pages.
      sig do
        returns(
          T.nilable(
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeMdParams::SettleAnimations::OrSymbol
            )
          )
        )
      end
      attr_reader :settle_animations

      sig do
        params(
          settle_animations:
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeMdParams::SettleAnimations::OrSymbol
            )
        ).void
      end
      attr_writer :settle_animations

      # Shorten base64-encoded image data in the Markdown output
      sig do
        returns(
          T.nilable(
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeMdParams::ShortenBase64Images::OrSymbol
            )
          )
        )
      end
      attr_reader :shorten_base64_images

      sig do
        params(
          shorten_base64_images:
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeMdParams::ShortenBase64Images::OrSymbol
            )
        ).void
      end
      attr_writer :shorten_base64_images

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

      # Extract only the main content of the page, excluding headers, footers, sidebars,
      # and navigation
      sig do
        returns(
          T.nilable(
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeMdParams::UseMainContentOnly::OrSymbol
            )
          )
        )
      end
      attr_reader :use_main_content_only

      sig do
        params(
          use_main_content_only:
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeMdParams::UseMainContentOnly::OrSymbol
            )
        ).void
      end
      attr_writer :use_main_content_only

      # Optional browser wait time in milliseconds after initial page load before
      # converting the page to Markdown. Min: 0. Max: 30000 (30 seconds).
      sig { returns(T.nilable(Integer)) }
      attr_accessor :wait_for_ms

      # Set to enabled to bypass shared caches and omit request and response content
      # from retained usage logs. Requires zero data retention to be enabled for your
      # organization (contact support@context.dev), otherwise the request fails with
      # ZDR_NOT_ENABLED. Successful ZDR responses include X-Context-ZDR: true.
      sig do
        returns(T.nilable(BrandDev::BrandWebScrapeMdParams::Zdr::OrSymbol))
      end
      attr_reader :zdr

      sig { params(zdr: BrandDev::BrandWebScrapeMdParams::Zdr::OrSymbol).void }
      attr_writer :zdr

      sig do
        params(
          url: String,
          actions:
            T.nilable(
              T::Array[
                T.any(
                  BrandDev::BrandWebScrapeMdParams::Action::Wait::OrHash,
                  BrandDev::BrandWebScrapeMdParams::Action::Perform::OrHash
                )
              ]
            ),
          country: BrandDev::BrandWebScrapeMdParams::Country::OrSymbol,
          exclude_selectors: T.nilable(T::Array[String]),
          headers: T::Hash[Symbol, String],
          include_frames:
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeMdParams::IncludeFrames::OrSymbol
            ),
          include_images:
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeMdParams::IncludeImages::OrSymbol
            ),
          include_links:
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeMdParams::IncludeLinks::OrSymbol
            ),
          include_selectors: T.nilable(T::Array[String]),
          max_age_ms: T.nilable(Integer),
          pdf: BrandDev::BrandWebScrapeMdParams::Pdf::OrHash,
          settle_animations:
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeMdParams::SettleAnimations::OrSymbol
            ),
          shorten_base64_images:
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeMdParams::ShortenBase64Images::OrSymbol
            ),
          tags: T::Array[String],
          timeout_ms: Integer,
          use_main_content_only:
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeMdParams::UseMainContentOnly::OrSymbol
            ),
          wait_for_ms: T.nilable(Integer),
          zdr: BrandDev::BrandWebScrapeMdParams::Zdr::OrSymbol,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Full URL to scrape into LLM usable Markdown (must include http:// or https://
        # protocol)
        url:,
        # Optional browser actions executed in array order after the page loads and before
        # content is captured. Requires a paid plan. Send a JSON array in the query
        # parameter. Maximum: 5 actions.
        actions: nil,
        # Two-letter ISO 3166-1 alpha-2 country code identifying a supported Context.dev
        # residential proxy exit location. Must be one of Context.dev's supported
        # countries. When provided, Context.dev fetches the target page from that country.
        country: nil,
        # CSS selectors to remove before conversion to Markdown. Applied after
        # includeSelectors. Exclusion takes precedence: an element matching both is
        # removed. Examples: "nav", "footer", ".ad-banner", "[aria-hidden=true]".
        exclude_selectors: nil,
        # Optional outbound HTTP headers forwarded only to the target URL, sent as
        # deep-object query params such as headers[X-Custom]=value. When provided, caching
        # is bypassed: the result is neither read from nor written to cache.
        headers: nil,
        # When true, the contents of iframes are rendered to Markdown.
        include_frames: nil,
        # Include image references in Markdown output
        include_images: nil,
        # Preserve hyperlinks in Markdown output
        include_links: nil,
        # CSS selectors. When provided, only matching HTML subtrees (and their
        # descendants) are kept before conversion to Markdown. When omitted, the entire
        # document is kept. Examples: "article.main", "#content", "[role=main]".
        include_selectors: nil,
        # Return a cached result if a prior scrape for the same parameters exists and is
        # younger than this many milliseconds. Defaults to 1 day (86400000 ms) when
        # omitted. Max is 30 days (2592000000 ms). Set to 0 to always scrape fresh.
        max_age_ms: nil,
        # PDF parsing controls. Use start/end to limit text extraction and embedded-image
        # detection/OCR to an inclusive 1-based page range.
        pdf: nil,
        # When true, waits briefly for CSS and transition animations to settle before
        # converting to Markdown. Defaults to false. This adds a bit of latency in
        # exchange for more stable output on animated pages.
        settle_animations: nil,
        # Shorten base64-encoded image data in the Markdown output
        shorten_base64_images: nil,
        # Optional comma-separated caller-defined tags for tracking this request. Tags are
        # recorded on the request's usage log and can be used to filter usage on the
        # dashboard usage page. Up to 20 tags, each 1-50 characters.
        tags: nil,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        # Extract only the main content of the page, excluding headers, footers, sidebars,
        # and navigation
        use_main_content_only: nil,
        # Optional browser wait time in milliseconds after initial page load before
        # converting the page to Markdown. Min: 0. Max: 30000 (30 seconds).
        wait_for_ms: nil,
        # Set to enabled to bypass shared caches and omit request and response content
        # from retained usage logs. Requires zero data retention to be enabled for your
        # organization (contact support@context.dev), otherwise the request fails with
        # ZDR_NOT_ENABLED. Successful ZDR responses include X-Context-ZDR: true.
        zdr: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            url: String,
            actions:
              T.nilable(
                T::Array[
                  T.any(
                    BrandDev::BrandWebScrapeMdParams::Action::Wait,
                    BrandDev::BrandWebScrapeMdParams::Action::Perform
                  )
                ]
              ),
            country: BrandDev::BrandWebScrapeMdParams::Country::OrSymbol,
            exclude_selectors: T.nilable(T::Array[String]),
            headers: T::Hash[Symbol, String],
            include_frames:
              T.any(
                T::Boolean,
                BrandDev::BrandWebScrapeMdParams::IncludeFrames::OrSymbol
              ),
            include_images:
              T.any(
                T::Boolean,
                BrandDev::BrandWebScrapeMdParams::IncludeImages::OrSymbol
              ),
            include_links:
              T.any(
                T::Boolean,
                BrandDev::BrandWebScrapeMdParams::IncludeLinks::OrSymbol
              ),
            include_selectors: T.nilable(T::Array[String]),
            max_age_ms: T.nilable(Integer),
            pdf: BrandDev::BrandWebScrapeMdParams::Pdf,
            settle_animations:
              T.any(
                T::Boolean,
                BrandDev::BrandWebScrapeMdParams::SettleAnimations::OrSymbol
              ),
            shorten_base64_images:
              T.any(
                T::Boolean,
                BrandDev::BrandWebScrapeMdParams::ShortenBase64Images::OrSymbol
              ),
            tags: T::Array[String],
            timeout_ms: Integer,
            use_main_content_only:
              T.any(
                T::Boolean,
                BrandDev::BrandWebScrapeMdParams::UseMainContentOnly::OrSymbol
              ),
            wait_for_ms: T.nilable(Integer),
            zdr: BrandDev::BrandWebScrapeMdParams::Zdr::OrSymbol,
            request_options: BrandDev::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Browser action discriminated by `do`. Each variant exposes only its applicable
      # fields.
      module Action
        extend BrandDev::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              BrandDev::BrandWebScrapeMdParams::Action::Wait,
              BrandDev::BrandWebScrapeMdParams::Action::Perform
            )
          end

        class Wait < BrandDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                BrandDev::BrandWebScrapeMdParams::Action::Wait,
                BrandDev::Internal::AnyHash
              )
            end

          sig { returns(Symbol) }
          attr_accessor :do_

          sig { returns(Integer) }
          attr_accessor :time_ms

          # Pause for a fixed number of milliseconds before continuing to the next action.
          sig do
            params(time_ms: Integer, do_: Symbol).returns(T.attached_class)
          end
          def self.new(time_ms:, do_: :wait)
          end

          sig { override.returns({ do_: Symbol, time_ms: Integer }) }
          def to_hash
          end
        end

        class Perform < BrandDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                BrandDev::BrandWebScrapeMdParams::Action::Perform,
                BrandDev::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :action

          sig { returns(Symbol) }
          attr_accessor :do_

          # Resolve and perform one natural-language browser action.
          sig { params(action: String, do_: Symbol).returns(T.attached_class) }
          def self.new(action:, do_: :perform)
          end

          sig { override.returns({ action: String, do_: Symbol }) }
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[BrandDev::BrandWebScrapeMdParams::Action::Variants]
          )
        end
        def self.variants
        end
      end

      # Two-letter ISO 3166-1 alpha-2 country code identifying a supported Context.dev
      # residential proxy exit location. Must be one of Context.dev's supported
      # countries. When provided, Context.dev fetches the target page from that country.
      module Country
        extend BrandDev::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, BrandDev::BrandWebScrapeMdParams::Country)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AD = T.let(:ad, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        AE = T.let(:ae, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        AF = T.let(:af, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        AG = T.let(:ag, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        AI = T.let(:ai, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        AL = T.let(:al, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        AM = T.let(:am, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        AO = T.let(:ao, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        AR = T.let(:ar, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        AT = T.let(:at, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        AU = T.let(:au, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        AW = T.let(:aw, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        AZ = T.let(:az, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        BA = T.let(:ba, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        BB = T.let(:bb, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        BD = T.let(:bd, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        BE = T.let(:be, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        BF = T.let(:bf, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        BG = T.let(:bg, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        BH = T.let(:bh, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        BI = T.let(:bi, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        BJ = T.let(:bj, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        BM = T.let(:bm, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        BN = T.let(:bn, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        BO = T.let(:bo, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        BQ = T.let(:bq, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        BR = T.let(:br, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        BS = T.let(:bs, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        BW = T.let(:bw, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        BY = T.let(:by, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        BZ = T.let(:bz, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        CA = T.let(:ca, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        CD = T.let(:cd, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        CF = T.let(:cf, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        CG = T.let(:cg, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        CH = T.let(:ch, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        CI = T.let(:ci, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        CL = T.let(:cl, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        CM = T.let(:cm, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        CN = T.let(:cn, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        CO = T.let(:co, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        CR = T.let(:cr, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        CV = T.let(:cv, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        CW = T.let(:cw, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        CY = T.let(:cy, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        CZ = T.let(:cz, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        DE = T.let(:de, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        DJ = T.let(:dj, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        DK = T.let(:dk, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        DM = T.let(:dm, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        DO = T.let(:do, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        DZ = T.let(:dz, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        EC = T.let(:ec, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        EE = T.let(:ee, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        EG = T.let(:eg, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        ES = T.let(:es, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        ET = T.let(:et, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        FI = T.let(:fi, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        FJ = T.let(:fj, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        FR = T.let(:fr, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        GA = T.let(:ga, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        GB = T.let(:gb, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        GD = T.let(:gd, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        GE = T.let(:ge, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        GF = T.let(:gf, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        GG = T.let(:gg, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        GH = T.let(:gh, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        GM = T.let(:gm, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        GN = T.let(:gn, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        GP = T.let(:gp, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        GQ = T.let(:gq, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        GR = T.let(:gr, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        GT = T.let(:gt, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        GU = T.let(:gu, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        GW = T.let(:gw, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        GY = T.let(:gy, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        HK = T.let(:hk, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        HN = T.let(:hn, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        HR = T.let(:hr, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        HT = T.let(:ht, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        HU = T.let(:hu, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        ID = T.let(:id, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        IE = T.let(:ie, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        IL = T.let(:il, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        IM = T.let(:im, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        IN = T.let(:in, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        IQ = T.let(:iq, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        IR = T.let(:ir, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        IS = T.let(:is, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        IT = T.let(:it, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        JE = T.let(:je, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        JM = T.let(:jm, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        JO = T.let(:jo, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        JP = T.let(:jp, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        KE = T.let(:ke, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        KG = T.let(:kg, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        KH = T.let(:kh, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        KN = T.let(:kn, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        KR = T.let(:kr, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        KW = T.let(:kw, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        KY = T.let(:ky, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        KZ = T.let(:kz, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        LA = T.let(:la, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        LB = T.let(:lb, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        LC = T.let(:lc, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        LK = T.let(:lk, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        LR = T.let(:lr, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        LS = T.let(:ls, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        LT = T.let(:lt, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        LU = T.let(:lu, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        LV = T.let(:lv, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        LY = T.let(:ly, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        MA = T.let(:ma, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        MC = T.let(:mc, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        MD = T.let(:md, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        ME = T.let(:me, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        MF = T.let(:mf, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        MG = T.let(:mg, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        MK = T.let(:mk, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        ML = T.let(:ml, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        MM = T.let(:mm, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        MN = T.let(:mn, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        MO = T.let(:mo, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        MQ = T.let(:mq, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        MR = T.let(:mr, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        MT = T.let(:mt, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        MU = T.let(:mu, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        MV = T.let(:mv, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        MW = T.let(:mw, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        MX = T.let(:mx, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        MY = T.let(:my, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        MZ = T.let(:mz, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        NA = T.let(:na, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        NC = T.let(:nc, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        NE = T.let(:ne, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        NG = T.let(:ng, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        NI = T.let(:ni, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        NL = T.let(:nl, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        NO = T.let(:no, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        NP = T.let(:np, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        NZ = T.let(:nz, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        OM = T.let(:om, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        PA = T.let(:pa, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        PE = T.let(:pe, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        PF = T.let(:pf, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        PG = T.let(:pg, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        PH = T.let(:ph, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        PK = T.let(:pk, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        PL = T.let(:pl, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        PR = T.let(:pr, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        PS = T.let(:ps, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        PT = T.let(:pt, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        PY = T.let(:py, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        QA = T.let(:qa, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        RE = T.let(:re, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        RO = T.let(:ro, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        RS = T.let(:rs, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        RU = T.let(:ru, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        RW = T.let(:rw, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        SA = T.let(:sa, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        SC = T.let(:sc, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        SD = T.let(:sd, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        SE = T.let(:se, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        SG = T.let(:sg, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        SI = T.let(:si, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        SK = T.let(:sk, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        SL = T.let(:sl, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        SM = T.let(:sm, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        SN = T.let(:sn, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        SO = T.let(:so, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        SR = T.let(:sr, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        SS = T.let(:ss, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        ST = T.let(:st, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        SV = T.let(:sv, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        SX = T.let(:sx, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        SY = T.let(:sy, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        SZ = T.let(:sz, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        TC = T.let(:tc, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        TD = T.let(:td, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        TG = T.let(:tg, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        TH = T.let(:th, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        TJ = T.let(:tj, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        TL = T.let(:tl, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        TM = T.let(:tm, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        TN = T.let(:tn, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        TR = T.let(:tr, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        TT = T.let(:tt, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        TW = T.let(:tw, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        TZ = T.let(:tz, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        UA = T.let(:ua, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        UG = T.let(:ug, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        US = T.let(:us, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        UY = T.let(:uy, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        UZ = T.let(:uz, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        VC = T.let(:vc, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        VE = T.let(:ve, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        VG = T.let(:vg, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        VI = T.let(:vi, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        VN = T.let(:vn, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        YE = T.let(:ye, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        YT = T.let(:yt, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        ZA = T.let(:za, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        ZM = T.let(:zm, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)
        ZW = T.let(:zw, BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol)

        sig do
          override.returns(
            T::Array[BrandDev::BrandWebScrapeMdParams::Country::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # When true, the contents of iframes are rendered to Markdown.
      module IncludeFrames
        extend BrandDev::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeMdParams::IncludeFrames::TaggedSymbol
            )
          end

        sig do
          override.returns(
            T::Array[BrandDev::BrandWebScrapeMdParams::IncludeFrames::Variants]
          )
        end
        def self.variants
        end

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, BrandDev::BrandWebScrapeMdParams::IncludeFrames)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRUE =
          T.let(
            :true,
            BrandDev::BrandWebScrapeMdParams::IncludeFrames::TaggedSymbol
          )
        FALSE =
          T.let(
            :false,
            BrandDev::BrandWebScrapeMdParams::IncludeFrames::TaggedSymbol
          )
      end

      # Include image references in Markdown output
      module IncludeImages
        extend BrandDev::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeMdParams::IncludeImages::TaggedSymbol
            )
          end

        sig do
          override.returns(
            T::Array[BrandDev::BrandWebScrapeMdParams::IncludeImages::Variants]
          )
        end
        def self.variants
        end

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, BrandDev::BrandWebScrapeMdParams::IncludeImages)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRUE =
          T.let(
            :true,
            BrandDev::BrandWebScrapeMdParams::IncludeImages::TaggedSymbol
          )
        FALSE =
          T.let(
            :false,
            BrandDev::BrandWebScrapeMdParams::IncludeImages::TaggedSymbol
          )
      end

      # Preserve hyperlinks in Markdown output
      module IncludeLinks
        extend BrandDev::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeMdParams::IncludeLinks::TaggedSymbol
            )
          end

        sig do
          override.returns(
            T::Array[BrandDev::BrandWebScrapeMdParams::IncludeLinks::Variants]
          )
        end
        def self.variants
        end

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, BrandDev::BrandWebScrapeMdParams::IncludeLinks)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRUE =
          T.let(
            :true,
            BrandDev::BrandWebScrapeMdParams::IncludeLinks::TaggedSymbol
          )
        FALSE =
          T.let(
            :false,
            BrandDev::BrandWebScrapeMdParams::IncludeLinks::TaggedSymbol
          )
      end

      class Pdf < BrandDev::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              BrandDev::BrandWebScrapeMdParams::Pdf,
              BrandDev::Internal::AnyHash
            )
          end

        # Last 1-based PDF page to parse. When omitted, parsing ends at the last page.
        # Must be greater than or equal to start when both are provided.
        sig { returns(T.nilable(Integer)) }
        attr_reader :end_

        sig { params(end_: Integer).void }
        attr_writer :end_

        # When true, detect and OCR images embedded in the selected PDF pages, inserting
        # recognized text at each image's position in page reading order while preserving
        # the PDF text layer. This is separate from automatic scanned-PDF OCR fallback.
        sig do
          returns(
            T.nilable(
              T.any(
                T::Boolean,
                BrandDev::BrandWebScrapeMdParams::Pdf::Ocr::OrSymbol
              )
            )
          )
        end
        attr_reader :ocr

        sig do
          params(
            ocr:
              T.any(
                T::Boolean,
                BrandDev::BrandWebScrapeMdParams::Pdf::Ocr::OrSymbol
              )
          ).void
        end
        attr_writer :ocr

        # When true, PDF URLs are fetched and parsed. When false, PDF URLs are skipped and
        # a 400 WEBSITE_ACCESS_ERROR is returned.
        sig do
          returns(
            T.nilable(
              T.any(
                T::Boolean,
                BrandDev::BrandWebScrapeMdParams::Pdf::ShouldParse::OrSymbol
              )
            )
          )
        end
        attr_reader :should_parse

        sig do
          params(
            should_parse:
              T.any(
                T::Boolean,
                BrandDev::BrandWebScrapeMdParams::Pdf::ShouldParse::OrSymbol
              )
          ).void
        end
        attr_writer :should_parse

        # First 1-based PDF page to parse. When omitted, parsing starts at the first page.
        sig { returns(T.nilable(Integer)) }
        attr_reader :start

        sig { params(start: Integer).void }
        attr_writer :start

        # PDF parsing controls. Use start/end to limit text extraction and embedded-image
        # detection/OCR to an inclusive 1-based page range.
        sig do
          params(
            end_: Integer,
            ocr:
              T.any(
                T::Boolean,
                BrandDev::BrandWebScrapeMdParams::Pdf::Ocr::OrSymbol
              ),
            should_parse:
              T.any(
                T::Boolean,
                BrandDev::BrandWebScrapeMdParams::Pdf::ShouldParse::OrSymbol
              ),
            start: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Last 1-based PDF page to parse. When omitted, parsing ends at the last page.
          # Must be greater than or equal to start when both are provided.
          end_: nil,
          # When true, detect and OCR images embedded in the selected PDF pages, inserting
          # recognized text at each image's position in page reading order while preserving
          # the PDF text layer. This is separate from automatic scanned-PDF OCR fallback.
          ocr: nil,
          # When true, PDF URLs are fetched and parsed. When false, PDF URLs are skipped and
          # a 400 WEBSITE_ACCESS_ERROR is returned.
          should_parse: nil,
          # First 1-based PDF page to parse. When omitted, parsing starts at the first page.
          start: nil
        )
        end

        sig do
          override.returns(
            {
              end_: Integer,
              ocr:
                T.any(
                  T::Boolean,
                  BrandDev::BrandWebScrapeMdParams::Pdf::Ocr::OrSymbol
                ),
              should_parse:
                T.any(
                  T::Boolean,
                  BrandDev::BrandWebScrapeMdParams::Pdf::ShouldParse::OrSymbol
                ),
              start: Integer
            }
          )
        end
        def to_hash
        end

        # When true, detect and OCR images embedded in the selected PDF pages, inserting
        # recognized text at each image's position in page reading order while preserving
        # the PDF text layer. This is separate from automatic scanned-PDF OCR fallback.
        module Ocr
          extend BrandDev::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                T::Boolean,
                BrandDev::BrandWebScrapeMdParams::Pdf::Ocr::TaggedSymbol
              )
            end

          sig do
            override.returns(
              T::Array[BrandDev::BrandWebScrapeMdParams::Pdf::Ocr::Variants]
            )
          end
          def self.variants
          end

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, BrandDev::BrandWebScrapeMdParams::Pdf::Ocr)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TRUE =
            T.let(
              :true,
              BrandDev::BrandWebScrapeMdParams::Pdf::Ocr::TaggedSymbol
            )
          FALSE =
            T.let(
              :false,
              BrandDev::BrandWebScrapeMdParams::Pdf::Ocr::TaggedSymbol
            )
        end

        # When true, PDF URLs are fetched and parsed. When false, PDF URLs are skipped and
        # a 400 WEBSITE_ACCESS_ERROR is returned.
        module ShouldParse
          extend BrandDev::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                T::Boolean,
                BrandDev::BrandWebScrapeMdParams::Pdf::ShouldParse::TaggedSymbol
              )
            end

          sig do
            override.returns(
              T::Array[
                BrandDev::BrandWebScrapeMdParams::Pdf::ShouldParse::Variants
              ]
            )
          end
          def self.variants
          end

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, BrandDev::BrandWebScrapeMdParams::Pdf::ShouldParse)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TRUE =
            T.let(
              :true,
              BrandDev::BrandWebScrapeMdParams::Pdf::ShouldParse::TaggedSymbol
            )
          FALSE =
            T.let(
              :false,
              BrandDev::BrandWebScrapeMdParams::Pdf::ShouldParse::TaggedSymbol
            )
        end
      end

      # When true, waits briefly for CSS and transition animations to settle before
      # converting to Markdown. Defaults to false. This adds a bit of latency in
      # exchange for more stable output on animated pages.
      module SettleAnimations
        extend BrandDev::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeMdParams::SettleAnimations::TaggedSymbol
            )
          end

        sig do
          override.returns(
            T::Array[
              BrandDev::BrandWebScrapeMdParams::SettleAnimations::Variants
            ]
          )
        end
        def self.variants
        end

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, BrandDev::BrandWebScrapeMdParams::SettleAnimations)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRUE =
          T.let(
            :true,
            BrandDev::BrandWebScrapeMdParams::SettleAnimations::TaggedSymbol
          )
        FALSE =
          T.let(
            :false,
            BrandDev::BrandWebScrapeMdParams::SettleAnimations::TaggedSymbol
          )
      end

      # Shorten base64-encoded image data in the Markdown output
      module ShortenBase64Images
        extend BrandDev::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeMdParams::ShortenBase64Images::TaggedSymbol
            )
          end

        sig do
          override.returns(
            T::Array[
              BrandDev::BrandWebScrapeMdParams::ShortenBase64Images::Variants
            ]
          )
        end
        def self.variants
        end

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, BrandDev::BrandWebScrapeMdParams::ShortenBase64Images)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRUE =
          T.let(
            :true,
            BrandDev::BrandWebScrapeMdParams::ShortenBase64Images::TaggedSymbol
          )
        FALSE =
          T.let(
            :false,
            BrandDev::BrandWebScrapeMdParams::ShortenBase64Images::TaggedSymbol
          )
      end

      # Extract only the main content of the page, excluding headers, footers, sidebars,
      # and navigation
      module UseMainContentOnly
        extend BrandDev::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeMdParams::UseMainContentOnly::TaggedSymbol
            )
          end

        sig do
          override.returns(
            T::Array[
              BrandDev::BrandWebScrapeMdParams::UseMainContentOnly::Variants
            ]
          )
        end
        def self.variants
        end

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, BrandDev::BrandWebScrapeMdParams::UseMainContentOnly)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRUE =
          T.let(
            :true,
            BrandDev::BrandWebScrapeMdParams::UseMainContentOnly::TaggedSymbol
          )
        FALSE =
          T.let(
            :false,
            BrandDev::BrandWebScrapeMdParams::UseMainContentOnly::TaggedSymbol
          )
      end

      # Set to enabled to bypass shared caches and omit request and response content
      # from retained usage logs. Requires zero data retention to be enabled for your
      # organization (contact support@context.dev), otherwise the request fails with
      # ZDR_NOT_ENABLED. Successful ZDR responses include X-Context-ZDR: true.
      module Zdr
        extend BrandDev::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, BrandDev::BrandWebScrapeMdParams::Zdr) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ENABLED =
          T.let(:enabled, BrandDev::BrandWebScrapeMdParams::Zdr::TaggedSymbol)
        DISABLED =
          T.let(:disabled, BrandDev::BrandWebScrapeMdParams::Zdr::TaggedSymbol)

        sig do
          override.returns(
            T::Array[BrandDev::BrandWebScrapeMdParams::Zdr::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
