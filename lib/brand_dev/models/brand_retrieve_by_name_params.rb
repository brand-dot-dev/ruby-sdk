# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#retrieve_by_name
    class BrandRetrieveByNameParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      # @!attribute name
      #   Company name to retrieve brand data for (e.g., 'Apple Inc', 'Microsoft
      #   Corporation'). Must be 3-30 characters.
      #
      #   @return [String]
      required :name, String

      # @!attribute country_gl
      #   Optional country code hint (GL parameter) to specify the country for the company
      #   name.
      #
      #   @return [Symbol, BrandDev::Models::BrandRetrieveByNameParams::CountryGl, nil]
      optional :country_gl, enum: -> { BrandDev::BrandRetrieveByNameParams::CountryGl }

      # @!attribute force_language
      #   Optional parameter to force the language of the retrieved brand data.
      #
      #   @return [Symbol, BrandDev::Models::BrandRetrieveByNameParams::ForceLanguage, nil]
      optional :force_language, enum: -> { BrandDev::BrandRetrieveByNameParams::ForceLanguage }

      # @!attribute max_age_ms
      #   Maximum age in milliseconds for cached brand data before the API performs a hard
      #   refresh. Defaults to 3 months (7776000000 ms). Values below 1 day (86400000 ms)
      #   are clamped to 1 day; values above 1 year (31536000000 ms) are clamped to 1
      #   year.
      #
      #   @return [Integer, nil]
      optional :max_age_ms, Integer

      # @!attribute max_speed
      #   Optional parameter to optimize the API call for maximum speed. When set to true,
      #   the API will skip time-consuming operations for faster response at the cost of
      #   less comprehensive data.
      #
      #   @return [Boolean, nil]
      optional :max_speed, BrandDev::Internal::Type::Boolean

      # @!attribute timeout_ms
      #   Optional timeout in milliseconds for the request. If the request takes longer
      #   than this value, it will be aborted with a 408 status code. Maximum allowed
      #   value is 300000ms (5 minutes).
      #
      #   @return [Integer, nil]
      optional :timeout_ms, Integer

      # @!method initialize(name:, country_gl: nil, force_language: nil, max_age_ms: nil, max_speed: nil, timeout_ms: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {BrandDev::Models::BrandRetrieveByNameParams} for more details.
      #
      #   @param name [String] Company name to retrieve brand data for (e.g., 'Apple Inc', 'Microsoft Corporati
      #
      #   @param country_gl [Symbol, BrandDev::Models::BrandRetrieveByNameParams::CountryGl] Optional country code hint (GL parameter) to specify the country for the company
      #
      #   @param force_language [Symbol, BrandDev::Models::BrandRetrieveByNameParams::ForceLanguage] Optional parameter to force the language of the retrieved brand data.
      #
      #   @param max_age_ms [Integer] Maximum age in milliseconds for cached brand data before the API performs a hard
      #
      #   @param max_speed [Boolean] Optional parameter to optimize the API call for maximum speed. When set to true,
      #
      #   @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      #   @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}]

      # Optional country code hint (GL parameter) to specify the country for the company
      # name.
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
    end
  end
end
