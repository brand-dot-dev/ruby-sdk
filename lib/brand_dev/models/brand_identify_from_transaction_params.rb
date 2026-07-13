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
      #   Two-letter ISO 3166-1 alpha-2 country code (GL parameter) used to localize
      #   search.
      #
      #   @return [Symbol, BrandDev::Models::BrandIdentifyFromTransactionParams::CountryGl, nil]
      optional :country_gl, enum: -> { BrandDev::BrandIdentifyFromTransactionParams::CountryGl }

      # @!attribute force_language
      #   Language to force for the retrieved brand data.
      #
      #   @return [Symbol, BrandDev::Models::BrandIdentifyFromTransactionParams::ForceLanguage, nil]
      optional :force_language,
               enum: -> { BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage },
               nil?: true

      # @!attribute high_confidence_only
      #   When set to true, the API will perform an additional verification steps to
      #   ensure the identified brand matches the transaction with high confidence.
      #
      #   @return [Boolean, Symbol, BrandDev::Models::BrandIdentifyFromTransactionParams::HighConfidenceOnly, nil]
      optional :high_confidence_only,
               union: -> { BrandDev::BrandIdentifyFromTransactionParams::HighConfidenceOnly }

      # @!attribute max_speed
      #   Optional parameter to optimize the API call for maximum speed. When set to true,
      #   the API will skip time-consuming operations for faster response at the cost of
      #   less comprehensive data.
      #
      #   @return [Boolean, Symbol, BrandDev::Models::BrandIdentifyFromTransactionParams::MaxSpeed, nil]
      optional :max_speed, union: -> { BrandDev::BrandIdentifyFromTransactionParams::MaxSpeed }

      # @!attribute mcc
      #   Optional Merchant Category Code (MCC) to help identify the business
      #   category/industry.
      #
      #   @return [String, Float, nil]
      optional :mcc, union: -> { BrandDev::BrandIdentifyFromTransactionParams::Mcc }

      # @!attribute phone
      #   Optional phone number from the transaction to help verify brand match.
      #
      #   @return [String, Float, nil]
      optional :phone, union: -> { BrandDev::BrandIdentifyFromTransactionParams::Phone }

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

      # @!method initialize(transaction_info:, city: nil, country_gl: nil, force_language: nil, high_confidence_only: nil, max_speed: nil, mcc: nil, phone: nil, tags: nil, timeout_ms: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {BrandDev::Models::BrandIdentifyFromTransactionParams} for more details.
      #
      #   @param transaction_info [String] Transaction information to identify the brand
      #
      #   @param city [String] Optional city name to prioritize when searching for the brand.
      #
      #   @param country_gl [Symbol, BrandDev::Models::BrandIdentifyFromTransactionParams::CountryGl] Two-letter ISO 3166-1 alpha-2 country code (GL parameter) used to localize searc
      #
      #   @param force_language [Symbol, BrandDev::Models::BrandIdentifyFromTransactionParams::ForceLanguage, nil] Language to force for the retrieved brand data.
      #
      #   @param high_confidence_only [Boolean, Symbol, BrandDev::Models::BrandIdentifyFromTransactionParams::HighConfidenceOnly] When set to true, the API will perform an additional verification steps to ensur
      #
      #   @param max_speed [Boolean, Symbol, BrandDev::Models::BrandIdentifyFromTransactionParams::MaxSpeed] Optional parameter to optimize the API call for maximum speed. When set to true,
      #
      #   @param mcc [String, Float] Optional Merchant Category Code (MCC) to help identify the business category/ind
      #
      #   @param phone [String, Float] Optional phone number from the transaction to help verify brand match.
      #
      #   @param tags [Array<String>] Optional comma-separated caller-defined tags for tracking this request. Tags are
      #
      #   @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      #   @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}]

      # Two-letter ISO 3166-1 alpha-2 country code (GL parameter) used to localize
      # search.
      module CountryGl
        extend BrandDev::Internal::Type::Enum

        AF = :af
        AL = :al
        DZ = :dz
        AS = :as
        AD = :ad
        AO = :ao
        AI = :ai
        AQ = :aq
        AG = :ag
        AR = :ar
        AM = :am
        AW = :aw
        AU = :au
        AT = :at
        AZ = :az
        BS = :bs
        BH = :bh
        BD = :bd
        BB = :bb
        BY = :by
        BE = :be
        BZ = :bz
        BJ = :bj
        BM = :bm
        BT = :bt
        BO = :bo
        BA = :ba
        BW = :bw
        BV = :bv
        BR = :br
        IO = :io
        BN = :bn
        BG = :bg
        BF = :bf
        BI = :bi
        KH = :kh
        CM = :cm
        CA = :ca
        CV = :cv
        KY = :ky
        CF = :cf
        TD = :td
        CL = :cl
        CN = :cn
        CX = :cx
        CC = :cc
        CO = :co
        KM = :km
        CG = :cg
        CD = :cd
        CK = :ck
        CR = :cr
        CI = :ci
        HR = :hr
        CU = :cu
        CY = :cy
        CZ = :cz
        DK = :dk
        DJ = :dj
        DM = :dm
        DO = :do
        EC = :ec
        EG = :eg
        SV = :sv
        GQ = :gq
        ER = :er
        EE = :ee
        ET = :et
        FK = :fk
        FO = :fo
        FJ = :fj
        FI = :fi
        FR = :fr
        GF = :gf
        PF = :pf
        TF = :tf
        GA = :ga
        GM = :gm
        GE = :ge
        DE = :de
        GH = :gh
        GI = :gi
        GR = :gr
        GL = :gl
        GD = :gd
        GP = :gp
        GU = :gu
        GT = :gt
        GN = :gn
        GW = :gw
        GY = :gy
        HT = :ht
        HM = :hm
        VA = :va
        HN = :hn
        HK = :hk
        HU = :hu
        IS = :is
        IN = :in
        ID = :id
        IR = :ir
        IQ = :iq
        IE = :ie
        IL = :il
        IT = :it
        JM = :jm
        JP = :jp
        JO = :jo
        KZ = :kz
        KE = :ke
        KI = :ki
        KP = :kp
        KR = :kr
        KW = :kw
        KG = :kg
        LA = :la
        LV = :lv
        LB = :lb
        LS = :ls
        LR = :lr
        LY = :ly
        LI = :li
        LT = :lt
        LU = :lu
        MO = :mo
        MK = :mk
        MG = :mg
        MW = :mw
        MY = :my
        MV = :mv
        ML = :ml
        MT = :mt
        MH = :mh
        MQ = :mq
        MR = :mr
        MU = :mu
        YT = :yt
        MX = :mx
        FM = :fm
        MD = :md
        MC = :mc
        MN = :mn
        MS = :ms
        MA = :ma
        MZ = :mz
        MM = :mm
        NA = :na
        NR = :nr
        NP = :np
        NL = :nl
        AN = :an
        NC = :nc
        NZ = :nz
        NI = :ni
        NE = :ne
        NG = :ng
        NU = :nu
        NF = :nf
        MP = :mp
        NO = :no
        OM = :om
        PK = :pk
        PW = :pw
        PS = :ps
        PA = :pa
        PG = :pg
        PY = :py
        PE = :pe
        PH = :ph
        PN = :pn
        PL = :pl
        PT = :pt
        PR = :pr
        QA = :qa
        RE = :re
        RO = :ro
        RU = :ru
        RW = :rw
        SH = :sh
        KN = :kn
        LC = :lc
        PM = :pm
        VC = :vc
        WS = :ws
        SM = :sm
        ST = :st
        SA = :sa
        SN = :sn
        RS = :rs
        SC = :sc
        SL = :sl
        SG = :sg
        SK = :sk
        SI = :si
        SB = :sb
        SO = :so
        ZA = :za
        GS = :gs
        ES = :es
        LK = :lk
        SD = :sd
        SR = :sr
        SJ = :sj
        SZ = :sz
        SE = :se
        CH = :ch
        SY = :sy
        TW = :tw
        TJ = :tj
        TZ = :tz
        TH = :th
        TL = :tl
        TG = :tg
        TK = :tk
        TO = :to
        TT = :tt
        TN = :tn
        TR = :tr
        TM = :tm
        TC = :tc
        TV = :tv
        UG = :ug
        UA = :ua
        AE = :ae
        GB = :gb
        US = :us
        UM = :um
        UY = :uy
        UZ = :uz
        VU = :vu
        VE = :ve
        VN = :vn
        VG = :vg
        VI = :vi
        WF = :wf
        EH = :eh
        YE = :ye
        ZM = :zm
        ZW = :zw

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Language to force for the retrieved brand data.
      module ForceLanguage
        extend BrandDev::Internal::Type::Enum

        AFRIKAANS = :afrikaans
        ALBANIAN = :albanian
        AMHARIC = :amharic
        ARABIC = :arabic
        ARMENIAN = :armenian
        ASSAMESE = :assamese
        AYMARA = :aymara
        AZERI = :azeri
        BASQUE = :basque
        BELARUSIAN = :belarusian
        BENGALI = :bengali
        BOSNIAN = :bosnian
        BULGARIAN = :bulgarian
        BURMESE = :burmese
        CANTONESE = :cantonese
        CATALAN = :catalan
        CEBUANO = :cebuano
        CHINESE = :chinese
        CORSICAN = :corsican
        CROATIAN = :croatian
        CZECH = :czech
        DANISH = :danish
        DUTCH = :dutch
        ENGLISH = :english
        ESPERANTO = :esperanto
        ESTONIAN = :estonian
        FARSI = :farsi
        FIJIAN = :fijian
        FINNISH = :finnish
        FRENCH = :french
        GALICIAN = :galician
        GEORGIAN = :georgian
        GERMAN = :german
        GREEK = :greek
        GUARANI = :guarani
        GUJARATI = :gujarati
        HAITIAN_CREOLE = :"haitian-creole"
        HAUSA = :hausa
        HAWAIIAN = :hawaiian
        HEBREW = :hebrew
        HINDI = :hindi
        HMONG = :hmong
        HUNGARIAN = :hungarian
        ICELANDIC = :icelandic
        IGBO = :igbo
        INDONESIAN = :indonesian
        IRISH = :irish
        ITALIAN = :italian
        JAPANESE = :japanese
        JAVANESE = :javanese
        KANNADA = :kannada
        KAZAKH = :kazakh
        KHMER = :khmer
        KINYARWANDA = :kinyarwanda
        KOREAN = :korean
        KURDISH = :kurdish
        KYRGYZ = :kyrgyz
        LAO = :lao
        LATIN = :latin
        LATVIAN = :latvian
        LINGALA = :lingala
        LITHUANIAN = :lithuanian
        LUXEMBOURGISH = :luxembourgish
        MACEDONIAN = :macedonian
        MALAGASY = :malagasy
        MALAY = :malay
        MALAYALAM = :malayalam
        MALTESE = :maltese
        MAORI = :maori
        MARATHI = :marathi
        MONGOLIAN = :mongolian
        NEPALI = :nepali
        NORWEGIAN = :norwegian
        ODIA = :odia
        OROMO = :oromo
        PASHTO = :pashto
        PIDGIN = :pidgin
        POLISH = :polish
        PORTUGUESE = :portuguese
        PUNJABI = :punjabi
        QUECHUA = :quechua
        ROMANIAN = :romanian
        RUSSIAN = :russian
        SAMOAN = :samoan
        SCOTTISH_GAELIC = :"scottish-gaelic"
        SERBIAN = :serbian
        SESOTHO = :sesotho
        SHONA = :shona
        SINDHI = :sindhi
        SINHALA = :sinhala
        SLOVAK = :slovak
        SLOVENE = :slovene
        SOMALI = :somali
        SPANISH = :spanish
        SUNDANESE = :sundanese
        SWAHILI = :swahili
        SWEDISH = :swedish
        TAGALOG = :tagalog
        TAJIK = :tajik
        TAMIL = :tamil
        TATAR = :tatar
        TELUGU = :telugu
        THAI = :thai
        TIBETAN = :tibetan
        TIGRINYA = :tigrinya
        TONGAN = :tongan
        TSWANA = :tswana
        TURKISH = :turkish
        TURKMEN = :turkmen
        UKRAINIAN = :ukrainian
        URDU = :urdu
        UYGHUR = :uyghur
        UZBEK = :uzbek
        VIETNAMESE = :vietnamese
        WELSH = :welsh
        WOLOF = :wolof
        XHOSA = :xhosa
        YIDDISH = :yiddish
        YORUBA = :yoruba
        ZULU = :zulu

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # When set to true, the API will perform an additional verification steps to
      # ensure the identified brand matches the transaction with high confidence.
      module HighConfidenceOnly
        extend BrandDev::Internal::Type::Union

        variant BrandDev::Internal::Type::Boolean

        variant const: -> { BrandDev::Models::BrandIdentifyFromTransactionParams::HighConfidenceOnly::TRUE }

        variant const: -> { BrandDev::Models::BrandIdentifyFromTransactionParams::HighConfidenceOnly::FALSE }

        # @!method self.variants
        #   @return [Array(Boolean, Symbol)]

        define_sorbet_constant!(:Variants) do
          T.type_alias { T.any(T::Boolean, BrandDev::BrandIdentifyFromTransactionParams::HighConfidenceOnly::TaggedSymbol) }
        end

        # @!group

        TRUE = :true
        FALSE = :false

        # @!endgroup
      end

      # Optional parameter to optimize the API call for maximum speed. When set to true,
      # the API will skip time-consuming operations for faster response at the cost of
      # less comprehensive data.
      module MaxSpeed
        extend BrandDev::Internal::Type::Union

        variant BrandDev::Internal::Type::Boolean

        variant const: -> { BrandDev::Models::BrandIdentifyFromTransactionParams::MaxSpeed::TRUE }

        variant const: -> { BrandDev::Models::BrandIdentifyFromTransactionParams::MaxSpeed::FALSE }

        # @!method self.variants
        #   @return [Array(Boolean, Symbol)]

        define_sorbet_constant!(:Variants) do
          T.type_alias { T.any(T::Boolean, BrandDev::BrandIdentifyFromTransactionParams::MaxSpeed::TaggedSymbol) }
        end

        # @!group

        TRUE = :true
        FALSE = :false

        # @!endgroup
      end

      # Optional Merchant Category Code (MCC) to help identify the business
      # category/industry.
      module Mcc
        extend BrandDev::Internal::Type::Union

        variant String

        variant Float

        # @!method self.variants
        #   @return [Array(String, Float)]
      end

      # Optional phone number from the transaction to help verify brand match.
      module Phone
        extend BrandDev::Internal::Type::Union

        variant String

        variant Float

        # @!method self.variants
        #   @return [Array(String, Float)]
      end
    end
  end
end
