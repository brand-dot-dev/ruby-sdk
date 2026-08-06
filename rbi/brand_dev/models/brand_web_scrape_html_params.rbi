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

      # Optional browser actions executed in array order after the page loads and before
      # content is captured. Requires a paid plan. Send a JSON array in the query
      # parameter. Maximum: 5 actions.
      sig do
        returns(
          T.nilable(
            T::Array[
              T.any(
                BrandDev::BrandWebScrapeHTMLParams::Action::Wait,
                BrandDev::BrandWebScrapeHTMLParams::Action::Perform
              )
            ]
          )
        )
      end
      attr_accessor :actions

      # Fetch the target page through a residential proxy in this country (ISO 3166-1
      # alpha-2).
      sig do
        returns(
          T.nilable(BrandDev::BrandWebScrapeHTMLParams::Country::OrSymbol)
        )
      end
      attr_reader :country

      sig do
        params(
          country: BrandDev::BrandWebScrapeHTMLParams::Country::OrSymbol
        ).void
      end
      attr_writer :country

      # CSS selectors to remove from the result. Applied after includeSelectors.
      # Exclusion takes precedence: an element matching both is removed. Examples:
      # "nav", "footer", ".ad-banner", "[aria-hidden=true]".
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :exclude_selectors

      # Optional outbound HTTP headers forwarded only to the target URL, sent as
      # deep-object query params such as headers[X-Custom]=value. When provided, caching
      # is bypassed: the result is neither read from nor written to cache.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :headers

      sig { params(headers: T::Hash[Symbol, String]).void }
      attr_writer :headers

      # When true, iframes are rendered inline into the returned HTML.
      sig do
        returns(
          T.nilable(
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeHTMLParams::IncludeFrames::OrSymbol
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
              BrandDev::BrandWebScrapeHTMLParams::IncludeFrames::OrSymbol
            )
        ).void
      end
      attr_writer :include_frames

      # CSS selectors. When provided, only matching subtrees (and their descendants) are
      # kept and everything else is dropped. When omitted, the entire document is kept.
      # Examples: "article.main", "#content", "[role=main]".
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :include_selectors

      # Return a cached result if a prior scrape for the same parameters exists and is
      # younger than this many milliseconds. Defaults to 1 day (86400000 ms) when
      # omitted. Max is 30 days (2592000000 ms). Set to 0 to always scrape fresh.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :max_age_ms

      # PDF parsing controls. Use start/end to limit text extraction and embedded-image
      # detection/OCR to an inclusive 1-based page range.
      sig { returns(T.nilable(BrandDev::BrandWebScrapeHTMLParams::Pdf)) }
      attr_reader :pdf

      sig { params(pdf: BrandDev::BrandWebScrapeHTMLParams::Pdf::OrHash).void }
      attr_writer :pdf

      # When true, waits briefly for CSS and transition animations to settle before
      # extracting HTML. Defaults to false. This adds a bit of latency in exchange for
      # more stable output on animated pages.
      sig do
        returns(
          T.nilable(
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeHTMLParams::SettleAnimations::OrSymbol
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
              BrandDev::BrandWebScrapeHTMLParams::SettleAnimations::OrSymbol
            )
        ).void
      end
      attr_writer :settle_animations

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

      # When true, return only the page's main content in the HTML response, excluding
      # headers, footers, sidebars, and navigation when detectable.
      sig do
        returns(
          T.nilable(
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeHTMLParams::UseMainContentOnly::OrSymbol
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
              BrandDev::BrandWebScrapeHTMLParams::UseMainContentOnly::OrSymbol
            )
        ).void
      end
      attr_writer :use_main_content_only

      # Optional browser wait time in milliseconds after initial page load. Min: 0. Max:
      # 30000 (30 seconds).
      sig { returns(T.nilable(Integer)) }
      attr_accessor :wait_for_ms

      # Set to enabled to bypass shared caches and omit request and response content
      # from retained usage logs. Requires zero data retention to be enabled for your
      # organization (contact support@context.dev), otherwise the request fails with
      # ZDR_NOT_ENABLED. Successful ZDR responses include X-Context-ZDR: true.
      sig do
        returns(T.nilable(BrandDev::BrandWebScrapeHTMLParams::Zdr::OrSymbol))
      end
      attr_reader :zdr

      sig do
        params(zdr: BrandDev::BrandWebScrapeHTMLParams::Zdr::OrSymbol).void
      end
      attr_writer :zdr

      sig do
        params(
          url: String,
          actions:
            T.nilable(
              T::Array[
                T.any(
                  BrandDev::BrandWebScrapeHTMLParams::Action::Wait::OrHash,
                  BrandDev::BrandWebScrapeHTMLParams::Action::Perform::OrHash
                )
              ]
            ),
          country: BrandDev::BrandWebScrapeHTMLParams::Country::OrSymbol,
          exclude_selectors: T.nilable(T::Array[String]),
          headers: T::Hash[Symbol, String],
          include_frames:
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeHTMLParams::IncludeFrames::OrSymbol
            ),
          include_selectors: T.nilable(T::Array[String]),
          max_age_ms: T.nilable(Integer),
          pdf: BrandDev::BrandWebScrapeHTMLParams::Pdf::OrHash,
          settle_animations:
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeHTMLParams::SettleAnimations::OrSymbol
            ),
          tags: T::Array[String],
          timeout_ms: Integer,
          use_main_content_only:
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeHTMLParams::UseMainContentOnly::OrSymbol
            ),
          wait_for_ms: T.nilable(Integer),
          zdr: BrandDev::BrandWebScrapeHTMLParams::Zdr::OrSymbol,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Full URL to scrape (must include http:// or https:// protocol)
        url:,
        # Optional browser actions executed in array order after the page loads and before
        # content is captured. Requires a paid plan. Send a JSON array in the query
        # parameter. Maximum: 5 actions.
        actions: nil,
        # Fetch the target page through a residential proxy in this country (ISO 3166-1
        # alpha-2).
        country: nil,
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
        # PDF parsing controls. Use start/end to limit text extraction and embedded-image
        # detection/OCR to an inclusive 1-based page range.
        pdf: nil,
        # When true, waits briefly for CSS and transition animations to settle before
        # extracting HTML. Defaults to false. This adds a bit of latency in exchange for
        # more stable output on animated pages.
        settle_animations: nil,
        # Optional comma-separated caller-defined tags for tracking this request. Tags are
        # recorded on the request's usage log and can be used to filter usage on the
        # dashboard usage page. Up to 20 tags, each 1-50 characters.
        tags: nil,
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
                    BrandDev::BrandWebScrapeHTMLParams::Action::Wait,
                    BrandDev::BrandWebScrapeHTMLParams::Action::Perform
                  )
                ]
              ),
            country: BrandDev::BrandWebScrapeHTMLParams::Country::OrSymbol,
            exclude_selectors: T.nilable(T::Array[String]),
            headers: T::Hash[Symbol, String],
            include_frames:
              T.any(
                T::Boolean,
                BrandDev::BrandWebScrapeHTMLParams::IncludeFrames::OrSymbol
              ),
            include_selectors: T.nilable(T::Array[String]),
            max_age_ms: T.nilable(Integer),
            pdf: BrandDev::BrandWebScrapeHTMLParams::Pdf,
            settle_animations:
              T.any(
                T::Boolean,
                BrandDev::BrandWebScrapeHTMLParams::SettleAnimations::OrSymbol
              ),
            tags: T::Array[String],
            timeout_ms: Integer,
            use_main_content_only:
              T.any(
                T::Boolean,
                BrandDev::BrandWebScrapeHTMLParams::UseMainContentOnly::OrSymbol
              ),
            wait_for_ms: T.nilable(Integer),
            zdr: BrandDev::BrandWebScrapeHTMLParams::Zdr::OrSymbol,
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
              BrandDev::BrandWebScrapeHTMLParams::Action::Wait,
              BrandDev::BrandWebScrapeHTMLParams::Action::Perform
            )
          end

        class Wait < BrandDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                BrandDev::BrandWebScrapeHTMLParams::Action::Wait,
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
                BrandDev::BrandWebScrapeHTMLParams::Action::Perform,
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
            T::Array[BrandDev::BrandWebScrapeHTMLParams::Action::Variants]
          )
        end
        def self.variants
        end
      end

      # Fetch the target page through a residential proxy in this country (ISO 3166-1
      # alpha-2).
      module Country
        extend BrandDev::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, BrandDev::BrandWebScrapeHTMLParams::Country)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AD =
          T.let(:ad, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        AE =
          T.let(:ae, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        AF =
          T.let(:af, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        AG =
          T.let(:ag, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        AI =
          T.let(:ai, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        AL =
          T.let(:al, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        AM =
          T.let(:am, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        AO =
          T.let(:ao, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        AR =
          T.let(:ar, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        AT =
          T.let(:at, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        AU =
          T.let(:au, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        AW =
          T.let(:aw, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        AZ =
          T.let(:az, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        BA =
          T.let(:ba, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        BB =
          T.let(:bb, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        BD =
          T.let(:bd, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        BE =
          T.let(:be, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        BF =
          T.let(:bf, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        BG =
          T.let(:bg, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        BH =
          T.let(:bh, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        BI =
          T.let(:bi, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        BJ =
          T.let(:bj, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        BM =
          T.let(:bm, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        BN =
          T.let(:bn, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        BO =
          T.let(:bo, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        BQ =
          T.let(:bq, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        BR =
          T.let(:br, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        BS =
          T.let(:bs, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        BW =
          T.let(:bw, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        BY =
          T.let(:by, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        BZ =
          T.let(:bz, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        CA =
          T.let(:ca, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        CD =
          T.let(:cd, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        CF =
          T.let(:cf, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        CG =
          T.let(:cg, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        CH =
          T.let(:ch, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        CI =
          T.let(:ci, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        CL =
          T.let(:cl, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        CM =
          T.let(:cm, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        CN =
          T.let(:cn, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        CO =
          T.let(:co, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        CR =
          T.let(:cr, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        CV =
          T.let(:cv, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        CW =
          T.let(:cw, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        CY =
          T.let(:cy, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        CZ =
          T.let(:cz, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        DE =
          T.let(:de, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        DJ =
          T.let(:dj, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        DK =
          T.let(:dk, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        DM =
          T.let(:dm, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        DO =
          T.let(:do, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        DZ =
          T.let(:dz, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        EC =
          T.let(:ec, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        EE =
          T.let(:ee, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        EG =
          T.let(:eg, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        ES =
          T.let(:es, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        ET =
          T.let(:et, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        FI =
          T.let(:fi, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        FJ =
          T.let(:fj, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        FR =
          T.let(:fr, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        GA =
          T.let(:ga, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        GB =
          T.let(:gb, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        GD =
          T.let(:gd, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        GE =
          T.let(:ge, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        GF =
          T.let(:gf, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        GG =
          T.let(:gg, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        GH =
          T.let(:gh, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        GM =
          T.let(:gm, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        GN =
          T.let(:gn, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        GP =
          T.let(:gp, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        GQ =
          T.let(:gq, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        GR =
          T.let(:gr, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        GT =
          T.let(:gt, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        GU =
          T.let(:gu, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        GW =
          T.let(:gw, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        GY =
          T.let(:gy, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        HK =
          T.let(:hk, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        HN =
          T.let(:hn, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        HR =
          T.let(:hr, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        HT =
          T.let(:ht, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        HU =
          T.let(:hu, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        ID =
          T.let(:id, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        IE =
          T.let(:ie, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        IL =
          T.let(:il, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        IM =
          T.let(:im, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        IN =
          T.let(:in, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        IQ =
          T.let(:iq, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        IR =
          T.let(:ir, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        IS =
          T.let(:is, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        IT =
          T.let(:it, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        JE =
          T.let(:je, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        JM =
          T.let(:jm, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        JO =
          T.let(:jo, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        JP =
          T.let(:jp, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        KE =
          T.let(:ke, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        KG =
          T.let(:kg, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        KH =
          T.let(:kh, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        KN =
          T.let(:kn, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        KR =
          T.let(:kr, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        KW =
          T.let(:kw, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        KY =
          T.let(:ky, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        KZ =
          T.let(:kz, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        LA =
          T.let(:la, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        LB =
          T.let(:lb, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        LC =
          T.let(:lc, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        LK =
          T.let(:lk, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        LR =
          T.let(:lr, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        LS =
          T.let(:ls, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        LT =
          T.let(:lt, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        LU =
          T.let(:lu, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        LV =
          T.let(:lv, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        LY =
          T.let(:ly, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        MA =
          T.let(:ma, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        MC =
          T.let(:mc, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        MD =
          T.let(:md, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        ME =
          T.let(:me, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        MF =
          T.let(:mf, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        MG =
          T.let(:mg, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        MK =
          T.let(:mk, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        ML =
          T.let(:ml, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        MM =
          T.let(:mm, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        MN =
          T.let(:mn, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        MO =
          T.let(:mo, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        MQ =
          T.let(:mq, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        MR =
          T.let(:mr, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        MT =
          T.let(:mt, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        MU =
          T.let(:mu, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        MV =
          T.let(:mv, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        MW =
          T.let(:mw, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        MX =
          T.let(:mx, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        MY =
          T.let(:my, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        MZ =
          T.let(:mz, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        NA =
          T.let(:na, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        NC =
          T.let(:nc, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        NE =
          T.let(:ne, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        NG =
          T.let(:ng, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        NI =
          T.let(:ni, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        NL =
          T.let(:nl, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        NO =
          T.let(:no, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        NP =
          T.let(:np, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        NZ =
          T.let(:nz, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        OM =
          T.let(:om, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        PA =
          T.let(:pa, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        PE =
          T.let(:pe, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        PF =
          T.let(:pf, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        PG =
          T.let(:pg, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        PH =
          T.let(:ph, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        PK =
          T.let(:pk, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        PL =
          T.let(:pl, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        PR =
          T.let(:pr, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        PS =
          T.let(:ps, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        PT =
          T.let(:pt, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        PY =
          T.let(:py, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        QA =
          T.let(:qa, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        RE =
          T.let(:re, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        RO =
          T.let(:ro, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        RS =
          T.let(:rs, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        RU =
          T.let(:ru, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        RW =
          T.let(:rw, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        SA =
          T.let(:sa, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        SC =
          T.let(:sc, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        SD =
          T.let(:sd, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        SE =
          T.let(:se, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        SG =
          T.let(:sg, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        SI =
          T.let(:si, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        SK =
          T.let(:sk, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        SL =
          T.let(:sl, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        SM =
          T.let(:sm, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        SN =
          T.let(:sn, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        SO =
          T.let(:so, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        SR =
          T.let(:sr, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        SS =
          T.let(:ss, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        ST =
          T.let(:st, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        SV =
          T.let(:sv, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        SX =
          T.let(:sx, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        SY =
          T.let(:sy, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        SZ =
          T.let(:sz, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        TC =
          T.let(:tc, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        TD =
          T.let(:td, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        TG =
          T.let(:tg, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        TH =
          T.let(:th, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        TJ =
          T.let(:tj, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        TL =
          T.let(:tl, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        TM =
          T.let(:tm, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        TN =
          T.let(:tn, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        TR =
          T.let(:tr, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        TT =
          T.let(:tt, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        TW =
          T.let(:tw, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        TZ =
          T.let(:tz, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        UA =
          T.let(:ua, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        UG =
          T.let(:ug, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        US =
          T.let(:us, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        UY =
          T.let(:uy, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        UZ =
          T.let(:uz, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        VC =
          T.let(:vc, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        VE =
          T.let(:ve, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        VG =
          T.let(:vg, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        VI =
          T.let(:vi, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        VN =
          T.let(:vn, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        YE =
          T.let(:ye, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        YT =
          T.let(:yt, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        ZA =
          T.let(:za, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        ZM =
          T.let(:zm, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)
        ZW =
          T.let(:zw, BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol)

        sig do
          override.returns(
            T::Array[BrandDev::BrandWebScrapeHTMLParams::Country::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # When true, iframes are rendered inline into the returned HTML.
      module IncludeFrames
        extend BrandDev::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeHTMLParams::IncludeFrames::TaggedSymbol
            )
          end

        sig do
          override.returns(
            T::Array[
              BrandDev::BrandWebScrapeHTMLParams::IncludeFrames::Variants
            ]
          )
        end
        def self.variants
        end

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, BrandDev::BrandWebScrapeHTMLParams::IncludeFrames)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRUE =
          T.let(
            :true,
            BrandDev::BrandWebScrapeHTMLParams::IncludeFrames::TaggedSymbol
          )
        FALSE =
          T.let(
            :false,
            BrandDev::BrandWebScrapeHTMLParams::IncludeFrames::TaggedSymbol
          )
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

        # When true, OCR the selected PDF pages that have no usable text layer (scans),
        # replacing each recovered page's text with the OCR result while pages with a real
        # text layer keep it. Billed at 1 credit per page OCR actually recovered, on top
        # of the base request cost. When false, no OCR runs.
        sig do
          returns(
            T.nilable(
              T.any(
                T::Boolean,
                BrandDev::BrandWebScrapeHTMLParams::Pdf::Ocr::OrSymbol
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
                BrandDev::BrandWebScrapeHTMLParams::Pdf::Ocr::OrSymbol
              )
          ).void
        end
        attr_writer :ocr

        # When true, PDF URLs are fetched and parsed. When false, PDF URLs are skipped and
        # a 400 PDF_SKIPPED is returned.
        sig do
          returns(
            T.nilable(
              T.any(
                T::Boolean,
                BrandDev::BrandWebScrapeHTMLParams::Pdf::ShouldParse::OrSymbol
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
                BrandDev::BrandWebScrapeHTMLParams::Pdf::ShouldParse::OrSymbol
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
                BrandDev::BrandWebScrapeHTMLParams::Pdf::Ocr::OrSymbol
              ),
            should_parse:
              T.any(
                T::Boolean,
                BrandDev::BrandWebScrapeHTMLParams::Pdf::ShouldParse::OrSymbol
              ),
            start: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Last 1-based PDF page to parse. When omitted, parsing ends at the last page.
          # Must be greater than or equal to start when both are provided.
          end_: nil,
          # When true, OCR the selected PDF pages that have no usable text layer (scans),
          # replacing each recovered page's text with the OCR result while pages with a real
          # text layer keep it. Billed at 1 credit per page OCR actually recovered, on top
          # of the base request cost. When false, no OCR runs.
          ocr: nil,
          # When true, PDF URLs are fetched and parsed. When false, PDF URLs are skipped and
          # a 400 PDF_SKIPPED is returned.
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
                  BrandDev::BrandWebScrapeHTMLParams::Pdf::Ocr::OrSymbol
                ),
              should_parse:
                T.any(
                  T::Boolean,
                  BrandDev::BrandWebScrapeHTMLParams::Pdf::ShouldParse::OrSymbol
                ),
              start: Integer
            }
          )
        end
        def to_hash
        end

        # When true, OCR the selected PDF pages that have no usable text layer (scans),
        # replacing each recovered page's text with the OCR result while pages with a real
        # text layer keep it. Billed at 1 credit per page OCR actually recovered, on top
        # of the base request cost. When false, no OCR runs.
        module Ocr
          extend BrandDev::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                T::Boolean,
                BrandDev::BrandWebScrapeHTMLParams::Pdf::Ocr::TaggedSymbol
              )
            end

          sig do
            override.returns(
              T::Array[BrandDev::BrandWebScrapeHTMLParams::Pdf::Ocr::Variants]
            )
          end
          def self.variants
          end

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, BrandDev::BrandWebScrapeHTMLParams::Pdf::Ocr)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TRUE =
            T.let(
              :true,
              BrandDev::BrandWebScrapeHTMLParams::Pdf::Ocr::TaggedSymbol
            )
          FALSE =
            T.let(
              :false,
              BrandDev::BrandWebScrapeHTMLParams::Pdf::Ocr::TaggedSymbol
            )
        end

        # When true, PDF URLs are fetched and parsed. When false, PDF URLs are skipped and
        # a 400 PDF_SKIPPED is returned.
        module ShouldParse
          extend BrandDev::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                T::Boolean,
                BrandDev::BrandWebScrapeHTMLParams::Pdf::ShouldParse::TaggedSymbol
              )
            end

          sig do
            override.returns(
              T::Array[
                BrandDev::BrandWebScrapeHTMLParams::Pdf::ShouldParse::Variants
              ]
            )
          end
          def self.variants
          end

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                BrandDev::BrandWebScrapeHTMLParams::Pdf::ShouldParse
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TRUE =
            T.let(
              :true,
              BrandDev::BrandWebScrapeHTMLParams::Pdf::ShouldParse::TaggedSymbol
            )
          FALSE =
            T.let(
              :false,
              BrandDev::BrandWebScrapeHTMLParams::Pdf::ShouldParse::TaggedSymbol
            )
        end
      end

      # When true, waits briefly for CSS and transition animations to settle before
      # extracting HTML. Defaults to false. This adds a bit of latency in exchange for
      # more stable output on animated pages.
      module SettleAnimations
        extend BrandDev::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeHTMLParams::SettleAnimations::TaggedSymbol
            )
          end

        sig do
          override.returns(
            T::Array[
              BrandDev::BrandWebScrapeHTMLParams::SettleAnimations::Variants
            ]
          )
        end
        def self.variants
        end

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, BrandDev::BrandWebScrapeHTMLParams::SettleAnimations)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRUE =
          T.let(
            :true,
            BrandDev::BrandWebScrapeHTMLParams::SettleAnimations::TaggedSymbol
          )
        FALSE =
          T.let(
            :false,
            BrandDev::BrandWebScrapeHTMLParams::SettleAnimations::TaggedSymbol
          )
      end

      # When true, return only the page's main content in the HTML response, excluding
      # headers, footers, sidebars, and navigation when detectable.
      module UseMainContentOnly
        extend BrandDev::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeHTMLParams::UseMainContentOnly::TaggedSymbol
            )
          end

        sig do
          override.returns(
            T::Array[
              BrandDev::BrandWebScrapeHTMLParams::UseMainContentOnly::Variants
            ]
          )
        end
        def self.variants
        end

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              BrandDev::BrandWebScrapeHTMLParams::UseMainContentOnly
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRUE =
          T.let(
            :true,
            BrandDev::BrandWebScrapeHTMLParams::UseMainContentOnly::TaggedSymbol
          )
        FALSE =
          T.let(
            :false,
            BrandDev::BrandWebScrapeHTMLParams::UseMainContentOnly::TaggedSymbol
          )
      end

      # Set to enabled to bypass shared caches and omit request and response content
      # from retained usage logs. Requires zero data retention to be enabled for your
      # organization (contact support@context.dev), otherwise the request fails with
      # ZDR_NOT_ENABLED. Successful ZDR responses include X-Context-ZDR: true.
      module Zdr
        extend BrandDev::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, BrandDev::BrandWebScrapeHTMLParams::Zdr)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ENABLED =
          T.let(:enabled, BrandDev::BrandWebScrapeHTMLParams::Zdr::TaggedSymbol)
        DISABLED =
          T.let(
            :disabled,
            BrandDev::BrandWebScrapeHTMLParams::Zdr::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[BrandDev::BrandWebScrapeHTMLParams::Zdr::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
