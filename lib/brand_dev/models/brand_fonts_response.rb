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

      # @!method initialize(code:, domain:, fonts:, status:)
      #   @param code [Integer] HTTP status code, e.g., 200
      #
      #   @param domain [String] The normalized domain that was processed
      #
      #   @param fonts [Array<BrandDev::Models::BrandFontsResponse::Font>] Array of font usage information
      #
      #   @param status [String] Status of the response, e.g., 'ok'

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
    end
  end
end
