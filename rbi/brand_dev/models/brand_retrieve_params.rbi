# typed: strong

module BrandDev
  module Models
    class BrandRetrieveParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(BrandDev::BrandRetrieveParams, BrandDev::Internal::AnyHash)
        end

      # Domain name to retrieve brand data for (e.g., 'example.com', 'google.com').
      # Cannot be used with name or ticker parameters.
      sig { returns(T.nilable(String)) }
      attr_reader :domain

      sig { params(domain: String).void }
      attr_writer :domain

      # Optional parameter to force the language of the retrieved brand data. Works with
      # all three lookup methods.
      sig do
        returns(
          T.nilable(BrandDev::BrandRetrieveParams::ForceLanguage::OrSymbol)
        )
      end
      attr_reader :force_language

      sig do
        params(
          force_language: BrandDev::BrandRetrieveParams::ForceLanguage::OrSymbol
        ).void
      end
      attr_writer :force_language

      # Optional parameter to optimize the API call for maximum speed. When set to true,
      # the API will skip time-consuming operations for faster response at the cost of
      # less comprehensive data. Works with all three lookup methods.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :max_speed

      sig { params(max_speed: T::Boolean).void }
      attr_writer :max_speed

      # Company name to retrieve brand data for (e.g., 'Apple Inc', 'Microsoft
      # Corporation'). Must be 3-30 characters. Cannot be used with domain or ticker
      # parameters.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # Stock ticker symbol to retrieve brand data for (e.g., 'AAPL', 'GOOGL', 'BRK.A').
      # Must be 1-15 characters, letters/numbers/dots only. Cannot be used with domain
      # or name parameters.
      sig { returns(T.nilable(String)) }
      attr_reader :ticker

      sig { params(ticker: String).void }
      attr_writer :ticker

      # Optional stock exchange for the ticker. Only used when ticker parameter is
      # provided. Defaults to assume ticker is American if not specified.
      sig do
        returns(
          T.nilable(BrandDev::BrandRetrieveParams::TickerExchange::OrSymbol)
        )
      end
      attr_reader :ticker_exchange

      sig do
        params(
          ticker_exchange:
            BrandDev::BrandRetrieveParams::TickerExchange::OrSymbol
        ).void
      end
      attr_writer :ticker_exchange

      # Optional timeout in milliseconds for the request. If the request takes longer
      # than this value, it will be aborted with a 408 status code. Maximum allowed
      # value is 300000ms (5 minutes).
      sig { returns(T.nilable(Integer)) }
      attr_reader :timeout_ms

      sig { params(timeout_ms: Integer).void }
      attr_writer :timeout_ms

      sig do
        params(
          domain: String,
          force_language:
            BrandDev::BrandRetrieveParams::ForceLanguage::OrSymbol,
          max_speed: T::Boolean,
          name: String,
          ticker: String,
          ticker_exchange:
            BrandDev::BrandRetrieveParams::TickerExchange::OrSymbol,
          timeout_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Domain name to retrieve brand data for (e.g., 'example.com', 'google.com').
        # Cannot be used with name or ticker parameters.
        domain: nil,
        # Optional parameter to force the language of the retrieved brand data. Works with
        # all three lookup methods.
        force_language: nil,
        # Optional parameter to optimize the API call for maximum speed. When set to true,
        # the API will skip time-consuming operations for faster response at the cost of
        # less comprehensive data. Works with all three lookup methods.
        max_speed: nil,
        # Company name to retrieve brand data for (e.g., 'Apple Inc', 'Microsoft
        # Corporation'). Must be 3-30 characters. Cannot be used with domain or ticker
        # parameters.
        name: nil,
        # Stock ticker symbol to retrieve brand data for (e.g., 'AAPL', 'GOOGL', 'BRK.A').
        # Must be 1-15 characters, letters/numbers/dots only. Cannot be used with domain
        # or name parameters.
        ticker: nil,
        # Optional stock exchange for the ticker. Only used when ticker parameter is
        # provided. Defaults to assume ticker is American if not specified.
        ticker_exchange: nil,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            domain: String,
            force_language:
              BrandDev::BrandRetrieveParams::ForceLanguage::OrSymbol,
            max_speed: T::Boolean,
            name: String,
            ticker: String,
            ticker_exchange:
              BrandDev::BrandRetrieveParams::TickerExchange::OrSymbol,
            timeout_ms: Integer,
            request_options: BrandDev::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Optional parameter to force the language of the retrieved brand data. Works with
      # all three lookup methods.
      module ForceLanguage
        extend BrandDev::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, BrandDev::BrandRetrieveParams::ForceLanguage)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALBANIAN =
          T.let(
            :albanian,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        ARABIC =
          T.let(
            :arabic,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        AZERI =
          T.let(
            :azeri,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        BENGALI =
          T.let(
            :bengali,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        BULGARIAN =
          T.let(
            :bulgarian,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        CEBUANO =
          T.let(
            :cebuano,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        CROATIAN =
          T.let(
            :croatian,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        CZECH =
          T.let(
            :czech,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        DANISH =
          T.let(
            :danish,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        DUTCH =
          T.let(
            :dutch,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        ENGLISH =
          T.let(
            :english,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        ESTONIAN =
          T.let(
            :estonian,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        FARSI =
          T.let(
            :farsi,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        FINNISH =
          T.let(
            :finnish,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        FRENCH =
          T.let(
            :french,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        GERMAN =
          T.let(
            :german,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        HAUSA =
          T.let(
            :hausa,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        HAWAIIAN =
          T.let(
            :hawaiian,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        HINDI =
          T.let(
            :hindi,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        HUNGARIAN =
          T.let(
            :hungarian,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        ICELANDIC =
          T.let(
            :icelandic,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        INDONESIAN =
          T.let(
            :indonesian,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        ITALIAN =
          T.let(
            :italian,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        KAZAKH =
          T.let(
            :kazakh,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        KYRGYZ =
          T.let(
            :kyrgyz,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        LATIN =
          T.let(
            :latin,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        LATVIAN =
          T.let(
            :latvian,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        LITHUANIAN =
          T.let(
            :lithuanian,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        MACEDONIAN =
          T.let(
            :macedonian,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        MONGOLIAN =
          T.let(
            :mongolian,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        NEPALI =
          T.let(
            :nepali,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        NORWEGIAN =
          T.let(
            :norwegian,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        PASHTO =
          T.let(
            :pashto,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        PIDGIN =
          T.let(
            :pidgin,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        POLISH =
          T.let(
            :polish,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        PORTUGUESE =
          T.let(
            :portuguese,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        ROMANIAN =
          T.let(
            :romanian,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        RUSSIAN =
          T.let(
            :russian,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        SERBIAN =
          T.let(
            :serbian,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        SLOVAK =
          T.let(
            :slovak,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        SLOVENE =
          T.let(
            :slovene,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        SOMALI =
          T.let(
            :somali,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        SPANISH =
          T.let(
            :spanish,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        SWAHILI =
          T.let(
            :swahili,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        SWEDISH =
          T.let(
            :swedish,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        TAGALOG =
          T.let(
            :tagalog,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        TURKISH =
          T.let(
            :turkish,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        UKRAINIAN =
          T.let(
            :ukrainian,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        URDU =
          T.let(
            :urdu,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        UZBEK =
          T.let(
            :uzbek,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        VIETNAMESE =
          T.let(
            :vietnamese,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        WELSH =
          T.let(
            :welsh,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Optional stock exchange for the ticker. Only used when ticker parameter is
      # provided. Defaults to assume ticker is American if not specified.
      module TickerExchange
        extend BrandDev::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, BrandDev::BrandRetrieveParams::TickerExchange)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AMEX =
          T.let(
            :AMEX,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        AMS =
          T.let(
            :AMS,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        AQS =
          T.let(
            :AQS,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        ASX =
          T.let(
            :ASX,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        ATH =
          T.let(
            :ATH,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        BER =
          T.let(
            :BER,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        BME =
          T.let(
            :BME,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        BRU =
          T.let(
            :BRU,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        BSE =
          T.let(
            :BSE,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        BUD =
          T.let(
            :BUD,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        BUE =
          T.let(
            :BUE,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        BVC =
          T.let(
            :BVC,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        CBOE =
          T.let(
            :CBOE,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        CNQ =
          T.let(
            :CNQ,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        CPH =
          T.let(
            :CPH,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        DFM =
          T.let(
            :DFM,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        DOH =
          T.let(
            :DOH,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        DUB =
          T.let(
            :DUB,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        DUS =
          T.let(
            :DUS,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        DXE =
          T.let(
            :DXE,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        EGX =
          T.let(
            :EGX,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        FSX =
          T.let(
            :FSX,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        HAM =
          T.let(
            :HAM,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        HEL =
          T.let(
            :HEL,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        HKSE =
          T.let(
            :HKSE,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        HOSE =
          T.let(
            :HOSE,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        ICE =
          T.let(
            :ICE,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        IOB =
          T.let(
            :IOB,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        IST =
          T.let(
            :IST,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        JKT =
          T.let(
            :JKT,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        JNB =
          T.let(
            :JNB,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        JPX =
          T.let(
            :JPX,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        KLS =
          T.let(
            :KLS,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        KOE =
          T.let(
            :KOE,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        KSC =
          T.let(
            :KSC,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        KUW =
          T.let(
            :KUW,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        LIS =
          T.let(
            :LIS,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        LSE =
          T.let(
            :LSE,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        MCX =
          T.let(
            :MCX,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        MEX =
          T.let(
            :MEX,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        MIL =
          T.let(
            :MIL,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        MUN =
          T.let(
            :MUN,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        NASDAQ =
          T.let(
            :NASDAQ,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        NEO =
          T.let(
            :NEO,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        NSE =
          T.let(
            :NSE,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        NYSE =
          T.let(
            :NYSE,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        NZE =
          T.let(
            :NZE,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        OSL =
          T.let(
            :OSL,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        OTC =
          T.let(
            :OTC,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        PAR =
          T.let(
            :PAR,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        PNK =
          T.let(
            :PNK,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        PRA =
          T.let(
            :PRA,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        RIS =
          T.let(
            :RIS,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        SAO =
          T.let(
            :SAO,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        SAU =
          T.let(
            :SAU,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        SES =
          T.let(
            :SES,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        SET =
          T.let(
            :SET,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        SGO =
          T.let(
            :SGO,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        SHH =
          T.let(
            :SHH,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        SHZ =
          T.let(
            :SHZ,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        SIX =
          T.let(
            :SIX,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        STO =
          T.let(
            :STO,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        STU =
          T.let(
            :STU,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        TAI =
          T.let(
            :TAI,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        TAL =
          T.let(
            :TAL,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        TLV =
          T.let(
            :TLV,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        TSX =
          T.let(
            :TSX,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        TSXV =
          T.let(
            :TSXV,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        TWO =
          T.let(
            :TWO,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        VIE =
          T.let(
            :VIE,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        WSE =
          T.let(
            :WSE,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )
        XETRA =
          T.let(
            :XETRA,
            BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              BrandDev::BrandRetrieveParams::TickerExchange::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
