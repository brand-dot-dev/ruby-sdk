# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#retrieve_by_ticker
    class BrandRetrieveByTickerParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      # @!attribute ticker
      #   Stock ticker symbol to retrieve brand data for (e.g., 'AAPL', 'GOOGL', 'BRK.A').
      #   Must be 1-15 characters, letters/numbers/dots only.
      #
      #   @return [String]
      required :ticker, String

      # @!attribute force_language
      #   Optional parameter to force the language of the retrieved brand data.
      #
      #   @return [Symbol, BrandDev::Models::BrandRetrieveByTickerParams::ForceLanguage, nil]
      optional :force_language, enum: -> { BrandDev::BrandRetrieveByTickerParams::ForceLanguage }

      # @!attribute max_speed
      #   Optional parameter to optimize the API call for maximum speed. When set to true,
      #   the API will skip time-consuming operations for faster response at the cost of
      #   less comprehensive data.
      #
      #   @return [Boolean, nil]
      optional :max_speed, BrandDev::Internal::Type::Boolean

      # @!attribute ticker_exchange
      #   Optional stock exchange for the ticker. Defaults to NASDAQ if not specified.
      #
      #   @return [Symbol, BrandDev::Models::BrandRetrieveByTickerParams::TickerExchange, nil]
      optional :ticker_exchange, enum: -> { BrandDev::BrandRetrieveByTickerParams::TickerExchange }

      # @!attribute timeout_ms
      #   Optional timeout in milliseconds for the request. If the request takes longer
      #   than this value, it will be aborted with a 408 status code. Maximum allowed
      #   value is 300000ms (5 minutes).
      #
      #   @return [Integer, nil]
      optional :timeout_ms, Integer

      # @!method initialize(ticker:, force_language: nil, max_speed: nil, ticker_exchange: nil, timeout_ms: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {BrandDev::Models::BrandRetrieveByTickerParams} for more details.
      #
      #   @param ticker [String] Stock ticker symbol to retrieve brand data for (e.g., 'AAPL', 'GOOGL', 'BRK.A').
      #
      #   @param force_language [Symbol, BrandDev::Models::BrandRetrieveByTickerParams::ForceLanguage] Optional parameter to force the language of the retrieved brand data.
      #
      #   @param max_speed [Boolean] Optional parameter to optimize the API call for maximum speed. When set to true,
      #
      #   @param ticker_exchange [Symbol, BrandDev::Models::BrandRetrieveByTickerParams::TickerExchange] Optional stock exchange for the ticker. Defaults to NASDAQ if not specified.
      #
      #   @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      #   @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}]

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

      # Optional stock exchange for the ticker. Defaults to NASDAQ if not specified.
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
