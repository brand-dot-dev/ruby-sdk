# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#retrieve_by_email
    class BrandRetrieveByEmailParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      # @!attribute email
      #   Email address to retrieve brand data for (e.g., 'contact@example.com'). The
      #   domain will be extracted from the email. Free email providers (gmail.com,
      #   yahoo.com, etc.) and disposable email addresses are not allowed.
      #
      #   @return [String]
      required :email, String

      # @!attribute force_language
      #   Optional parameter to force the language of the retrieved brand data.
      #
      #   @return [Symbol, BrandDev::Models::BrandRetrieveByEmailParams::ForceLanguage, nil]
      optional :force_language, enum: -> { BrandDev::BrandRetrieveByEmailParams::ForceLanguage }

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

      # @!method initialize(email:, force_language: nil, max_age_ms: nil, max_speed: nil, tags: nil, timeout_ms: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {BrandDev::Models::BrandRetrieveByEmailParams} for more details.
      #
      #   @param email [String] Email address to retrieve brand data for (e.g., 'contact@example.com'). The doma
      #
      #   @param force_language [Symbol, BrandDev::Models::BrandRetrieveByEmailParams::ForceLanguage] Optional parameter to force the language of the retrieved brand data.
      #
      #   @param max_age_ms [Integer] Maximum age in milliseconds for cached brand data before the API performs a hard
      #
      #   @param max_speed [Boolean] Optional parameter to optimize the API call for maximum speed. When set to true,
      #
      #   @param tags [Array<String>] Optional comma-separated caller-defined tags for tracking this request. Tags are
      #
      #   @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      #   @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}]

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
