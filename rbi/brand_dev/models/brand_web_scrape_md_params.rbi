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

      # Two-letter ISO 3166-1 alpha-2 country code for the website request location.
      # When provided, Context.dev fetches the target page from that country.
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
      attr_reader :exclude_selectors

      sig { params(exclude_selectors: T::Array[String]).void }
      attr_writer :exclude_selectors

      # Optional outbound HTTP headers forwarded only to the target URL, sent as
      # deep-object query params such as headers[X-Custom]=value. When provided, caching
      # is bypassed: the result is neither read from nor written to cache.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :headers

      sig { params(headers: T::Hash[Symbol, String]).void }
      attr_writer :headers

      # When true, the contents of iframes are rendered to Markdown.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_frames

      sig { params(include_frames: T::Boolean).void }
      attr_writer :include_frames

      # Include image references in Markdown output
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_images

      sig { params(include_images: T::Boolean).void }
      attr_writer :include_images

      # Preserve hyperlinks in Markdown output
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_links

      sig { params(include_links: T::Boolean).void }
      attr_writer :include_links

      # CSS selectors. When provided, only matching HTML subtrees (and their
      # descendants) are kept before conversion to Markdown. When omitted, the entire
      # document is kept. Examples: "article.main", "#content", "[role=main]".
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :include_selectors

      sig { params(include_selectors: T::Array[String]).void }
      attr_writer :include_selectors

      # Return a cached result if a prior scrape for the same parameters exists and is
      # younger than this many milliseconds. Defaults to 1 day (86400000 ms) when
      # omitted. Max is 30 days (2592000000 ms). Set to 0 to always scrape fresh.
      sig { returns(T.nilable(Integer)) }
      attr_reader :max_age_ms

      sig { params(max_age_ms: Integer).void }
      attr_writer :max_age_ms

      # PDF parsing controls. Use start/end to limit text extraction and embedded-image
      # detection/OCR to an inclusive 1-based page range.
      sig { returns(T.nilable(BrandDev::BrandWebScrapeMdParams::Pdf)) }
      attr_reader :pdf

      sig { params(pdf: BrandDev::BrandWebScrapeMdParams::Pdf::OrHash).void }
      attr_writer :pdf

      # When true, waits briefly for CSS and transition animations to settle before
      # converting to Markdown. Defaults to false. This adds a bit of latency in
      # exchange for more stable output on animated pages.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :settle_animations

      sig { params(settle_animations: T::Boolean).void }
      attr_writer :settle_animations

      # Shorten base64-encoded image data in the Markdown output
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :shorten_base64_images

      sig { params(shorten_base64_images: T::Boolean).void }
      attr_writer :shorten_base64_images

      # Optional timeout in milliseconds for the request. If the request takes longer
      # than this value, it will be aborted with a 408 status code. Maximum allowed
      # value is 300000ms (5 minutes).
      sig { returns(T.nilable(Integer)) }
      attr_reader :timeout_ms

      sig { params(timeout_ms: Integer).void }
      attr_writer :timeout_ms

      # Extract only the main content of the page, excluding headers, footers, sidebars,
      # and navigation
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :use_main_content_only

      sig { params(use_main_content_only: T::Boolean).void }
      attr_writer :use_main_content_only

      # Optional browser wait time in milliseconds after initial page load before
      # converting the page to Markdown. Min: 0. Max: 30000 (30 seconds).
      sig { returns(T.nilable(Integer)) }
      attr_reader :wait_for_ms

      sig { params(wait_for_ms: Integer).void }
      attr_writer :wait_for_ms

      sig do
        params(
          url: String,
          country: BrandDev::BrandWebScrapeMdParams::Country::OrSymbol,
          exclude_selectors: T::Array[String],
          headers: T::Hash[Symbol, String],
          include_frames: T::Boolean,
          include_images: T::Boolean,
          include_links: T::Boolean,
          include_selectors: T::Array[String],
          max_age_ms: Integer,
          pdf: BrandDev::BrandWebScrapeMdParams::Pdf::OrHash,
          settle_animations: T::Boolean,
          shorten_base64_images: T::Boolean,
          timeout_ms: Integer,
          use_main_content_only: T::Boolean,
          wait_for_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Full URL to scrape into LLM usable Markdown (must include http:// or https://
        # protocol)
        url:,
        # Two-letter ISO 3166-1 alpha-2 country code for the website request location.
        # When provided, Context.dev fetches the target page from that country.
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
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            url: String,
            country: BrandDev::BrandWebScrapeMdParams::Country::OrSymbol,
            exclude_selectors: T::Array[String],
            headers: T::Hash[Symbol, String],
            include_frames: T::Boolean,
            include_images: T::Boolean,
            include_links: T::Boolean,
            include_selectors: T::Array[String],
            max_age_ms: Integer,
            pdf: BrandDev::BrandWebScrapeMdParams::Pdf,
            settle_animations: T::Boolean,
            shorten_base64_images: T::Boolean,
            timeout_ms: Integer,
            use_main_content_only: T::Boolean,
            wait_for_ms: Integer,
            request_options: BrandDev::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Two-letter ISO 3166-1 alpha-2 country code for the website request location.
      # When provided, Context.dev fetches the target page from that country.
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
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :ocr

        sig { params(ocr: T::Boolean).void }
        attr_writer :ocr

        # When true, PDF URLs are fetched and parsed. When false, PDF URLs are skipped and
        # a 400 WEBSITE_ACCESS_ERROR is returned.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :should_parse

        sig { params(should_parse: T::Boolean).void }
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
            ocr: T::Boolean,
            should_parse: T::Boolean,
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
              ocr: T::Boolean,
              should_parse: T::Boolean,
              start: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
