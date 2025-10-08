# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#retrieve
    class BrandRetrieveParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      # @!attribute domain
      #   Domain name to retrieve brand data for (e.g., 'example.com', 'google.com').
      #   Cannot be used with name or ticker parameters.
      #
      #   @return [String, nil]
      optional :domain, String

      # @!attribute force_language
      #   Optional parameter to force the language of the retrieved brand data. Works with
      #   all three lookup methods.
      #
      #   @return [Symbol, BrandDev::Models::BrandRetrieveParams::ForceLanguage, nil]
      optional :force_language, enum: -> { BrandDev::BrandRetrieveParams::ForceLanguage }

      # @!attribute max_speed
      #   Optional parameter to optimize the API call for maximum speed. When set to true,
      #   the API will skip time-consuming operations for faster response at the cost of
      #   less comprehensive data. Works with all three lookup methods.
      #
      #   @return [Boolean, nil]
      optional :max_speed, BrandDev::Internal::Type::Boolean

      # @!attribute name
      #   Company name to retrieve brand data for (e.g., 'Apple Inc', 'Microsoft
      #   Corporation'). Must be 3-30 characters. Cannot be used with domain or ticker
      #   parameters.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute ticker
      #   Stock ticker symbol to retrieve brand data for (e.g., 'AAPL', 'GOOGL', 'BRK.A').
      #   Must be 1-15 characters, letters/numbers/dots only. Cannot be used with domain
      #   or name parameters.
      #
      #   @return [String, nil]
      optional :ticker, String

      # @!attribute ticker_exchange
      #   Optional stock exchange for the ticker. Only used when ticker parameter is
      #   provided. Defaults to assume ticker is American if not specified.
      #
      #   @return [Symbol, BrandDev::Models::BrandRetrieveParams::TickerExchange, nil]
      optional :ticker_exchange, enum: -> { BrandDev::BrandRetrieveParams::TickerExchange }

      # @!attribute timeout_ms
      #   Optional timeout in milliseconds for the request. If the request takes longer
      #   than this value, it will be aborted with a 408 status code. Maximum allowed
      #   value is 300000ms (5 minutes).
      #
      #   @return [Integer, nil]
      optional :timeout_ms, Integer

      # @!method initialize(domain: nil, force_language: nil, max_speed: nil, name: nil, ticker: nil, ticker_exchange: nil, timeout_ms: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {BrandDev::Models::BrandRetrieveParams} for more details.
      #
      #   @param domain [String] Domain name to retrieve brand data for (e.g., 'example.com', 'google.com'). Cann
      #
      #   @param force_language [Symbol, BrandDev::Models::BrandRetrieveParams::ForceLanguage] Optional parameter to force the language of the retrieved brand data. Works with
      #
      #   @param max_speed [Boolean] Optional parameter to optimize the API call for maximum speed. When set to true,
      #
      #   @param name [String] Company name to retrieve brand data for (e.g., 'Apple Inc', 'Microsoft Corporati
      #
      #   @param ticker [String] Stock ticker symbol to retrieve brand data for (e.g., 'AAPL', 'GOOGL', 'BRK.A').
      #
      #   @param ticker_exchange [Symbol, BrandDev::Models::BrandRetrieveParams::TickerExchange] Optional stock exchange for the ticker. Only used when ticker parameter is provi
      #
      #   @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      #   @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}]

      # Optional parameter to force the language of the retrieved brand data. Works with
      # all three lookup methods.
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

      # Optional stock exchange for the ticker. Only used when ticker parameter is
      # provided. Defaults to assume ticker is American if not specified.
      module TickerExchange
        extend BrandDev::Internal::Type::Enum

        AMEX = :AMEX
        AMS = :AMS
        AQS = :AQS
        ASX = :ASX
        ATH = :ATH
        BER = :BER
        BME = :BME
        BRU = :BRU
        BSE = :BSE
        BUD = :BUD
        BUE = :BUE
        BVC = :BVC
        CBOE = :CBOE
        CNQ = :CNQ
        CPH = :CPH
        DFM = :DFM
        DOH = :DOH
        DUB = :DUB
        DUS = :DUS
        DXE = :DXE
        EGX = :EGX
        FSX = :FSX
        HAM = :HAM
        HEL = :HEL
        HKSE = :HKSE
        HOSE = :HOSE
        ICE = :ICE
        IOB = :IOB
        IST = :IST
        JKT = :JKT
        JNB = :JNB
        JPX = :JPX
        KLS = :KLS
        KOE = :KOE
        KSC = :KSC
        KUW = :KUW
        LIS = :LIS
        LSE = :LSE
        MCX = :MCX
        MEX = :MEX
        MIL = :MIL
        MUN = :MUN
        NASDAQ = :NASDAQ
        NEO = :NEO
        NSE = :NSE
        NYSE = :NYSE
        NZE = :NZE
        OSL = :OSL
        OTC = :OTC
        PAR = :PAR
        PNK = :PNK
        PRA = :PRA
        RIS = :RIS
        SAO = :SAO
        SAU = :SAU
        SES = :SES
        SET = :SET
        SGO = :SGO
        SHH = :SHH
        SHZ = :SHZ
        SIX = :SIX
        STO = :STO
        STU = :STU
        TAI = :TAI
        TAL = :TAL
        TLV = :TLV
        TSX = :TSX
        TSXV = :TSXV
        TWO = :TWO
        VIE = :VIE
        WSE = :WSE
        XETRA = :XETRA

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
