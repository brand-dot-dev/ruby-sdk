# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#screenshot
    class BrandScreenshotParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      # @!attribute color_scheme
      #   Optional parameter to choose the site's visual theme in the screenshot. Use
      #   'light' or 'dark' when the site offers both appearances.
      #
      #   @return [Symbol, BrandDev::Models::BrandScreenshotParams::ColorScheme, nil]
      optional :color_scheme, enum: -> { BrandDev::BrandScreenshotParams::ColorScheme }

      # @!attribute country
      #   Fetch the target page through a residential proxy in this country (ISO 3166-1
      #   alpha-2).
      #
      #   @return [Symbol, BrandDev::Models::BrandScreenshotParams::Country, nil]
      optional :country, enum: -> { BrandDev::BrandScreenshotParams::Country }

      # @!attribute direct_url
      #   A specific URL to screenshot directly, bypassing domain resolution (e.g.,
      #   'https://example.com/pricing'). When provided, the screenshot is taken of this
      #   exact URL. You must provide either 'domain' or 'directUrl', but not both.
      #
      #   @return [String, nil]
      optional :direct_url, String

      # @!attribute domain
      #   Domain name to take screenshot of (e.g., 'example.com', 'google.com'). The
      #   domain will be automatically normalized and validated. You must provide either
      #   'domain' or 'directUrl', but not both.
      #
      #   @return [String, nil]
      optional :domain, String

      # @!attribute full_screenshot
      #   Optional parameter to determine screenshot type. If 'true', takes a full page
      #   screenshot capturing all content. If 'false' or not provided, takes a viewport
      #   screenshot (standard browser view).
      #
      #   @return [Symbol, BrandDev::Models::BrandScreenshotParams::FullScreenshot, nil]
      optional :full_screenshot, enum: -> { BrandDev::BrandScreenshotParams::FullScreenshot }

      # @!attribute handle_cookie_popup
      #   Optional parameter to control cookie/consent popup handling. If 'true', we
      #   dismiss cookie banner before capture. If 'false' or not provided, captures the
      #   page without that step.
      #
      #   @return [Boolean, nil]
      optional :handle_cookie_popup, BrandDev::Internal::Type::Boolean

      # @!attribute max_age_ms
      #   Return a cached screenshot if a prior screenshot for the same parameters exists
      #   and is younger than this many milliseconds. Defaults to 1 day (86400000 ms) when
      #   omitted. Max is 30 days (2592000000 ms). Set to 0 to always capture fresh.
      #
      #   @return [Integer, nil]
      optional :max_age_ms, Integer, nil?: true

      # @!attribute page
      #   Optional parameter to specify which page type to screenshot. If provided, the
      #   system will scrape the domain's links and use heuristics to find the most
      #   appropriate URL for the specified page type (30 supported languages). If not
      #   provided, screenshots the main domain landing page. Only applicable when using
      #   'domain', not 'directUrl'.
      #
      #   @return [Symbol, BrandDev::Models::BrandScreenshotParams::Page, nil]
      optional :page, enum: -> { BrandDev::BrandScreenshotParams::Page }

      # @!attribute scroll_offset
      #   Optional vertical scroll offset in pixels for capturing a long page in
      #   viewport-sized chunks. When provided, the full page is captured once and the
      #   returned image is the viewport-sized slice that begins at this Y offset (e.g.
      #   request scrollOffset=0, then 1080, then 2160 to walk a 1920x1080 landing page
      #   top to bottom). The final slice may be shorter than the viewport height. Takes
      #   precedence over fullScreenshot. Max: 100000.
      #
      #   @return [Integer, nil]
      optional :scroll_offset, Integer, nil?: true

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

      # @!attribute viewport
      #   Optional browser viewport dimensions for the screenshot. Defaults to 1920x1080.
      #
      #   @return [BrandDev::Models::BrandScreenshotParams::Viewport, nil]
      optional :viewport, -> { BrandDev::BrandScreenshotParams::Viewport }

      # @!attribute wait_for_ms
      #   Optional browser wait time in milliseconds after initial page load before taking
      #   the screenshot. Min: 0. Max: 30000 (30 seconds). Defaults to 3000 ms when
      #   omitted.
      #
      #   @return [Integer, nil]
      optional :wait_for_ms, Integer, nil?: true

      # @!attribute zdr
      #   Set to enabled to bypass shared caches and omit request and response content
      #   from retained usage logs. Requires zero data retention to be enabled for your
      #   organization (contact support@context.dev), otherwise the request fails with
      #   ZDR_NOT_ENABLED. Successful ZDR responses include X-Context-ZDR: true.
      #
      #   @return [Symbol, BrandDev::Models::BrandScreenshotParams::Zdr, nil]
      optional :zdr, enum: -> { BrandDev::BrandScreenshotParams::Zdr }

      # @!method initialize(color_scheme: nil, country: nil, direct_url: nil, domain: nil, full_screenshot: nil, handle_cookie_popup: nil, max_age_ms: nil, page: nil, scroll_offset: nil, tags: nil, timeout_ms: nil, viewport: nil, wait_for_ms: nil, zdr: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {BrandDev::Models::BrandScreenshotParams} for more details.
      #
      #   @param color_scheme [Symbol, BrandDev::Models::BrandScreenshotParams::ColorScheme] Optional parameter to choose the site's visual theme in the screenshot. Use 'lig
      #
      #   @param country [Symbol, BrandDev::Models::BrandScreenshotParams::Country] Fetch the target page through a residential proxy in this country (ISO 3166-1 al
      #
      #   @param direct_url [String] A specific URL to screenshot directly, bypassing domain resolution (e.g., 'https
      #
      #   @param domain [String] Domain name to take screenshot of (e.g., 'example.com', 'google.com'). The domai
      #
      #   @param full_screenshot [Symbol, BrandDev::Models::BrandScreenshotParams::FullScreenshot] Optional parameter to determine screenshot type. If 'true', takes a full page sc
      #
      #   @param handle_cookie_popup [Boolean] Optional parameter to control cookie/consent popup handling. If 'true', we dismi
      #
      #   @param max_age_ms [Integer, nil] Return a cached screenshot if a prior screenshot for the same parameters exists
      #
      #   @param page [Symbol, BrandDev::Models::BrandScreenshotParams::Page] Optional parameter to specify which page type to screenshot. If provided, the sy
      #
      #   @param scroll_offset [Integer, nil] Optional vertical scroll offset in pixels for capturing a long page in viewport-
      #
      #   @param tags [Array<String>] Optional comma-separated caller-defined tags for tracking this request. Tags are
      #
      #   @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      #   @param viewport [BrandDev::Models::BrandScreenshotParams::Viewport] Optional browser viewport dimensions for the screenshot. Defaults to 1920x1080.
      #
      #   @param wait_for_ms [Integer, nil] Optional browser wait time in milliseconds after initial page load before taking
      #
      #   @param zdr [Symbol, BrandDev::Models::BrandScreenshotParams::Zdr] Set to enabled to bypass shared caches and omit request and response content fro
      #
      #   @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}]

      # Optional parameter to choose the site's visual theme in the screenshot. Use
      # 'light' or 'dark' when the site offers both appearances.
      module ColorScheme
        extend BrandDev::Internal::Type::Enum

        LIGHT = :light
        DARK = :dark

        # @!method self.values
        #   @return [Array<Symbol>]
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

      # Optional parameter to determine screenshot type. If 'true', takes a full page
      # screenshot capturing all content. If 'false' or not provided, takes a viewport
      # screenshot (standard browser view).
      module FullScreenshot
        extend BrandDev::Internal::Type::Enum

        TRUE = :true
        FALSE = :false

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Optional parameter to specify which page type to screenshot. If provided, the
      # system will scrape the domain's links and use heuristics to find the most
      # appropriate URL for the specified page type (30 supported languages). If not
      # provided, screenshots the main domain landing page. Only applicable when using
      # 'domain', not 'directUrl'.
      module Page
        extend BrandDev::Internal::Type::Enum

        LOGIN = :login
        SIGNUP = :signup
        BLOG = :blog
        CAREERS = :careers
        PRICING = :pricing
        TERMS = :terms
        PRIVACY = :privacy
        CONTACT = :contact

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Viewport < BrandDev::Internal::Type::BaseModel
        # @!attribute height
        #   Viewport height in pixels.
        #
        #   @return [Integer, nil]
        optional :height, Integer

        # @!attribute width
        #   Viewport width in pixels.
        #
        #   @return [Integer, nil]
        optional :width, Integer

        # @!method initialize(height: nil, width: nil)
        #   Optional browser viewport dimensions for the screenshot. Defaults to 1920x1080.
        #
        #   @param height [Integer] Viewport height in pixels.
        #
        #   @param width [Integer] Viewport width in pixels.
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
