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
      sig { returns(String) }
      attr_accessor :domain

      # Optional parameter to force the language of the retrieved brand data.
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
      # less comprehensive data. Works with all three lookup methods.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :max_speed

      sig { params(max_speed: T::Boolean).void }
      attr_writer :max_speed

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

      sig do
        params(
          domain: String,
          force_language:
            BrandDev::BrandRetrieveParams::ForceLanguage::OrSymbol,
          max_age_ms: Integer,
          max_speed: T::Boolean,
          tags: T::Array[String],
          timeout_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Domain name to retrieve brand data for (e.g., 'example.com', 'google.com').
        # Cannot be used with name or ticker parameters.
        domain:,
        # Optional parameter to force the language of the retrieved brand data.
        force_language: nil,
        # Maximum age in milliseconds for cached brand data before the API performs a hard
        # refresh. Defaults to 3 months (7776000000 ms). Values below 1 day (86400000 ms)
        # are clamped to 1 day; values above 1 year (31536000000 ms) are clamped to 1
        # year.
        max_age_ms: nil,
        # Optional parameter to optimize the API call for maximum speed. When set to true,
        # the API will skip time-consuming operations for faster response at the cost of
        # less comprehensive data. Works with all three lookup methods.
        max_speed: nil,
        # Optional comma-separated caller-defined tags for tracking this request. Tags are
        # recorded on the request's usage log and can be used to filter usage on the
        # dashboard usage page. Up to 20 tags, each 1-50 characters.
        tags: nil,
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
            max_age_ms: Integer,
            max_speed: T::Boolean,
            tags: T::Array[String],
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
            T.all(Symbol, BrandDev::BrandRetrieveParams::ForceLanguage)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AFRIKAANS =
          T.let(
            :afrikaans,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        ALBANIAN =
          T.let(
            :albanian,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        AMHARIC =
          T.let(
            :amharic,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        ARABIC =
          T.let(
            :arabic,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        ARMENIAN =
          T.let(
            :armenian,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        ASSAMESE =
          T.let(
            :assamese,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        AYMARA =
          T.let(
            :aymara,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        AZERI =
          T.let(
            :azeri,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        BASQUE =
          T.let(
            :basque,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        BELARUSIAN =
          T.let(
            :belarusian,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        BENGALI =
          T.let(
            :bengali,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        BOSNIAN =
          T.let(
            :bosnian,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        BULGARIAN =
          T.let(
            :bulgarian,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        BURMESE =
          T.let(
            :burmese,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        CANTONESE =
          T.let(
            :cantonese,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        CATALAN =
          T.let(
            :catalan,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        CEBUANO =
          T.let(
            :cebuano,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        CHINESE =
          T.let(
            :chinese,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        CORSICAN =
          T.let(
            :corsican,
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
        ESPERANTO =
          T.let(
            :esperanto,
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
        FIJIAN =
          T.let(
            :fijian,
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
        GALICIAN =
          T.let(
            :galician,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        GEORGIAN =
          T.let(
            :georgian,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        GERMAN =
          T.let(
            :german,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        GREEK =
          T.let(
            :greek,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        GUARANI =
          T.let(
            :guarani,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        GUJARATI =
          T.let(
            :gujarati,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        HAITIAN_CREOLE =
          T.let(
            :"haitian-creole",
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
        HEBREW =
          T.let(
            :hebrew,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        HINDI =
          T.let(
            :hindi,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        HMONG =
          T.let(
            :hmong,
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
        IGBO =
          T.let(
            :igbo,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        INDONESIAN =
          T.let(
            :indonesian,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        IRISH =
          T.let(
            :irish,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        ITALIAN =
          T.let(
            :italian,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        JAPANESE =
          T.let(
            :japanese,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        JAVANESE =
          T.let(
            :javanese,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        KANNADA =
          T.let(
            :kannada,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        KAZAKH =
          T.let(
            :kazakh,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        KHMER =
          T.let(
            :khmer,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        KINYARWANDA =
          T.let(
            :kinyarwanda,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        KOREAN =
          T.let(
            :korean,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        KURDISH =
          T.let(
            :kurdish,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        KYRGYZ =
          T.let(
            :kyrgyz,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        LAO =
          T.let(
            :lao,
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
        LINGALA =
          T.let(
            :lingala,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        LITHUANIAN =
          T.let(
            :lithuanian,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        LUXEMBOURGISH =
          T.let(
            :luxembourgish,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        MACEDONIAN =
          T.let(
            :macedonian,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        MALAGASY =
          T.let(
            :malagasy,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        MALAY =
          T.let(
            :malay,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        MALAYALAM =
          T.let(
            :malayalam,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        MALTESE =
          T.let(
            :maltese,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        MAORI =
          T.let(
            :maori,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        MARATHI =
          T.let(
            :marathi,
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
        ODIA =
          T.let(
            :odia,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        OROMO =
          T.let(
            :oromo,
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
        PUNJABI =
          T.let(
            :punjabi,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        QUECHUA =
          T.let(
            :quechua,
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
        SAMOAN =
          T.let(
            :samoan,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        SCOTTISH_GAELIC =
          T.let(
            :"scottish-gaelic",
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        SERBIAN =
          T.let(
            :serbian,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        SESOTHO =
          T.let(
            :sesotho,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        SHONA =
          T.let(
            :shona,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        SINDHI =
          T.let(
            :sindhi,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        SINHALA =
          T.let(
            :sinhala,
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
        SUNDANESE =
          T.let(
            :sundanese,
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
        TAJIK =
          T.let(
            :tajik,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        TAMIL =
          T.let(
            :tamil,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        TATAR =
          T.let(
            :tatar,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        TELUGU =
          T.let(
            :telugu,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        THAI =
          T.let(
            :thai,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        TIBETAN =
          T.let(
            :tibetan,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        TIGRINYA =
          T.let(
            :tigrinya,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        TONGAN =
          T.let(
            :tongan,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        TSWANA =
          T.let(
            :tswana,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        TURKISH =
          T.let(
            :turkish,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        TURKMEN =
          T.let(
            :turkmen,
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
        UYGHUR =
          T.let(
            :uyghur,
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
        WOLOF =
          T.let(
            :wolof,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        XHOSA =
          T.let(
            :xhosa,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        YIDDISH =
          T.let(
            :yiddish,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        YORUBA =
          T.let(
            :yoruba,
            BrandDev::BrandRetrieveParams::ForceLanguage::TaggedSymbol
          )
        ZULU =
          T.let(
            :zulu,
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
    end
  end
end
