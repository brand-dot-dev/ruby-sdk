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

      # @!method initialize(email:, force_language: nil, max_speed: nil, timeout_ms: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {BrandDev::Models::BrandRetrieveByEmailParams} for more details.
      #
      #   @param email [String] Email address to retrieve brand data for (e.g., 'contact@example.com'). The doma
      #
      #   @param force_language [Symbol, BrandDev::Models::BrandRetrieveByEmailParams::ForceLanguage] Optional parameter to force the language of the retrieved brand data.
      #
      #   @param max_speed [Boolean] Optional parameter to optimize the API call for maximum speed. When set to true,
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
    end
  end
end
