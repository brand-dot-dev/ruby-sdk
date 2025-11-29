# typed: strong

module BrandDev
  module Models
    class BrandFontsResponse < BrandDev::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            BrandDev::Models::BrandFontsResponse,
            BrandDev::Internal::AnyHash
          )
        end

      # HTTP status code, e.g., 200
      sig { returns(Integer) }
      attr_accessor :code

      # The normalized domain that was processed
      sig { returns(String) }
      attr_accessor :domain

      # Array of font usage information
      sig { returns(T::Array[BrandDev::Models::BrandFontsResponse::Font]) }
      attr_accessor :fonts

      # Status of the response, e.g., 'ok'
      sig { returns(String) }
      attr_accessor :status

      sig do
        params(
          code: Integer,
          domain: String,
          fonts: T::Array[BrandDev::Models::BrandFontsResponse::Font::OrHash],
          status: String
        ).returns(T.attached_class)
      end
      def self.new(
        # HTTP status code, e.g., 200
        code:,
        # The normalized domain that was processed
        domain:,
        # Array of font usage information
        fonts:,
        # Status of the response, e.g., 'ok'
        status:
      )
      end

      sig do
        override.returns(
          {
            code: Integer,
            domain: String,
            fonts: T::Array[BrandDev::Models::BrandFontsResponse::Font],
            status: String
          }
        )
      end
      def to_hash
      end

      class Font < BrandDev::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              BrandDev::Models::BrandFontsResponse::Font,
              BrandDev::Internal::AnyHash
            )
          end

        # Array of fallback font families
        sig { returns(T::Array[String]) }
        attr_accessor :fallbacks

        # Font family name
        sig { returns(String) }
        attr_accessor :font

        # Number of elements using this font
        sig { returns(Float) }
        attr_accessor :num_elements

        # Number of words using this font
        sig { returns(Float) }
        attr_accessor :num_words

        # Percentage of elements using this font
        sig { returns(Float) }
        attr_accessor :percent_elements

        # Percentage of words using this font
        sig { returns(Float) }
        attr_accessor :percent_words

        # Array of CSS selectors or element types where this font is used
        sig { returns(T::Array[String]) }
        attr_accessor :uses

        sig do
          params(
            fallbacks: T::Array[String],
            font: String,
            num_elements: Float,
            num_words: Float,
            percent_elements: Float,
            percent_words: Float,
            uses: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # Array of fallback font families
          fallbacks:,
          # Font family name
          font:,
          # Number of elements using this font
          num_elements:,
          # Number of words using this font
          num_words:,
          # Percentage of elements using this font
          percent_elements:,
          # Percentage of words using this font
          percent_words:,
          # Array of CSS selectors or element types where this font is used
          uses:
        )
        end

        sig do
          override.returns(
            {
              fallbacks: T::Array[String],
              font: String,
              num_elements: Float,
              num_words: Float,
              percent_elements: Float,
              percent_words: Float,
              uses: T::Array[String]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
