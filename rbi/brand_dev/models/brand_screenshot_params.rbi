# typed: strong

module BrandDev
  module Models
    class BrandScreenshotParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(BrandDev::BrandScreenshotParams, BrandDev::Internal::AnyHash)
        end

      # Optional parameter to choose the site's visual theme in the screenshot. Use
      # 'light' or 'dark' when the site offers both appearances.
      sig do
        returns(
          T.nilable(BrandDev::BrandScreenshotParams::ColorScheme::OrSymbol)
        )
      end
      attr_reader :color_scheme

      sig do
        params(
          color_scheme: BrandDev::BrandScreenshotParams::ColorScheme::OrSymbol
        ).void
      end
      attr_writer :color_scheme

      # Two-letter ISO 3166-1 alpha-2 country code identifying a supported Context.dev
      # residential proxy exit location. Must be one of Context.dev's supported
      # countries. When provided, Context.dev fetches the target page from that country.
      sig do
        returns(T.nilable(BrandDev::BrandScreenshotParams::Country::OrSymbol))
      end
      attr_reader :country

      sig do
        params(country: BrandDev::BrandScreenshotParams::Country::OrSymbol).void
      end
      attr_writer :country

      # A specific URL to screenshot directly, bypassing domain resolution (e.g.,
      # 'https://example.com/pricing'). When provided, the screenshot is taken of this
      # exact URL. You must provide either 'domain' or 'directUrl', but not both.
      sig { returns(T.nilable(String)) }
      attr_reader :direct_url

      sig { params(direct_url: String).void }
      attr_writer :direct_url

      # Domain name to take screenshot of (e.g., 'example.com', 'google.com'). The
      # domain will be automatically normalized and validated. You must provide either
      # 'domain' or 'directUrl', but not both.
      sig { returns(T.nilable(String)) }
      attr_reader :domain

      sig { params(domain: String).void }
      attr_writer :domain

      # Optional parameter to determine screenshot type. If 'true', takes a full page
      # screenshot capturing all content. If 'false' or not provided, takes a viewport
      # screenshot (standard browser view).
      sig do
        returns(
          T.nilable(BrandDev::BrandScreenshotParams::FullScreenshot::OrSymbol)
        )
      end
      attr_reader :full_screenshot

      sig do
        params(
          full_screenshot:
            BrandDev::BrandScreenshotParams::FullScreenshot::OrSymbol
        ).void
      end
      attr_writer :full_screenshot

      # Optional parameter to control cookie/consent popup handling. If 'true', we
      # dismiss cookie banner before capture. If 'false' or not provided, captures the
      # page without that step.
      sig do
        returns(
          T.nilable(
            T.any(
              T::Boolean,
              BrandDev::BrandScreenshotParams::HandleCookiePopup::OrSymbol
            )
          )
        )
      end
      attr_reader :handle_cookie_popup

      sig do
        params(
          handle_cookie_popup:
            T.any(
              T::Boolean,
              BrandDev::BrandScreenshotParams::HandleCookiePopup::OrSymbol
            )
        ).void
      end
      attr_writer :handle_cookie_popup

      # Return a cached screenshot if a prior screenshot for the same parameters exists
      # and is younger than this many milliseconds. Defaults to 1 day (86400000 ms) when
      # omitted. Max is 30 days (2592000000 ms). Set to 0 to always capture fresh.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :max_age_ms

      # Optional parameter to specify which page type to screenshot. If provided, the
      # system will scrape the domain's links and use heuristics to find the most
      # appropriate URL for the specified page type (30 supported languages). If not
      # provided, screenshots the main domain landing page. Only applicable when using
      # 'domain', not 'directUrl'.
      sig do
        returns(T.nilable(BrandDev::BrandScreenshotParams::Page::OrSymbol))
      end
      attr_reader :page

      sig { params(page: BrandDev::BrandScreenshotParams::Page::OrSymbol).void }
      attr_writer :page

      # Optional vertical scroll offset in pixels for capturing a long page in
      # viewport-sized chunks. When provided, the full page is captured once and the
      # returned image is the viewport-sized slice that begins at this Y offset (e.g.
      # request scrollOffset=0, then 1080, then 2160 to walk a 1920x1080 landing page
      # top to bottom). The final slice may be shorter than the viewport height. Takes
      # precedence over fullScreenshot. Max: 100000.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :scroll_offset

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

      # Optional browser viewport dimensions for the screenshot. Defaults to 1920x1080.
      sig { returns(T.nilable(BrandDev::BrandScreenshotParams::Viewport)) }
      attr_reader :viewport

      sig do
        params(viewport: BrandDev::BrandScreenshotParams::Viewport::OrHash).void
      end
      attr_writer :viewport

      # Optional browser wait time in milliseconds after initial page load before taking
      # the screenshot. Min: 0. Max: 30000 (30 seconds). Defaults to 3000 ms when
      # omitted.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :wait_for_ms

      # Set to enabled to bypass shared caches and omit request and response content
      # from retained usage logs. Requires zero data retention to be enabled for your
      # organization (contact support@context.dev), otherwise the request fails with
      # ZDR_NOT_ENABLED. Successful ZDR responses include X-Context-ZDR: true.
      sig { returns(T.nilable(BrandDev::BrandScreenshotParams::Zdr::OrSymbol)) }
      attr_reader :zdr

      sig { params(zdr: BrandDev::BrandScreenshotParams::Zdr::OrSymbol).void }
      attr_writer :zdr

      sig do
        params(
          color_scheme: BrandDev::BrandScreenshotParams::ColorScheme::OrSymbol,
          country: BrandDev::BrandScreenshotParams::Country::OrSymbol,
          direct_url: String,
          domain: String,
          full_screenshot:
            BrandDev::BrandScreenshotParams::FullScreenshot::OrSymbol,
          handle_cookie_popup:
            T.any(
              T::Boolean,
              BrandDev::BrandScreenshotParams::HandleCookiePopup::OrSymbol
            ),
          max_age_ms: T.nilable(Integer),
          page: BrandDev::BrandScreenshotParams::Page::OrSymbol,
          scroll_offset: T.nilable(Integer),
          tags: T::Array[String],
          timeout_ms: Integer,
          viewport: BrandDev::BrandScreenshotParams::Viewport::OrHash,
          wait_for_ms: T.nilable(Integer),
          zdr: BrandDev::BrandScreenshotParams::Zdr::OrSymbol,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Optional parameter to choose the site's visual theme in the screenshot. Use
        # 'light' or 'dark' when the site offers both appearances.
        color_scheme: nil,
        # Two-letter ISO 3166-1 alpha-2 country code identifying a supported Context.dev
        # residential proxy exit location. Must be one of Context.dev's supported
        # countries. When provided, Context.dev fetches the target page from that country.
        country: nil,
        # A specific URL to screenshot directly, bypassing domain resolution (e.g.,
        # 'https://example.com/pricing'). When provided, the screenshot is taken of this
        # exact URL. You must provide either 'domain' or 'directUrl', but not both.
        direct_url: nil,
        # Domain name to take screenshot of (e.g., 'example.com', 'google.com'). The
        # domain will be automatically normalized and validated. You must provide either
        # 'domain' or 'directUrl', but not both.
        domain: nil,
        # Optional parameter to determine screenshot type. If 'true', takes a full page
        # screenshot capturing all content. If 'false' or not provided, takes a viewport
        # screenshot (standard browser view).
        full_screenshot: nil,
        # Optional parameter to control cookie/consent popup handling. If 'true', we
        # dismiss cookie banner before capture. If 'false' or not provided, captures the
        # page without that step.
        handle_cookie_popup: nil,
        # Return a cached screenshot if a prior screenshot for the same parameters exists
        # and is younger than this many milliseconds. Defaults to 1 day (86400000 ms) when
        # omitted. Max is 30 days (2592000000 ms). Set to 0 to always capture fresh.
        max_age_ms: nil,
        # Optional parameter to specify which page type to screenshot. If provided, the
        # system will scrape the domain's links and use heuristics to find the most
        # appropriate URL for the specified page type (30 supported languages). If not
        # provided, screenshots the main domain landing page. Only applicable when using
        # 'domain', not 'directUrl'.
        page: nil,
        # Optional vertical scroll offset in pixels for capturing a long page in
        # viewport-sized chunks. When provided, the full page is captured once and the
        # returned image is the viewport-sized slice that begins at this Y offset (e.g.
        # request scrollOffset=0, then 1080, then 2160 to walk a 1920x1080 landing page
        # top to bottom). The final slice may be shorter than the viewport height. Takes
        # precedence over fullScreenshot. Max: 100000.
        scroll_offset: nil,
        # Optional comma-separated caller-defined tags for tracking this request. Tags are
        # recorded on the request's usage log and can be used to filter usage on the
        # dashboard usage page. Up to 20 tags, each 1-50 characters.
        tags: nil,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        # Optional browser viewport dimensions for the screenshot. Defaults to 1920x1080.
        viewport: nil,
        # Optional browser wait time in milliseconds after initial page load before taking
        # the screenshot. Min: 0. Max: 30000 (30 seconds). Defaults to 3000 ms when
        # omitted.
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
            color_scheme:
              BrandDev::BrandScreenshotParams::ColorScheme::OrSymbol,
            country: BrandDev::BrandScreenshotParams::Country::OrSymbol,
            direct_url: String,
            domain: String,
            full_screenshot:
              BrandDev::BrandScreenshotParams::FullScreenshot::OrSymbol,
            handle_cookie_popup:
              T.any(
                T::Boolean,
                BrandDev::BrandScreenshotParams::HandleCookiePopup::OrSymbol
              ),
            max_age_ms: T.nilable(Integer),
            page: BrandDev::BrandScreenshotParams::Page::OrSymbol,
            scroll_offset: T.nilable(Integer),
            tags: T::Array[String],
            timeout_ms: Integer,
            viewport: BrandDev::BrandScreenshotParams::Viewport,
            wait_for_ms: T.nilable(Integer),
            zdr: BrandDev::BrandScreenshotParams::Zdr::OrSymbol,
            request_options: BrandDev::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Optional parameter to choose the site's visual theme in the screenshot. Use
      # 'light' or 'dark' when the site offers both appearances.
      module ColorScheme
        extend BrandDev::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, BrandDev::BrandScreenshotParams::ColorScheme)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LIGHT =
          T.let(
            :light,
            BrandDev::BrandScreenshotParams::ColorScheme::TaggedSymbol
          )
        DARK =
          T.let(
            :dark,
            BrandDev::BrandScreenshotParams::ColorScheme::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[BrandDev::BrandScreenshotParams::ColorScheme::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Two-letter ISO 3166-1 alpha-2 country code identifying a supported Context.dev
      # residential proxy exit location. Must be one of Context.dev's supported
      # countries. When provided, Context.dev fetches the target page from that country.
      module Country
        extend BrandDev::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, BrandDev::BrandScreenshotParams::Country)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AD = T.let(:ad, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        AE = T.let(:ae, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        AF = T.let(:af, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        AG = T.let(:ag, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        AI = T.let(:ai, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        AL = T.let(:al, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        AM = T.let(:am, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        AO = T.let(:ao, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        AR = T.let(:ar, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        AT = T.let(:at, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        AU = T.let(:au, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        AW = T.let(:aw, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        AZ = T.let(:az, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        BA = T.let(:ba, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        BB = T.let(:bb, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        BD = T.let(:bd, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        BE = T.let(:be, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        BF = T.let(:bf, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        BG = T.let(:bg, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        BH = T.let(:bh, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        BI = T.let(:bi, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        BJ = T.let(:bj, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        BM = T.let(:bm, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        BN = T.let(:bn, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        BO = T.let(:bo, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        BQ = T.let(:bq, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        BR = T.let(:br, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        BS = T.let(:bs, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        BW = T.let(:bw, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        BY = T.let(:by, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        BZ = T.let(:bz, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        CA = T.let(:ca, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        CD = T.let(:cd, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        CF = T.let(:cf, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        CG = T.let(:cg, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        CH = T.let(:ch, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        CI = T.let(:ci, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        CL = T.let(:cl, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        CM = T.let(:cm, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        CN = T.let(:cn, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        CO = T.let(:co, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        CR = T.let(:cr, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        CV = T.let(:cv, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        CW = T.let(:cw, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        CY = T.let(:cy, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        CZ = T.let(:cz, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        DE = T.let(:de, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        DJ = T.let(:dj, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        DK = T.let(:dk, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        DM = T.let(:dm, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        DO = T.let(:do, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        DZ = T.let(:dz, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        EC = T.let(:ec, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        EE = T.let(:ee, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        EG = T.let(:eg, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        ES = T.let(:es, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        ET = T.let(:et, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        FI = T.let(:fi, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        FJ = T.let(:fj, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        FR = T.let(:fr, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        GA = T.let(:ga, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        GB = T.let(:gb, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        GD = T.let(:gd, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        GE = T.let(:ge, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        GF = T.let(:gf, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        GG = T.let(:gg, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        GH = T.let(:gh, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        GM = T.let(:gm, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        GN = T.let(:gn, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        GP = T.let(:gp, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        GQ = T.let(:gq, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        GR = T.let(:gr, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        GT = T.let(:gt, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        GU = T.let(:gu, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        GW = T.let(:gw, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        GY = T.let(:gy, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        HK = T.let(:hk, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        HN = T.let(:hn, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        HR = T.let(:hr, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        HT = T.let(:ht, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        HU = T.let(:hu, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        ID = T.let(:id, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        IE = T.let(:ie, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        IL = T.let(:il, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        IM = T.let(:im, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        IN = T.let(:in, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        IQ = T.let(:iq, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        IR = T.let(:ir, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        IS = T.let(:is, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        IT = T.let(:it, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        JE = T.let(:je, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        JM = T.let(:jm, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        JO = T.let(:jo, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        JP = T.let(:jp, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        KE = T.let(:ke, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        KG = T.let(:kg, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        KH = T.let(:kh, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        KN = T.let(:kn, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        KR = T.let(:kr, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        KW = T.let(:kw, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        KY = T.let(:ky, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        KZ = T.let(:kz, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        LA = T.let(:la, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        LB = T.let(:lb, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        LC = T.let(:lc, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        LK = T.let(:lk, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        LR = T.let(:lr, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        LS = T.let(:ls, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        LT = T.let(:lt, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        LU = T.let(:lu, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        LV = T.let(:lv, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        LY = T.let(:ly, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        MA = T.let(:ma, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        MC = T.let(:mc, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        MD = T.let(:md, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        ME = T.let(:me, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        MF = T.let(:mf, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        MG = T.let(:mg, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        MK = T.let(:mk, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        ML = T.let(:ml, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        MM = T.let(:mm, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        MN = T.let(:mn, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        MO = T.let(:mo, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        MQ = T.let(:mq, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        MR = T.let(:mr, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        MT = T.let(:mt, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        MU = T.let(:mu, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        MV = T.let(:mv, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        MW = T.let(:mw, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        MX = T.let(:mx, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        MY = T.let(:my, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        MZ = T.let(:mz, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        NA = T.let(:na, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        NC = T.let(:nc, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        NE = T.let(:ne, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        NG = T.let(:ng, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        NI = T.let(:ni, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        NL = T.let(:nl, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        NO = T.let(:no, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        NP = T.let(:np, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        NZ = T.let(:nz, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        OM = T.let(:om, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        PA = T.let(:pa, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        PE = T.let(:pe, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        PF = T.let(:pf, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        PG = T.let(:pg, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        PH = T.let(:ph, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        PK = T.let(:pk, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        PL = T.let(:pl, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        PR = T.let(:pr, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        PS = T.let(:ps, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        PT = T.let(:pt, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        PY = T.let(:py, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        QA = T.let(:qa, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        RE = T.let(:re, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        RO = T.let(:ro, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        RS = T.let(:rs, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        RU = T.let(:ru, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        RW = T.let(:rw, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        SA = T.let(:sa, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        SC = T.let(:sc, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        SD = T.let(:sd, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        SE = T.let(:se, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        SG = T.let(:sg, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        SI = T.let(:si, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        SK = T.let(:sk, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        SL = T.let(:sl, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        SM = T.let(:sm, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        SN = T.let(:sn, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        SO = T.let(:so, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        SR = T.let(:sr, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        SS = T.let(:ss, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        ST = T.let(:st, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        SV = T.let(:sv, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        SX = T.let(:sx, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        SY = T.let(:sy, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        SZ = T.let(:sz, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        TC = T.let(:tc, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        TD = T.let(:td, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        TG = T.let(:tg, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        TH = T.let(:th, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        TJ = T.let(:tj, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        TL = T.let(:tl, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        TM = T.let(:tm, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        TN = T.let(:tn, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        TR = T.let(:tr, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        TT = T.let(:tt, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        TW = T.let(:tw, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        TZ = T.let(:tz, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        UA = T.let(:ua, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        UG = T.let(:ug, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        US = T.let(:us, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        UY = T.let(:uy, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        UZ = T.let(:uz, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        VC = T.let(:vc, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        VE = T.let(:ve, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        VG = T.let(:vg, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        VI = T.let(:vi, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        VN = T.let(:vn, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        YE = T.let(:ye, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        YT = T.let(:yt, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        ZA = T.let(:za, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        ZM = T.let(:zm, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)
        ZW = T.let(:zw, BrandDev::BrandScreenshotParams::Country::TaggedSymbol)

        sig do
          override.returns(
            T::Array[BrandDev::BrandScreenshotParams::Country::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Optional parameter to determine screenshot type. If 'true', takes a full page
      # screenshot capturing all content. If 'false' or not provided, takes a viewport
      # screenshot (standard browser view).
      module FullScreenshot
        extend BrandDev::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, BrandDev::BrandScreenshotParams::FullScreenshot)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRUE =
          T.let(
            :true,
            BrandDev::BrandScreenshotParams::FullScreenshot::TaggedSymbol
          )
        FALSE =
          T.let(
            :false,
            BrandDev::BrandScreenshotParams::FullScreenshot::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              BrandDev::BrandScreenshotParams::FullScreenshot::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Optional parameter to control cookie/consent popup handling. If 'true', we
      # dismiss cookie banner before capture. If 'false' or not provided, captures the
      # page without that step.
      module HandleCookiePopup
        extend BrandDev::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              T::Boolean,
              BrandDev::BrandScreenshotParams::HandleCookiePopup::TaggedSymbol
            )
          end

        sig do
          override.returns(
            T::Array[
              BrandDev::BrandScreenshotParams::HandleCookiePopup::Variants
            ]
          )
        end
        def self.variants
        end

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, BrandDev::BrandScreenshotParams::HandleCookiePopup)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRUE =
          T.let(
            :true,
            BrandDev::BrandScreenshotParams::HandleCookiePopup::TaggedSymbol
          )
        FALSE =
          T.let(
            :false,
            BrandDev::BrandScreenshotParams::HandleCookiePopup::TaggedSymbol
          )
      end

      # Optional parameter to specify which page type to screenshot. If provided, the
      # system will scrape the domain's links and use heuristics to find the most
      # appropriate URL for the specified page type (30 supported languages). If not
      # provided, screenshots the main domain landing page. Only applicable when using
      # 'domain', not 'directUrl'.
      module Page
        extend BrandDev::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, BrandDev::BrandScreenshotParams::Page) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LOGIN =
          T.let(:login, BrandDev::BrandScreenshotParams::Page::TaggedSymbol)
        SIGNUP =
          T.let(:signup, BrandDev::BrandScreenshotParams::Page::TaggedSymbol)
        BLOG = T.let(:blog, BrandDev::BrandScreenshotParams::Page::TaggedSymbol)
        CAREERS =
          T.let(:careers, BrandDev::BrandScreenshotParams::Page::TaggedSymbol)
        PRICING =
          T.let(:pricing, BrandDev::BrandScreenshotParams::Page::TaggedSymbol)
        TERMS =
          T.let(:terms, BrandDev::BrandScreenshotParams::Page::TaggedSymbol)
        PRIVACY =
          T.let(:privacy, BrandDev::BrandScreenshotParams::Page::TaggedSymbol)
        CONTACT =
          T.let(:contact, BrandDev::BrandScreenshotParams::Page::TaggedSymbol)

        sig do
          override.returns(
            T::Array[BrandDev::BrandScreenshotParams::Page::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Viewport < BrandDev::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              BrandDev::BrandScreenshotParams::Viewport,
              BrandDev::Internal::AnyHash
            )
          end

        # Viewport height in pixels.
        sig { returns(T.nilable(Integer)) }
        attr_reader :height

        sig { params(height: Integer).void }
        attr_writer :height

        # Viewport width in pixels.
        sig { returns(T.nilable(Integer)) }
        attr_reader :width

        sig { params(width: Integer).void }
        attr_writer :width

        # Optional browser viewport dimensions for the screenshot. Defaults to 1920x1080.
        sig do
          params(height: Integer, width: Integer).returns(T.attached_class)
        end
        def self.new(
          # Viewport height in pixels.
          height: nil,
          # Viewport width in pixels.
          width: nil
        )
        end

        sig { override.returns({ height: Integer, width: Integer }) }
        def to_hash
        end
      end

      # Set to enabled to bypass shared caches and omit request and response content
      # from retained usage logs. Requires zero data retention to be enabled for your
      # organization (contact support@context.dev), otherwise the request fails with
      # ZDR_NOT_ENABLED. Successful ZDR responses include X-Context-ZDR: true.
      module Zdr
        extend BrandDev::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, BrandDev::BrandScreenshotParams::Zdr) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ENABLED =
          T.let(:enabled, BrandDev::BrandScreenshotParams::Zdr::TaggedSymbol)
        DISABLED =
          T.let(:disabled, BrandDev::BrandScreenshotParams::Zdr::TaggedSymbol)

        sig do
          override.returns(
            T::Array[BrandDev::BrandScreenshotParams::Zdr::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
