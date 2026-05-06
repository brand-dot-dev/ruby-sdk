# typed: strong

module BrandDev
  module Models
    class BrandRetrieveByIsinParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            BrandDev::BrandRetrieveByIsinParams,
            BrandDev::Internal::AnyHash
          )
        end

      # ISIN (International Securities Identification Number) to retrieve brand data for
      # (e.g., 'AU000000IMD5', 'US0378331005'). Must be exactly 12 characters: 2 letters
      # followed by 9 alphanumeric characters and ending with a digit.
      sig { returns(String) }
      attr_accessor :isin

      # Optional parameter to force the language of the retrieved brand data.
      sig do
        returns(
          T.nilable(
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::OrSymbol
          )
        )
      end
      attr_reader :force_language

      sig do
        params(
          force_language:
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::OrSymbol
        ).void
      end
      attr_writer :force_language

      # Maximum age in milliseconds for cached brand data before the API performs a hard
      # refresh. Defaults to 3 months (7776000000 ms). Values below 1 day (86400000 ms)
      # are clamped to 1 day; values above 1 year (31536000000 ms) are clamped to 1
      # year.
      sig { returns(T.nilable(Integer)) }
      attr_reader :max_age_ms

      sig { params(max_age_ms: Integer).void }
      attr_writer :max_age_ms

      # Optional parameter to optimize the API call for maximum speed. When set to true,
      # the API will skip time-consuming operations for faster response at the cost of
      # less comprehensive data.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :max_speed

      sig { params(max_speed: T::Boolean).void }
      attr_writer :max_speed

      # Optional timeout in milliseconds for the request. If the request takes longer
      # than this value, it will be aborted with a 408 status code. Maximum allowed
      # value is 300000ms (5 minutes).
      sig { returns(T.nilable(Integer)) }
      attr_reader :timeout_ms

      sig { params(timeout_ms: Integer).void }
      attr_writer :timeout_ms

      sig do
        params(
          isin: String,
          force_language:
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::OrSymbol,
          max_age_ms: Integer,
          max_speed: T::Boolean,
          timeout_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # ISIN (International Securities Identification Number) to retrieve brand data for
        # (e.g., 'AU000000IMD5', 'US0378331005'). Must be exactly 12 characters: 2 letters
        # followed by 9 alphanumeric characters and ending with a digit.
        isin:,
        # Optional parameter to force the language of the retrieved brand data.
        force_language: nil,
        # Maximum age in milliseconds for cached brand data before the API performs a hard
        # refresh. Defaults to 3 months (7776000000 ms). Values below 1 day (86400000 ms)
        # are clamped to 1 day; values above 1 year (31536000000 ms) are clamped to 1
        # year.
        max_age_ms: nil,
        # Optional parameter to optimize the API call for maximum speed. When set to true,
        # the API will skip time-consuming operations for faster response at the cost of
        # less comprehensive data.
        max_speed: nil,
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
            isin: String,
            force_language:
              BrandDev::BrandRetrieveByIsinParams::ForceLanguage::OrSymbol,
            max_age_ms: Integer,
            max_speed: T::Boolean,
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
            T.all(Symbol, BrandDev::BrandRetrieveByIsinParams::ForceLanguage)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AFRIKAANS =
          T.let(
            :afrikaans,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        ALBANIAN =
          T.let(
            :albanian,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        AMHARIC =
          T.let(
            :amharic,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        ARABIC =
          T.let(
            :arabic,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        ARMENIAN =
          T.let(
            :armenian,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        ASSAMESE =
          T.let(
            :assamese,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        AYMARA =
          T.let(
            :aymara,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        AZERI =
          T.let(
            :azeri,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        BASQUE =
          T.let(
            :basque,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        BELARUSIAN =
          T.let(
            :belarusian,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        BENGALI =
          T.let(
            :bengali,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        BOSNIAN =
          T.let(
            :bosnian,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        BULGARIAN =
          T.let(
            :bulgarian,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        BURMESE =
          T.let(
            :burmese,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        CANTONESE =
          T.let(
            :cantonese,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        CATALAN =
          T.let(
            :catalan,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        CEBUANO =
          T.let(
            :cebuano,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        CHINESE =
          T.let(
            :chinese,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        CORSICAN =
          T.let(
            :corsican,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        CROATIAN =
          T.let(
            :croatian,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        CZECH =
          T.let(
            :czech,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        DANISH =
          T.let(
            :danish,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        DUTCH =
          T.let(
            :dutch,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        ENGLISH =
          T.let(
            :english,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        ESPERANTO =
          T.let(
            :esperanto,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        ESTONIAN =
          T.let(
            :estonian,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        FARSI =
          T.let(
            :farsi,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        FIJIAN =
          T.let(
            :fijian,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        FINNISH =
          T.let(
            :finnish,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        FRENCH =
          T.let(
            :french,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        GALICIAN =
          T.let(
            :galician,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        GEORGIAN =
          T.let(
            :georgian,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        GERMAN =
          T.let(
            :german,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        GREEK =
          T.let(
            :greek,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        GUARANI =
          T.let(
            :guarani,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        GUJARATI =
          T.let(
            :gujarati,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        HAITIAN_CREOLE =
          T.let(
            :"haitian-creole",
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        HAUSA =
          T.let(
            :hausa,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        HAWAIIAN =
          T.let(
            :hawaiian,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        HEBREW =
          T.let(
            :hebrew,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        HINDI =
          T.let(
            :hindi,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        HMONG =
          T.let(
            :hmong,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        HUNGARIAN =
          T.let(
            :hungarian,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        ICELANDIC =
          T.let(
            :icelandic,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        IGBO =
          T.let(
            :igbo,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        INDONESIAN =
          T.let(
            :indonesian,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        IRISH =
          T.let(
            :irish,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        ITALIAN =
          T.let(
            :italian,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        JAPANESE =
          T.let(
            :japanese,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        JAVANESE =
          T.let(
            :javanese,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        KANNADA =
          T.let(
            :kannada,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        KAZAKH =
          T.let(
            :kazakh,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        KHMER =
          T.let(
            :khmer,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        KINYARWANDA =
          T.let(
            :kinyarwanda,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        KOREAN =
          T.let(
            :korean,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        KURDISH =
          T.let(
            :kurdish,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        KYRGYZ =
          T.let(
            :kyrgyz,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        LAO =
          T.let(
            :lao,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        LATIN =
          T.let(
            :latin,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        LATVIAN =
          T.let(
            :latvian,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        LINGALA =
          T.let(
            :lingala,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        LITHUANIAN =
          T.let(
            :lithuanian,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        LUXEMBOURGISH =
          T.let(
            :luxembourgish,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        MACEDONIAN =
          T.let(
            :macedonian,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        MALAGASY =
          T.let(
            :malagasy,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        MALAY =
          T.let(
            :malay,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        MALAYALAM =
          T.let(
            :malayalam,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        MALTESE =
          T.let(
            :maltese,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        MAORI =
          T.let(
            :maori,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        MARATHI =
          T.let(
            :marathi,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        MONGOLIAN =
          T.let(
            :mongolian,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        NEPALI =
          T.let(
            :nepali,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        NORWEGIAN =
          T.let(
            :norwegian,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        ODIA =
          T.let(
            :odia,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        OROMO =
          T.let(
            :oromo,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        PASHTO =
          T.let(
            :pashto,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        PIDGIN =
          T.let(
            :pidgin,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        POLISH =
          T.let(
            :polish,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        PORTUGUESE =
          T.let(
            :portuguese,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        PUNJABI =
          T.let(
            :punjabi,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        QUECHUA =
          T.let(
            :quechua,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        ROMANIAN =
          T.let(
            :romanian,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        RUSSIAN =
          T.let(
            :russian,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        SAMOAN =
          T.let(
            :samoan,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        SCOTTISH_GAELIC =
          T.let(
            :"scottish-gaelic",
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        SERBIAN =
          T.let(
            :serbian,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        SESOTHO =
          T.let(
            :sesotho,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        SHONA =
          T.let(
            :shona,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        SINDHI =
          T.let(
            :sindhi,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        SINHALA =
          T.let(
            :sinhala,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        SLOVAK =
          T.let(
            :slovak,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        SLOVENE =
          T.let(
            :slovene,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        SOMALI =
          T.let(
            :somali,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        SPANISH =
          T.let(
            :spanish,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        SUNDANESE =
          T.let(
            :sundanese,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        SWAHILI =
          T.let(
            :swahili,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        SWEDISH =
          T.let(
            :swedish,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        TAGALOG =
          T.let(
            :tagalog,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        TAJIK =
          T.let(
            :tajik,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        TAMIL =
          T.let(
            :tamil,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        TATAR =
          T.let(
            :tatar,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        TELUGU =
          T.let(
            :telugu,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        THAI =
          T.let(
            :thai,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        TIBETAN =
          T.let(
            :tibetan,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        TIGRINYA =
          T.let(
            :tigrinya,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        TONGAN =
          T.let(
            :tongan,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        TSWANA =
          T.let(
            :tswana,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        TURKISH =
          T.let(
            :turkish,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        TURKMEN =
          T.let(
            :turkmen,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        UKRAINIAN =
          T.let(
            :ukrainian,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        URDU =
          T.let(
            :urdu,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        UYGHUR =
          T.let(
            :uyghur,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        UZBEK =
          T.let(
            :uzbek,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        VIETNAMESE =
          T.let(
            :vietnamese,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        WELSH =
          T.let(
            :welsh,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        WOLOF =
          T.let(
            :wolof,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        XHOSA =
          T.let(
            :xhosa,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        YIDDISH =
          T.let(
            :yiddish,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        YORUBA =
          T.let(
            :yoruba,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )
        ZULU =
          T.let(
            :zulu,
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              BrandDev::BrandRetrieveByIsinParams::ForceLanguage::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
