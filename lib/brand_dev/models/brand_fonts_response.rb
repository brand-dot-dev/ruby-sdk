# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#fonts
    class BrandFontsResponse < BrandDev::Internal::Type::BaseModel
      # @!attribute code
      #   HTTP status code, e.g., 200
      #
      #   @return [Integer]
      required :code, Integer

      # @!attribute domain
      #   The normalized domain that was processed
      #
      #   @return [String]
      required :domain, String

      # @!attribute fonts
      #   Array of font usage information
      #
      #   @return [Array<BrandDev::Models::BrandFontsResponse::Font>]
      required :fonts, -> { BrandDev::Internal::Type::ArrayOf[BrandDev::Models::BrandFontsResponse::Font] }

      # @!attribute status
      #   Status of the response, e.g., 'ok'
      #
      #   @return [String]
      required :status, String

      # @!attribute font_links
      #   Font assets keyed by family name as it appears in the fonts array (non-generic
      #   names only). Clients match entries in fonts to pick a file URL from files.
      #   Omitted when no families resolve to Google or custom @font-face URLs.
      #
      #   @return [Hash{Symbol=>BrandDev::Models::BrandFontsResponse::FontLink}, nil]
      optional :font_links,
               -> { BrandDev::Internal::Type::HashOf[BrandDev::Models::BrandFontsResponse::FontLink] },
               api_name: :fontLinks

      # @!attribute key_metadata
      #   Metadata about the API key used for the request. Included in every response
      #   whenever a valid API key is provided, even when the response status is not 200.
      #
      #   @return [BrandDev::Models::BrandFontsResponse::KeyMetadata, nil]
      optional :key_metadata, -> { BrandDev::Models::BrandFontsResponse::KeyMetadata }

      # @!method initialize(code:, domain:, fonts:, status:, font_links: nil, key_metadata: nil)
      #   Some parameter documentations has been truncated, see
      #   {BrandDev::Models::BrandFontsResponse} for more details.
      #
      #   @param code [Integer] HTTP status code, e.g., 200
      #
      #   @param domain [String] The normalized domain that was processed
      #
      #   @param fonts [Array<BrandDev::Models::BrandFontsResponse::Font>] Array of font usage information
      #
      #   @param status [String] Status of the response, e.g., 'ok'
      #
      #   @param font_links [Hash{Symbol=>BrandDev::Models::BrandFontsResponse::FontLink}] Font assets keyed by family name as it appears in the fonts array (non-generic n
      #
      #   @param key_metadata [BrandDev::Models::BrandFontsResponse::KeyMetadata] Metadata about the API key used for the request. Included in every response when

      class Font < BrandDev::Internal::Type::BaseModel
        # @!attribute fallbacks
        #   Array of fallback font families
        #
        #   @return [Array<String>]
        required :fallbacks, BrandDev::Internal::Type::ArrayOf[String]

        # @!attribute font
        #   Font family name
        #
        #   @return [String]
        required :font, String

        # @!attribute num_elements
        #   Number of elements using this font
        #
        #   @return [Float]
        required :num_elements, Float

        # @!attribute num_words
        #   Number of words using this font
        #
        #   @return [Float]
        required :num_words, Float

        # @!attribute percent_elements
        #   Percentage of elements using this font
        #
        #   @return [Float]
        required :percent_elements, Float

        # @!attribute percent_words
        #   Percentage of words using this font
        #
        #   @return [Float]
        required :percent_words, Float

        # @!attribute uses
        #   Array of CSS selectors or element types where this font is used
        #
        #   @return [Array<String>]
        required :uses, BrandDev::Internal::Type::ArrayOf[String]

        # @!method initialize(fallbacks:, font:, num_elements:, num_words:, percent_elements:, percent_words:, uses:)
        #   @param fallbacks [Array<String>] Array of fallback font families
        #
        #   @param font [String] Font family name
        #
        #   @param num_elements [Float] Number of elements using this font
        #
        #   @param num_words [Float] Number of words using this font
        #
        #   @param percent_elements [Float] Percentage of elements using this font
        #
        #   @param percent_words [Float] Percentage of words using this font
        #
        #   @param uses [Array<String>] Array of CSS selectors or element types where this font is used
      end

      class FontLink < BrandDev::Internal::Type::BaseModel
        # @!attribute files
        #   Upright font files keyed by weight string (e.g. "400" for regular, "500",
        #   "700"). Values are absolute URLs.
        #
        #   @return [Hash{Symbol=>String}]
        required :files, BrandDev::Internal::Type::HashOf[String]

        # @!attribute type
        #
        #   @return [Symbol, BrandDev::Models::BrandFontsResponse::FontLink::Type]
        required :type, enum: -> { BrandDev::Models::BrandFontsResponse::FontLink::Type }

        # @!attribute category
        #   Google Fonts category when type is google (e.g. sans-serif, serif, monospace,
        #   display, handwriting). Omitted for custom fonts when unknown.
        #
        #   @return [String, nil]
        optional :category, String

        # @!attribute display_name
        #   Present when type is custom: human-readable name derived from the fontLinks key
        #   (strip build/hash suffixes, split camelCase / PascalCase, normalize separators).
        #   Google entries omit this.
        #
        #   @return [String, nil]
        optional :display_name, String, api_name: :displayName

        # @!method initialize(files:, type:, category: nil, display_name: nil)
        #   Some parameter documentations has been truncated, see
        #   {BrandDev::Models::BrandFontsResponse::FontLink} for more details.
        #
        #   @param files [Hash{Symbol=>String}] Upright font files keyed by weight string (e.g. "400" for regular, "500", "700")
        #
        #   @param type [Symbol, BrandDev::Models::BrandFontsResponse::FontLink::Type]
        #
        #   @param category [String] Google Fonts category when type is google (e.g. sans-serif, serif, monospace, di
        #
        #   @param display_name [String] Present when type is custom: human-readable name derived from the fontLinks key

        # @see BrandDev::Models::BrandFontsResponse::FontLink#type
        module Type
          extend BrandDev::Internal::Type::Enum

          GOOGLE = :google
          CUSTOM = :custom

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see BrandDev::Models::BrandFontsResponse#key_metadata
      class KeyMetadata < BrandDev::Internal::Type::BaseModel
        # @!attribute credits_consumed
        #   The number of credits consumed by this request.
        #
        #   @return [Integer]
        required :credits_consumed, Integer

        # @!attribute credits_remaining
        #   The number of credits remaining for your organization after this request.
        #
        #   @return [Integer]
        required :credits_remaining, Integer

        # @!method initialize(credits_consumed:, credits_remaining:)
        #   Metadata about the API key used for the request. Included in every response
        #   whenever a valid API key is provided, even when the response status is not 200.
        #
        #   @param credits_consumed [Integer] The number of credits consumed by this request.
        #
        #   @param credits_remaining [Integer] The number of credits remaining for your organization after this request.
      end
    end
  end
end
