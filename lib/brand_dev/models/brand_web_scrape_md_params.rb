# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#web_scrape_md
    class BrandWebScrapeMdParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      # @!attribute url
      #   Full URL to scrape into LLM usable Markdown (must include http:// or https://
      #   protocol)
      #
      #   @return [String]
      required :url, String

      # @!attribute actions
      #   Optional browser actions executed in array order after the page loads and before
      #   content is captured. Requires a paid plan. Send a JSON array in the query
      #   parameter. Maximum: 5 actions.
      #
      #   @return [Array<BrandDev::Models::BrandWebScrapeMdParams::Action::Wait, BrandDev::Models::BrandWebScrapeMdParams::Action::Perform, BrandDev::Models::BrandWebScrapeMdParams::Action::Scroll>, nil]
      optional :actions,
               -> { BrandDev::Internal::Type::ArrayOf[union: BrandDev::BrandWebScrapeMdParams::Action] },
               nil?: true

      # @!attribute country
      #   Fetch the target page through a residential proxy in this country (ISO 3166-1
      #   alpha-2).
      #
      #   @return [Symbol, BrandDev::Models::BrandWebScrapeMdParams::Country, nil]
      optional :country, enum: -> { BrandDev::BrandWebScrapeMdParams::Country }

      # @!attribute exclude_selectors
      #   CSS selectors to remove before conversion to Markdown. Applied after
      #   includeSelectors. Exclusion takes precedence: an element matching both is
      #   removed. Examples: "nav", "footer", ".ad-banner", "[aria-hidden=true]".
      #
      #   @return [Array<String>, nil]
      optional :exclude_selectors, BrandDev::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute headers
      #   Optional outbound HTTP headers forwarded only to the target URL, sent as
      #   deep-object query params such as headers[X-Custom]=value. When provided, caching
      #   is bypassed: the result is neither read from nor written to cache.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :headers, BrandDev::Internal::Type::HashOf[String]

      # @!attribute include_frames
      #   When true, the contents of iframes are rendered to Markdown.
      #
      #   @return [Boolean, nil]
      optional :include_frames, BrandDev::Internal::Type::Boolean

      # @!attribute include_html
      #   When true, the response also includes an `html` field with the page HTML the
      #   Markdown was converted from — the same body the Scrape HTML endpoint returns for
      #   the equivalent request.
      #
      #   @return [Boolean, nil]
      optional :include_html, BrandDev::Internal::Type::Boolean

      # @!attribute include_images
      #   Include image references in Markdown output
      #
      #   @return [Boolean, nil]
      optional :include_images, BrandDev::Internal::Type::Boolean

      # @!attribute include_links
      #   Preserve hyperlinks in Markdown output
      #
      #   @return [Boolean, nil]
      optional :include_links, BrandDev::Internal::Type::Boolean

      # @!attribute include_selectors
      #   CSS selectors. When provided, only matching HTML subtrees (and their
      #   descendants) are kept before conversion to Markdown. When omitted, the entire
      #   document is kept. Examples: "article.main", "#content", "[role=main]".
      #
      #   @return [Array<String>, nil]
      optional :include_selectors, BrandDev::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute max_age_ms
      #   Return a cached result if a prior scrape for the same parameters exists and is
      #   younger than this many milliseconds. Defaults to 1 day (86400000 ms) when
      #   omitted. Max is 30 days (2592000000 ms). Set to 0 to always scrape fresh.
      #
      #   @return [Integer, nil]
      optional :max_age_ms, Integer, nil?: true

      # @!attribute pdf
      #   PDF parsing controls. Use start/end to limit text extraction and embedded-image
      #   detection/OCR to an inclusive 1-based page range.
      #
      #   @return [BrandDev::Models::BrandWebScrapeMdParams::Pdf, nil]
      optional :pdf, -> { BrandDev::BrandWebScrapeMdParams::Pdf }

      # @!attribute settle_animations
      #   When true, waits briefly for CSS and transition animations to settle before
      #   converting to Markdown. Defaults to false. This adds a bit of latency in
      #   exchange for more stable output on animated pages.
      #
      #   @return [Boolean, nil]
      optional :settle_animations, BrandDev::Internal::Type::Boolean

      # @!attribute shorten_base64_images
      #   Shorten base64-encoded image data in the Markdown output
      #
      #   @return [Boolean, nil]
      optional :shorten_base64_images, BrandDev::Internal::Type::Boolean

      # @!attribute tags
      #   Optional comma-separated caller-defined tags for tracking this request. Tags are
      #   recorded on the request's usage log and can be used to filter usage on the
      #   dashboard usage page. Up to 20 tags, each 1-50 characters.
      #
      #   @return [Array<String>, nil]
      optional :tags, BrandDev::Internal::Type::ArrayOf[String]

      # @!attribute timeout_ms
      #   Optional timeout in milliseconds for the request. If the request takes longer
      #   than this value, it will be aborted with a 408 status code. Maximum allowed
      #   value is 300000ms (5 minutes).
      #
      #   @return [Integer, nil]
      optional :timeout_ms, Integer

      # @!attribute use_main_content_only
      #   Extract only the main content of the page, excluding headers, footers, sidebars,
      #   and navigation
      #
      #   @return [Boolean, nil]
      optional :use_main_content_only, BrandDev::Internal::Type::Boolean

      # @!attribute wait_for_ms
      #   Optional browser wait time in milliseconds after initial page load before
      #   converting the page to Markdown. Min: 0. Max: 30000 (30 seconds).
      #
      #   @return [Integer, nil]
      optional :wait_for_ms, Integer, nil?: true

      # @!attribute zdr
      #   Set to enabled to bypass shared caches and omit request and response content
      #   from retained usage logs. Requires zero data retention to be enabled for your
      #   organization (contact support@context.dev), otherwise the request fails with
      #   ZDR_NOT_ENABLED. Successful ZDR responses include X-Context-ZDR: true.
      #
      #   @return [Symbol, BrandDev::Models::BrandWebScrapeMdParams::Zdr, nil]
      optional :zdr, enum: -> { BrandDev::BrandWebScrapeMdParams::Zdr }

      # @!method initialize(url:, actions: nil, country: nil, exclude_selectors: nil, headers: nil, include_frames: nil, include_html: nil, include_images: nil, include_links: nil, include_selectors: nil, max_age_ms: nil, pdf: nil, settle_animations: nil, shorten_base64_images: nil, tags: nil, timeout_ms: nil, use_main_content_only: nil, wait_for_ms: nil, zdr: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {BrandDev::Models::BrandWebScrapeMdParams} for more details.
      #
      #   @param url [String] Full URL to scrape into LLM usable Markdown (must include http:// or https:// pr
      #
      #   @param actions [Array<BrandDev::Models::BrandWebScrapeMdParams::Action::Wait, BrandDev::Models::BrandWebScrapeMdParams::Action::Perform, BrandDev::Models::BrandWebScrapeMdParams::Action::Scroll>, nil] Optional browser actions executed in array order after the page loads and before
      #
      #   @param country [Symbol, BrandDev::Models::BrandWebScrapeMdParams::Country] Fetch the target page through a residential proxy in this country (ISO 3166-1 al
      #
      #   @param exclude_selectors [Array<String>, nil] CSS selectors to remove before conversion to Markdown. Applied after includeSele
      #
      #   @param headers [Hash{Symbol=>String}] Optional outbound HTTP headers forwarded only to the target URL, sent as deep-ob
      #
      #   @param include_frames [Boolean] When true, the contents of iframes are rendered to Markdown.
      #
      #   @param include_html [Boolean] When true, the response also includes an `html` field with the page HTML the Mar
      #
      #   @param include_images [Boolean] Include image references in Markdown output
      #
      #   @param include_links [Boolean] Preserve hyperlinks in Markdown output
      #
      #   @param include_selectors [Array<String>, nil] CSS selectors. When provided, only matching HTML subtrees (and their descendants
      #
      #   @param max_age_ms [Integer, nil] Return a cached result if a prior scrape for the same parameters exists and is y
      #
      #   @param pdf [BrandDev::Models::BrandWebScrapeMdParams::Pdf] PDF parsing controls. Use start/end to limit text extraction and embedded-image
      #
      #   @param settle_animations [Boolean] When true, waits briefly for CSS and transition animations to settle before conv
      #
      #   @param shorten_base64_images [Boolean] Shorten base64-encoded image data in the Markdown output
      #
      #   @param tags [Array<String>] Optional comma-separated caller-defined tags for tracking this request. Tags are
      #
      #   @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      #   @param use_main_content_only [Boolean] Extract only the main content of the page, excluding headers, footers, sidebars,
      #
      #   @param wait_for_ms [Integer, nil] Optional browser wait time in milliseconds after initial page load before conver
      #
      #   @param zdr [Symbol, BrandDev::Models::BrandWebScrapeMdParams::Zdr] Set to enabled to bypass shared caches and omit request and response content fro
      #
      #   @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}]

      # Browser action discriminated by `do`. Each variant exposes only its applicable
      # fields.
      module Action
        extend BrandDev::Internal::Type::Union

        discriminator :do

        # Pause for a fixed number of milliseconds before continuing to the next action.
        variant :wait, -> { BrandDev::BrandWebScrapeMdParams::Action::Wait }

        # Resolve and perform one natural-language browser action.
        variant :perform, -> { BrandDev::BrandWebScrapeMdParams::Action::Perform }

        # Scroll the page or a selected scrollable container, waiting adaptively for content and dimensions to settle after each iteration.
        variant :scroll, -> { BrandDev::BrandWebScrapeMdParams::Action::Scroll }

        class Wait < BrandDev::Internal::Type::BaseModel
          # @!attribute do_
          #
          #   @return [Symbol, :wait]
          required :do_, const: :wait, api_name: :do

          # @!attribute time_ms
          #
          #   @return [Integer]
          required :time_ms, Integer, api_name: :timeMs

          # @!method initialize(time_ms:, do_: :wait)
          #   Pause for a fixed number of milliseconds before continuing to the next action.
          #
          #   @param time_ms [Integer]
          #   @param do_ [Symbol, :wait]
        end

        class Perform < BrandDev::Internal::Type::BaseModel
          # @!attribute action
          #
          #   @return [String]
          required :action, String

          # @!attribute do_
          #
          #   @return [Symbol, :perform]
          required :do_, const: :perform, api_name: :do

          # @!method initialize(action:, do_: :perform)
          #   Resolve and perform one natural-language browser action.
          #
          #   @param action [String]
          #   @param do_ [Symbol, :perform]
        end

        class Scroll < BrandDev::Internal::Type::BaseModel
          # @!attribute do_
          #
          #   @return [Symbol, :scroll]
          required :do_, const: :scroll, api_name: :do

          # @!attribute amount
          #   Pixels per scroll, one visible viewport, or the current scroll boundary.
          #   Defaults to viewport.
          #
          #   @return [Integer, Symbol, BrandDev::Models::BrandWebScrapeMdParams::Action::Scroll::Amount, nil]
          optional :amount, union: -> { BrandDev::BrandWebScrapeMdParams::Action::Scroll::Amount }

          # @!attribute container
          #   CSS selector for the first matching scroll container. Defaults to the page.
          #
          #   @return [String, nil]
          optional :container, String

          # @!attribute direction
          #   Direction to scroll. Defaults to down.
          #
          #   @return [Symbol, BrandDev::Models::BrandWebScrapeMdParams::Action::Scroll::Direction, nil]
          optional :direction, enum: -> { BrandDev::BrandWebScrapeMdParams::Action::Scroll::Direction }

          # @!attribute max_scrolls
          #   Maximum scroll iterations. Stops early when scrolling and scrollable extent stop
          #   changing. Defaults to 1.
          #
          #   @return [Integer, nil]
          optional :max_scrolls, Integer, api_name: :maxScrolls

          # @!method initialize(amount: nil, container: nil, direction: nil, max_scrolls: nil, do_: :scroll)
          #   Some parameter documentations has been truncated, see
          #   {BrandDev::Models::BrandWebScrapeMdParams::Action::Scroll} for more details.
          #
          #   Scroll the page or a selected scrollable container, waiting adaptively for
          #   content and dimensions to settle after each iteration.
          #
          #   @param amount [Integer, Symbol, BrandDev::Models::BrandWebScrapeMdParams::Action::Scroll::Amount] Pixels per scroll, one visible viewport, or the current scroll boundary. Default
          #
          #   @param container [String] CSS selector for the first matching scroll container. Defaults to the page.
          #
          #   @param direction [Symbol, BrandDev::Models::BrandWebScrapeMdParams::Action::Scroll::Direction] Direction to scroll. Defaults to down.
          #
          #   @param max_scrolls [Integer] Maximum scroll iterations. Stops early when scrolling and scrollable extent stop
          #
          #   @param do_ [Symbol, :scroll]

          # Pixels per scroll, one visible viewport, or the current scroll boundary.
          # Defaults to viewport.
          #
          # @see BrandDev::Models::BrandWebScrapeMdParams::Action::Scroll#amount
          module Amount
            extend BrandDev::Internal::Type::Union

            variant Integer

            variant const: -> { BrandDev::Models::BrandWebScrapeMdParams::Action::Scroll::Amount::VIEWPORT }

            variant const: -> { BrandDev::Models::BrandWebScrapeMdParams::Action::Scroll::Amount::MAX }

            # @!method self.variants
            #   @return [Array(Integer, Symbol)]

            define_sorbet_constant!(:Variants) do
              T.type_alias { T.any(Integer, BrandDev::BrandWebScrapeMdParams::Action::Scroll::Amount::TaggedSymbol) }
            end

            # @!group

            VIEWPORT = :viewport
            MAX = :max

            # @!endgroup
          end

          # Direction to scroll. Defaults to down.
          #
          # @see BrandDev::Models::BrandWebScrapeMdParams::Action::Scroll#direction
          module Direction
            extend BrandDev::Internal::Type::Enum

            UP = :up
            DOWN = :down
            LEFT = :left
            RIGHT = :right

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @!method self.variants
        #   @return [Array(BrandDev::Models::BrandWebScrapeMdParams::Action::Wait, BrandDev::Models::BrandWebScrapeMdParams::Action::Perform, BrandDev::Models::BrandWebScrapeMdParams::Action::Scroll)]
      end

      # Fetch the target page through a residential proxy in this country (ISO 3166-1
      # alpha-2).
      module Country
        extend BrandDev::Internal::Type::Enum

        AD = :ad
        AE = :ae
        AF = :af
        AG = :ag
        AI = :ai
        AL = :al
        AM = :am
        AO = :ao
        AR = :ar
        AT = :at
        AU = :au
        AW = :aw
        AZ = :az
        BA = :ba
        BB = :bb
        BD = :bd
        BE = :be
        BF = :bf
        BG = :bg
        BH = :bh
        BI = :bi
        BJ = :bj
        BM = :bm
        BN = :bn
        BO = :bo
        BQ = :bq
        BR = :br
        BS = :bs
        BW = :bw
        BY = :by
        BZ = :bz
        CA = :ca
        CD = :cd
        CF = :cf
        CG = :cg
        CH = :ch
        CI = :ci
        CL = :cl
        CM = :cm
        CN = :cn
        CO = :co
        CR = :cr
        CV = :cv
        CW = :cw
        CY = :cy
        CZ = :cz
        DE = :de
        DJ = :dj
        DK = :dk
        DM = :dm
        DO = :do
        DZ = :dz
        EC = :ec
        EE = :ee
        EG = :eg
        ES = :es
        ET = :et
        FI = :fi
        FJ = :fj
        FR = :fr
        GA = :ga
        GB = :gb
        GD = :gd
        GE = :ge
        GF = :gf
        GG = :gg
        GH = :gh
        GM = :gm
        GN = :gn
        GP = :gp
        GQ = :gq
        GR = :gr
        GT = :gt
        GU = :gu
        GW = :gw
        GY = :gy
        HK = :hk
        HN = :hn
        HR = :hr
        HT = :ht
        HU = :hu
        ID = :id
        IE = :ie
        IL = :il
        IM = :im
        IN = :in
        IQ = :iq
        IR = :ir
        IS = :is
        IT = :it
        JE = :je
        JM = :jm
        JO = :jo
        JP = :jp
        KE = :ke
        KG = :kg
        KH = :kh
        KN = :kn
        KR = :kr
        KW = :kw
        KY = :ky
        KZ = :kz
        LA = :la
        LB = :lb
        LC = :lc
        LK = :lk
        LR = :lr
        LS = :ls
        LT = :lt
        LU = :lu
        LV = :lv
        LY = :ly
        MA = :ma
        MC = :mc
        MD = :md
        ME = :me
        MF = :mf
        MG = :mg
        MK = :mk
        ML = :ml
        MM = :mm
        MN = :mn
        MO = :mo
        MQ = :mq
        MR = :mr
        MT = :mt
        MU = :mu
        MV = :mv
        MW = :mw
        MX = :mx
        MY = :my
        MZ = :mz
        NA = :na
        NC = :nc
        NE = :ne
        NG = :ng
        NI = :ni
        NL = :nl
        NO = :no
        NP = :np
        NZ = :nz
        OM = :om
        PA = :pa
        PE = :pe
        PF = :pf
        PG = :pg
        PH = :ph
        PK = :pk
        PL = :pl
        PR = :pr
        PS = :ps
        PT = :pt
        PY = :py
        QA = :qa
        RE = :re
        RO = :ro
        RS = :rs
        RU = :ru
        RW = :rw
        SA = :sa
        SC = :sc
        SD = :sd
        SE = :se
        SG = :sg
        SI = :si
        SK = :sk
        SL = :sl
        SM = :sm
        SN = :sn
        SO = :so
        SR = :sr
        SS = :ss
        ST = :st
        SV = :sv
        SX = :sx
        SY = :sy
        SZ = :sz
        TC = :tc
        TD = :td
        TG = :tg
        TH = :th
        TJ = :tj
        TL = :tl
        TM = :tm
        TN = :tn
        TR = :tr
        TT = :tt
        TW = :tw
        TZ = :tz
        UA = :ua
        UG = :ug
        US = :us
        UY = :uy
        UZ = :uz
        VC = :vc
        VE = :ve
        VG = :vg
        VI = :vi
        VN = :vn
        YE = :ye
        YT = :yt
        ZA = :za
        ZM = :zm
        ZW = :zw

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Pdf < BrandDev::Internal::Type::BaseModel
        # @!attribute end_
        #   Last 1-based PDF page to parse. When omitted, parsing ends at the last page.
        #   Must be greater than or equal to start when both are provided.
        #
        #   @return [Integer, nil]
        optional :end_, Integer, api_name: :end

        # @!attribute ocr
        #   When true, OCR the selected PDF pages that have no usable text layer (scans),
        #   replacing each recovered page's text with the OCR result while pages with a real
        #   text layer keep it. Billed at 1 credit per page OCR actually recovered, on top
        #   of the base request cost. When false, no OCR runs.
        #
        #   @return [Boolean, nil]
        optional :ocr, BrandDev::Internal::Type::Boolean

        # @!attribute should_parse
        #   When true, PDF URLs are fetched and parsed. When false, PDF URLs are skipped and
        #   a 400 PDF_SKIPPED is returned.
        #
        #   @return [Boolean, nil]
        optional :should_parse, BrandDev::Internal::Type::Boolean, api_name: :shouldParse

        # @!attribute start
        #   First 1-based PDF page to parse. When omitted, parsing starts at the first page.
        #
        #   @return [Integer, nil]
        optional :start, Integer

        # @!method initialize(end_: nil, ocr: nil, should_parse: nil, start: nil)
        #   Some parameter documentations has been truncated, see
        #   {BrandDev::Models::BrandWebScrapeMdParams::Pdf} for more details.
        #
        #   PDF parsing controls. Use start/end to limit text extraction and embedded-image
        #   detection/OCR to an inclusive 1-based page range.
        #
        #   @param end_ [Integer] Last 1-based PDF page to parse. When omitted, parsing ends at the last page. Mus
        #
        #   @param ocr [Boolean] When true, OCR the selected PDF pages that have no usable text layer (scans), re
        #
        #   @param should_parse [Boolean] When true, PDF URLs are fetched and parsed. When false, PDF URLs are skipped and
        #
        #   @param start [Integer] First 1-based PDF page to parse. When omitted, parsing starts at the first page.
      end

      # Set to enabled to bypass shared caches and omit request and response content
      # from retained usage logs. Requires zero data retention to be enabled for your
      # organization (contact support@context.dev), otherwise the request fails with
      # ZDR_NOT_ENABLED. Successful ZDR responses include X-Context-ZDR: true.
      module Zdr
        extend BrandDev::Internal::Type::Enum

        ENABLED = :enabled
        DISABLED = :disabled

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
