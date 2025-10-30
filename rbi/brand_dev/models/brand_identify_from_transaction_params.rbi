# typed: strong

module BrandDev
  module Models
    class BrandIdentifyFromTransactionParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            BrandDev::BrandIdentifyFromTransactionParams,
            BrandDev::Internal::AnyHash
          )
        end

      # Transaction information to identify the brand
      sig { returns(String) }
      attr_accessor :transaction_info

      # Optional parameter to force the language of the retrieved brand data.
      sig do
        returns(
          T.nilable(
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::OrSymbol
          )
        )
      end
      attr_reader :force_language

      sig do
        params(
          force_language:
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::OrSymbol
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

      # Optional timeout in milliseconds for the request. If the request takes longer
      # than this value, it will be aborted with a 408 status code. Maximum allowed
      # value is 300000ms (5 minutes).
      sig { returns(T.nilable(Integer)) }
      attr_reader :timeout_ms

      sig { params(timeout_ms: Integer).void }
      attr_writer :timeout_ms

      sig do
        params(
          transaction_info: String,
          force_language:
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::OrSymbol,
          max_speed: T::Boolean,
          timeout_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Transaction information to identify the brand
        transaction_info:,
        # Optional parameter to force the language of the retrieved brand data.
        force_language: nil,
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
            transaction_info: String,
            force_language:
              BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::OrSymbol,
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
            T.all(
              Symbol,
              BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALBANIAN =
          T.let(
            :albanian,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        ARABIC =
          T.let(
            :arabic,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        AZERI =
          T.let(
            :azeri,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        BENGALI =
          T.let(
            :bengali,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        BULGARIAN =
          T.let(
            :bulgarian,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        CEBUANO =
          T.let(
            :cebuano,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        CROATIAN =
          T.let(
            :croatian,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        CZECH =
          T.let(
            :czech,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        DANISH =
          T.let(
            :danish,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        DUTCH =
          T.let(
            :dutch,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        ENGLISH =
          T.let(
            :english,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        ESTONIAN =
          T.let(
            :estonian,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        FARSI =
          T.let(
            :farsi,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        FINNISH =
          T.let(
            :finnish,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        FRENCH =
          T.let(
            :french,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        GERMAN =
          T.let(
            :german,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        HAUSA =
          T.let(
            :hausa,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        HAWAIIAN =
          T.let(
            :hawaiian,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        HINDI =
          T.let(
            :hindi,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        HUNGARIAN =
          T.let(
            :hungarian,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        ICELANDIC =
          T.let(
            :icelandic,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        INDONESIAN =
          T.let(
            :indonesian,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        ITALIAN =
          T.let(
            :italian,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        KAZAKH =
          T.let(
            :kazakh,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        KYRGYZ =
          T.let(
            :kyrgyz,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        LATIN =
          T.let(
            :latin,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        LATVIAN =
          T.let(
            :latvian,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        LITHUANIAN =
          T.let(
            :lithuanian,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        MACEDONIAN =
          T.let(
            :macedonian,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        MONGOLIAN =
          T.let(
            :mongolian,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        NEPALI =
          T.let(
            :nepali,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        NORWEGIAN =
          T.let(
            :norwegian,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        PASHTO =
          T.let(
            :pashto,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        PIDGIN =
          T.let(
            :pidgin,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        POLISH =
          T.let(
            :polish,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        PORTUGUESE =
          T.let(
            :portuguese,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        ROMANIAN =
          T.let(
            :romanian,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        RUSSIAN =
          T.let(
            :russian,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        SERBIAN =
          T.let(
            :serbian,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        SLOVAK =
          T.let(
            :slovak,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        SLOVENE =
          T.let(
            :slovene,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        SOMALI =
          T.let(
            :somali,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        SPANISH =
          T.let(
            :spanish,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        SWAHILI =
          T.let(
            :swahili,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        SWEDISH =
          T.let(
            :swedish,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        TAGALOG =
          T.let(
            :tagalog,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        TURKISH =
          T.let(
            :turkish,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        UKRAINIAN =
          T.let(
            :ukrainian,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        URDU =
          T.let(
            :urdu,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        UZBEK =
          T.let(
            :uzbek,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        VIETNAMESE =
          T.let(
            :vietnamese,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        WELSH =
          T.let(
            :welsh,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
