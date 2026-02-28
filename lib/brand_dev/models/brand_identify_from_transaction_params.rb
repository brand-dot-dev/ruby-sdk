# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#identify_from_transaction
    class BrandIdentifyFromTransactionParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      # @!attribute transaction_info
      #   Transaction information to identify the brand
      #
      #   @return [String]
      required :transaction_info, String

      # @!attribute city
      #   Optional city name to prioritize when searching for the brand.
      #
      #   @return [String, nil]
      optional :city, String

      # @!attribute country_gl
      #   Optional country code (GL parameter) to specify the country. This affects the
      #   geographic location used for search queries.
      #
      #   @return [Symbol, BrandDev::Models::BrandIdentifyFromTransactionParams::CountryGl, nil]
      optional :country_gl, enum: -> { BrandDev::BrandIdentifyFromTransactionParams::CountryGl }

      # @!attribute force_language
      #   Optional parameter to force the language of the retrieved brand data.
      #
      #   @return [Symbol, BrandDev::Models::BrandIdentifyFromTransactionParams::ForceLanguage, nil]
      optional :force_language, enum: -> { BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage }

      # @!attribute high_confidence_only
      #   When set to true, the API will perform an additional verification steps to
      #   ensure the identified brand matches the transaction with high confidence.
      #   Defaults to false.
      #
      #   @return [Boolean, nil]
      optional :high_confidence_only, BrandDev::Internal::Type::Boolean

      # @!attribute max_speed
      #   Optional parameter to optimize the API call for maximum speed. When set to true,
      #   the API will skip time-consuming operations for faster response at the cost of
      #   less comprehensive data.
      #
      #   @return [Boolean, nil]
      optional :max_speed, BrandDev::Internal::Type::Boolean

      # @!attribute mcc
      #   Optional Merchant Category Code (MCC) to help identify the business
      #   category/industry.
      #
      #   @return [String, nil]
      optional :mcc, String

      # @!attribute phone
      #   Optional phone number from the transaction to help verify brand match.
      #
      #   @return [Float, nil]
      optional :phone, Float

      # @!attribute timeout_ms
      #   Optional timeout in milliseconds for the request. If the request takes longer
      #   than this value, it will be aborted with a 408 status code. Maximum allowed
      #   value is 300000ms (5 minutes).
      #
      #   @return [Integer, nil]
      optional :timeout_ms, Integer

      # @!method initialize(transaction_info:, city: nil, country_gl: nil, force_language: nil, high_confidence_only: nil, max_speed: nil, mcc: nil, phone: nil, timeout_ms: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {BrandDev::Models::BrandIdentifyFromTransactionParams} for more details.
      #
      #   @param transaction_info [String] Transaction information to identify the brand
      #
      #   @param city [String] Optional city name to prioritize when searching for the brand.
      #
      #   @param country_gl [Symbol, BrandDev::Models::BrandIdentifyFromTransactionParams::CountryGl] Optional country code (GL parameter) to specify the country. This affects the ge
      #
      #   @param force_language [Symbol, BrandDev::Models::BrandIdentifyFromTransactionParams::ForceLanguage] Optional parameter to force the language of the retrieved brand data.
      #
      #   @param high_confidence_only [Boolean] When set to true, the API will perform an additional verification steps to ensur
      #
      #   @param max_speed [Boolean] Optional parameter to optimize the API call for maximum speed. When set to true,
      #
      #   @param mcc [String] Optional Merchant Category Code (MCC) to help identify the business category/ind
      #
      #   @param phone [Float] Optional phone number from the transaction to help verify brand match.
      #
      #   @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      #   @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}]

      # Optional country code (GL parameter) to specify the country. This affects the
      # geographic location used for search queries.
      module CountryGl
        extend BrandDev::Internal::Type::Enum

        AD = :ad
        AE = :ae
        AF = :af
        AG = :ag
        AI = :ai
        AL = :al
        AM = :am
        AN = :an
        AO = :ao
        AQ = :aq
        AR = :ar
        AS = :as
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
        BR = :br
        BS = :bs
        BT = :bt
        BV = :bv
        BW = :bw
        BY = :by
        BZ = :bz
        CA = :ca
        CC = :cc
        CD = :cd
        CF = :cf
        CG = :cg
        CH = :ch
        CI = :ci
        CK = :ck
        CL = :cl
        CM = :cm
        CN = :cn
        CO = :co
        CR = :cr
        CU = :cu
        CV = :cv
        CX = :cx
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
        EH = :eh
        ER = :er
        ES = :es
        ET = :et
        FI = :fi
        FJ = :fj
        FK = :fk
        FM = :fm
        FO = :fo
        FR = :fr
        GA = :ga
        GB = :gb
        GD = :gd
        GE = :ge
        GF = :gf
        GH = :gh
        GI = :gi
        GL = :gl
        GM = :gm
        GN = :gn
        GP = :gp
        GQ = :gq
        GR = :gr
        GS = :gs
        GT = :gt
        GU = :gu
        GW = :gw
        GY = :gy
        HK = :hk
        HM = :hm
        HN = :hn
        HR = :hr
        HT = :ht
        HU = :hu
        ID = :id
        IE = :ie
        IL = :il
        IN = :in
        IO = :io
        IQ = :iq
        IR = :ir
        IS = :is
        IT = :it
        JM = :jm
        JO = :jo
        JP = :jp
        KE = :ke
        KG = :kg
        KH = :kh
        KI = :ki
        KM = :km
        KN = :kn
        KP = :kp
        KR = :kr
        KW = :kw
        KY = :ky
        KZ = :kz
        LA = :la
        LB = :lb
        LC = :lc
        LI = :li
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
        MG = :mg
        MH = :mh
        MK = :mk
        ML = :ml
        MM = :mm
        MN = :mn
        MO = :mo
        MP = :mp
        MQ = :mq
        MR = :mr
        MS = :ms
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
        NF = :nf
        NG = :ng
        NI = :ni
        NL = :nl
        NO = :no
        NP = :np
        NR = :nr
        NU = :nu
        NZ = :nz
        OM = :om
        PA = :pa
        PE = :pe
        PF = :pf
        PG = :pg
        PH = :ph
        PK = :pk
        PL = :pl
        PM = :pm
        PN = :pn
        PR = :pr
        PS = :ps
        PT = :pt
        PW = :pw
        PY = :py
        QA = :qa
        RE = :re
        RO = :ro
        RS = :rs
        RU = :ru
        RW = :rw
        SA = :sa
        SB = :sb
        SC = :sc
        SD = :sd
        SE = :se
        SG = :sg
        SH = :sh
        SI = :si
        SJ = :sj
        SK = :sk
        SL = :sl
        SM = :sm
        SN = :sn
        SO = :so
        SR = :sr
        ST = :st
        SV = :sv
        SY = :sy
        SZ = :sz
        TC = :tc
        TD = :td
        TF = :tf
        TG = :tg
        TH = :th
        TJ = :tj
        TK = :tk
        TL = :tl
        TM = :tm
        TN = :tn
        TO = :to
        TR = :tr
        TT = :tt
        TV = :tv
        TW = :tw
        TZ = :tz
        UA = :ua
        UG = :ug
        UM = :um
        US = :us
        UY = :uy
        UZ = :uz
        VA = :va
        VC = :vc
        VE = :ve
        VG = :vg
        VI = :vi
        VN = :vn
        VU = :vu
        WF = :wf
        WS = :ws
        YE = :ye
        YT = :yt
        ZA = :za
        ZM = :zm
        ZW = :zw

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Optional parameter to force the language of the retrieved brand data.
      module ForceLanguage
        extend BrandDev::Internal::Type::Enum

        ALBANIAN = :albanian
        ARABIC = :arabic
        AZERI = :azeri
        BENGALI = :bengali
        BULGARIAN = :bulgarian
        CEBUANO = :cebuano
        CROATIAN = :croatian
        CZECH = :czech
        DANISH = :danish
        DUTCH = :dutch
        ENGLISH = :english
        ESTONIAN = :estonian
        FARSI = :farsi
        FINNISH = :finnish
        FRENCH = :french
        GERMAN = :german
        HAUSA = :hausa
        HAWAIIAN = :hawaiian
        HINDI = :hindi
        HUNGARIAN = :hungarian
        ICELANDIC = :icelandic
        INDONESIAN = :indonesian
        ITALIAN = :italian
        KAZAKH = :kazakh
        KYRGYZ = :kyrgyz
        LATIN = :latin
        LATVIAN = :latvian
        LITHUANIAN = :lithuanian
        MACEDONIAN = :macedonian
        MONGOLIAN = :mongolian
        NEPALI = :nepali
        NORWEGIAN = :norwegian
        PASHTO = :pashto
        PIDGIN = :pidgin
        POLISH = :polish
        PORTUGUESE = :portuguese
        ROMANIAN = :romanian
        RUSSIAN = :russian
        SERBIAN = :serbian
        SLOVAK = :slovak
        SLOVENE = :slovene
        SOMALI = :somali
        SPANISH = :spanish
        SWAHILI = :swahili
        SWEDISH = :swedish
        TAGALOG = :tagalog
        TURKISH = :turkish
        UKRAINIAN = :ukrainian
        URDU = :urdu
        UZBEK = :uzbek
        VIETNAMESE = :vietnamese
        WELSH = :welsh

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
