# typed: strong

module BrandDev
  module Models
    class BrandRetrieveByTickerParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            BrandDev::BrandRetrieveByTickerParams,
            BrandDev::Internal::AnyHash
          )
        end

      # Stock ticker symbol to retrieve brand data for (e.g., 'AAPL', 'GOOGL', 'BRK.A').
      # Must be 1-15 characters, letters/numbers/dots only.
      sig { returns(String) }
      attr_accessor :ticker

      # Optional parameter to force the language of the retrieved brand data.
      sig do
        returns(
          T.nilable(
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::OrSymbol
          )
        )
      end
      attr_reader :force_language

      sig do
        params(
          force_language:
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::OrSymbol
        ).void
      end
      attr_writer :force_language

      # Optional parameter to optimize the API call for maximum speed. When set to true,
      # the API will skip time-consuming operations for faster response at the cost of
      # less comprehensive data.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :max_speed

      sig { params(max_speed: T::Boolean).void }
      attr_writer :max_speed

      # Optional stock exchange for the ticker. Defaults to NASDAQ if not specified.
      sig do
        returns(
          T.nilable(
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::OrSymbol
          )
        )
      end
      attr_reader :ticker_exchange

      sig do
        params(
          ticker_exchange:
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::OrSymbol
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
          ticker: String,
          force_language:
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::OrSymbol,
          max_speed: T::Boolean,
          ticker_exchange:
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::OrSymbol,
          timeout_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Stock ticker symbol to retrieve brand data for (e.g., 'AAPL', 'GOOGL', 'BRK.A').
        # Must be 1-15 characters, letters/numbers/dots only.
        ticker:,
        # Optional parameter to force the language of the retrieved brand data.
        force_language: nil,
        # Optional parameter to optimize the API call for maximum speed. When set to true,
        # the API will skip time-consuming operations for faster response at the cost of
        # less comprehensive data.
        max_speed: nil,
        # Optional stock exchange for the ticker. Defaults to NASDAQ if not specified.
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
            ticker: String,
            force_language:
              BrandDev::BrandRetrieveByTickerParams::ForceLanguage::OrSymbol,
            max_speed: T::Boolean,
            ticker_exchange:
              BrandDev::BrandRetrieveByTickerParams::TickerExchange::OrSymbol,
            timeout_ms: Integer,
            request_options: BrandDev::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Optional parameter to force the language of the retrieved brand data.
      module ForceLanguage
        extend BrandDev::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, BrandDev::BrandRetrieveByTickerParams::ForceLanguage)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALBANIAN =
          T.let(
            :albanian,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        ARABIC =
          T.let(
            :arabic,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        AZERI =
          T.let(
            :azeri,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        BENGALI =
          T.let(
            :bengali,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        BULGARIAN =
          T.let(
            :bulgarian,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        CEBUANO =
          T.let(
            :cebuano,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        CROATIAN =
          T.let(
            :croatian,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        CZECH =
          T.let(
            :czech,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        DANISH =
          T.let(
            :danish,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        DUTCH =
          T.let(
            :dutch,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        ENGLISH =
          T.let(
            :english,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        ESTONIAN =
          T.let(
            :estonian,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        FARSI =
          T.let(
            :farsi,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        FINNISH =
          T.let(
            :finnish,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        FRENCH =
          T.let(
            :french,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        GERMAN =
          T.let(
            :german,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        HAUSA =
          T.let(
            :hausa,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        HAWAIIAN =
          T.let(
            :hawaiian,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        HINDI =
          T.let(
            :hindi,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        HUNGARIAN =
          T.let(
            :hungarian,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        ICELANDIC =
          T.let(
            :icelandic,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        INDONESIAN =
          T.let(
            :indonesian,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        ITALIAN =
          T.let(
            :italian,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        KAZAKH =
          T.let(
            :kazakh,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        KYRGYZ =
          T.let(
            :kyrgyz,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        LATIN =
          T.let(
            :latin,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        LATVIAN =
          T.let(
            :latvian,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        LITHUANIAN =
          T.let(
            :lithuanian,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        MACEDONIAN =
          T.let(
            :macedonian,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        MONGOLIAN =
          T.let(
            :mongolian,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        NEPALI =
          T.let(
            :nepali,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        NORWEGIAN =
          T.let(
            :norwegian,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        PASHTO =
          T.let(
            :pashto,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        PIDGIN =
          T.let(
            :pidgin,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        POLISH =
          T.let(
            :polish,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        PORTUGUESE =
          T.let(
            :portuguese,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        ROMANIAN =
          T.let(
            :romanian,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        RUSSIAN =
          T.let(
            :russian,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        SERBIAN =
          T.let(
            :serbian,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        SLOVAK =
          T.let(
            :slovak,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        SLOVENE =
          T.let(
            :slovene,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        SOMALI =
          T.let(
            :somali,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        SPANISH =
          T.let(
            :spanish,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        SWAHILI =
          T.let(
            :swahili,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        SWEDISH =
          T.let(
            :swedish,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        TAGALOG =
          T.let(
            :tagalog,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        TURKISH =
          T.let(
            :turkish,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        UKRAINIAN =
          T.let(
            :ukrainian,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        URDU =
          T.let(
            :urdu,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        UZBEK =
          T.let(
            :uzbek,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        VIETNAMESE =
          T.let(
            :vietnamese,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )
        WELSH =
          T.let(
            :welsh,
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              BrandDev::BrandRetrieveByTickerParams::ForceLanguage::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Optional stock exchange for the ticker. Defaults to NASDAQ if not specified.
      module TickerExchange
        extend BrandDev::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, BrandDev::BrandRetrieveByTickerParams::TickerExchange)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AMEX =
          T.let(
            :AMEX,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        AMS =
          T.let(
            :AMS,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        AQS =
          T.let(
            :AQS,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        ASX =
          T.let(
            :ASX,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        ATH =
          T.let(
            :ATH,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        BER =
          T.let(
            :BER,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        BME =
          T.let(
            :BME,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        BRU =
          T.let(
            :BRU,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        BSE =
          T.let(
            :BSE,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        BUD =
          T.let(
            :BUD,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        BUE =
          T.let(
            :BUE,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        BVC =
          T.let(
            :BVC,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        CBOE =
          T.let(
            :CBOE,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        CNQ =
          T.let(
            :CNQ,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        CPH =
          T.let(
            :CPH,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        DFM =
          T.let(
            :DFM,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        DOH =
          T.let(
            :DOH,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        DUB =
          T.let(
            :DUB,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        DUS =
          T.let(
            :DUS,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        DXE =
          T.let(
            :DXE,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        EGX =
          T.let(
            :EGX,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        FSX =
          T.let(
            :FSX,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        HAM =
          T.let(
            :HAM,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        HEL =
          T.let(
            :HEL,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        HKSE =
          T.let(
            :HKSE,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        HOSE =
          T.let(
            :HOSE,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        ICE =
          T.let(
            :ICE,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        IOB =
          T.let(
            :IOB,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        IST =
          T.let(
            :IST,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        JKT =
          T.let(
            :JKT,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        JNB =
          T.let(
            :JNB,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        JPX =
          T.let(
            :JPX,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        KLS =
          T.let(
            :KLS,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        KOE =
          T.let(
            :KOE,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        KSC =
          T.let(
            :KSC,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        KUW =
          T.let(
            :KUW,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        LIS =
          T.let(
            :LIS,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        LSE =
          T.let(
            :LSE,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        MCX =
          T.let(
            :MCX,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        MEX =
          T.let(
            :MEX,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        MIL =
          T.let(
            :MIL,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        MUN =
          T.let(
            :MUN,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        NASDAQ =
          T.let(
            :NASDAQ,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        NEO =
          T.let(
            :NEO,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        NSE =
          T.let(
            :NSE,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        NYSE =
          T.let(
            :NYSE,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        NZE =
          T.let(
            :NZE,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        OSL =
          T.let(
            :OSL,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        OTC =
          T.let(
            :OTC,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        PAR =
          T.let(
            :PAR,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        PNK =
          T.let(
            :PNK,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        PRA =
          T.let(
            :PRA,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        RIS =
          T.let(
            :RIS,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        SAO =
          T.let(
            :SAO,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        SAU =
          T.let(
            :SAU,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        SES =
          T.let(
            :SES,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        SET =
          T.let(
            :SET,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        SGO =
          T.let(
            :SGO,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        SHH =
          T.let(
            :SHH,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        SHZ =
          T.let(
            :SHZ,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        SIX =
          T.let(
            :SIX,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        STO =
          T.let(
            :STO,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        STU =
          T.let(
            :STU,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        TAI =
          T.let(
            :TAI,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        TAL =
          T.let(
            :TAL,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        TLV =
          T.let(
            :TLV,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        TSX =
          T.let(
            :TSX,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        TSXV =
          T.let(
            :TSXV,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        TWO =
          T.let(
            :TWO,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        VIE =
          T.let(
            :VIE,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        WSE =
          T.let(
            :WSE,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )
        XETRA =
          T.let(
            :XETRA,
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              BrandDev::BrandRetrieveByTickerParams::TickerExchange::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
