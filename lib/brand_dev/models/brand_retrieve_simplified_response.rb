# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#retrieve_simplified
    class BrandRetrieveSimplifiedResponse < BrandDev::Internal::Type::BaseModel
      # @!attribute brand
      #   Simplified brand information
      #
      #   @return [BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand, nil]
      optional :brand, -> { BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand }

      # @!attribute code
      #   HTTP status code of the response
      #
      #   @return [Integer, nil]
      optional :code, Integer

      # @!attribute status
      #   Status of the response, e.g., 'ok'
      #
      #   @return [String, nil]
      optional :status, String

      # @!method initialize(brand: nil, code: nil, status: nil)
      #   @param brand [BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand] Simplified brand information
      #
      #   @param code [Integer] HTTP status code of the response
      #
      #   @param status [String] Status of the response, e.g., 'ok'

      # @see BrandDev::Models::BrandRetrieveSimplifiedResponse#brand
      class Brand < BrandDev::Internal::Type::BaseModel
        # @!attribute backdrops
        #   An array of backdrop images for the brand
        #
        #   @return [Array<BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Backdrop>, nil]
        optional :backdrops,
                 -> { BrandDev::Internal::Type::ArrayOf[BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Backdrop] }

        # @!attribute colors
        #   An array of brand colors
        #
        #   @return [Array<BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Color>, nil]
        optional :colors,
                 -> { BrandDev::Internal::Type::ArrayOf[BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Color] }

        # @!attribute domain
        #   The domain name of the brand
        #
        #   @return [String, nil]
        optional :domain, String

        # @!attribute logos
        #   An array of logos associated with the brand
        #
        #   @return [Array<BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo>, nil]
        optional :logos,
                 -> { BrandDev::Internal::Type::ArrayOf[BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo] }

        # @!attribute title
        #   The title or name of the brand
        #
        #   @return [String, nil]
        optional :title, String

        # @!method initialize(backdrops: nil, colors: nil, domain: nil, logos: nil, title: nil)
        #   Simplified brand information
        #
        #   @param backdrops [Array<BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Backdrop>] An array of backdrop images for the brand
        #
        #   @param colors [Array<BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Color>] An array of brand colors
        #
        #   @param domain [String] The domain name of the brand
        #
        #   @param logos [Array<BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo>] An array of logos associated with the brand
        #
        #   @param title [String] The title or name of the brand

        class Backdrop < BrandDev::Internal::Type::BaseModel
          # @!attribute colors
          #   Array of colors in the backdrop image
          #
          #   @return [Array<BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Backdrop::Color>, nil]
          optional :colors,
                   -> { BrandDev::Internal::Type::ArrayOf[BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Backdrop::Color] }

          # @!attribute resolution
          #   Resolution of the backdrop image
          #
          #   @return [BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Backdrop::Resolution, nil]
          optional :resolution,
                   -> { BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Backdrop::Resolution }

          # @!attribute url
          #   URL of the backdrop image
          #
          #   @return [String, nil]
          optional :url, String

          # @!method initialize(colors: nil, resolution: nil, url: nil)
          #   @param colors [Array<BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Backdrop::Color>] Array of colors in the backdrop image
          #
          #   @param resolution [BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Backdrop::Resolution] Resolution of the backdrop image
          #
          #   @param url [String] URL of the backdrop image

          class Color < BrandDev::Internal::Type::BaseModel
            # @!attribute hex
            #   Color in hexadecimal format
            #
            #   @return [String, nil]
            optional :hex, String

            # @!attribute name
            #   Name of the color
            #
            #   @return [String, nil]
            optional :name, String

            # @!method initialize(hex: nil, name: nil)
            #   @param hex [String] Color in hexadecimal format
            #
            #   @param name [String] Name of the color
          end

          # @see BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Backdrop#resolution
          class Resolution < BrandDev::Internal::Type::BaseModel
            # @!attribute aspect_ratio
            #   Aspect ratio of the image (width/height)
            #
            #   @return [Float, nil]
            optional :aspect_ratio, Float

            # @!attribute height
            #   Height of the image in pixels
            #
            #   @return [Integer, nil]
            optional :height, Integer

            # @!attribute width
            #   Width of the image in pixels
            #
            #   @return [Integer, nil]
            optional :width, Integer

            # @!method initialize(aspect_ratio: nil, height: nil, width: nil)
            #   Resolution of the backdrop image
            #
            #   @param aspect_ratio [Float] Aspect ratio of the image (width/height)
            #
            #   @param height [Integer] Height of the image in pixels
            #
            #   @param width [Integer] Width of the image in pixels
          end
        end

        class Color < BrandDev::Internal::Type::BaseModel
          # @!attribute hex
          #   Color in hexadecimal format
          #
          #   @return [String, nil]
          optional :hex, String

          # @!attribute name
          #   Name of the color
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(hex: nil, name: nil)
          #   @param hex [String] Color in hexadecimal format
          #
          #   @param name [String] Name of the color
        end

        class Logo < BrandDev::Internal::Type::BaseModel
          # @!attribute colors
          #   Array of colors in the logo
          #
          #   @return [Array<BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo::Color>, nil]
          optional :colors,
                   -> { BrandDev::Internal::Type::ArrayOf[BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo::Color] }

          # @!attribute mode
          #   Indicates when this logo is best used: 'light' = best for light mode, 'dark' =
          #   best for dark mode, 'has_opaque_background' = can be used for either as image
          #   has its own background
          #
          #   @return [Symbol, BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo::Mode, nil]
          optional :mode, enum: -> { BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo::Mode }

          # @!attribute resolution
          #   Resolution of the logo image
          #
          #   @return [BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo::Resolution, nil]
          optional :resolution, -> { BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo::Resolution }

          # @!attribute type
          #   Type of the logo based on resolution (e.g., 'icon', 'logo')
          #
          #   @return [Symbol, BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo::Type, nil]
          optional :type, enum: -> { BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo::Type }

          # @!attribute url
          #   CDN hosted url of the logo (ready for display)
          #
          #   @return [String, nil]
          optional :url, String

          # @!method initialize(colors: nil, mode: nil, resolution: nil, type: nil, url: nil)
          #   Some parameter documentations has been truncated, see
          #   {BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo} for more
          #   details.
          #
          #   @param colors [Array<BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo::Color>] Array of colors in the logo
          #
          #   @param mode [Symbol, BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo::Mode] Indicates when this logo is best used: 'light' = best for light mode, 'dark' = b
          #
          #   @param resolution [BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo::Resolution] Resolution of the logo image
          #
          #   @param type [Symbol, BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo::Type] Type of the logo based on resolution (e.g., 'icon', 'logo')
          #
          #   @param url [String] CDN hosted url of the logo (ready for display)

          class Color < BrandDev::Internal::Type::BaseModel
            # @!attribute hex
            #   Color in hexadecimal format
            #
            #   @return [String, nil]
            optional :hex, String

            # @!attribute name
            #   Name of the color
            #
            #   @return [String, nil]
            optional :name, String

            # @!method initialize(hex: nil, name: nil)
            #   @param hex [String] Color in hexadecimal format
            #
            #   @param name [String] Name of the color
          end

          # Indicates when this logo is best used: 'light' = best for light mode, 'dark' =
          # best for dark mode, 'has_opaque_background' = can be used for either as image
          # has its own background
          #
          # @see BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo#mode
          module Mode
            extend BrandDev::Internal::Type::Enum

            LIGHT = :light
            DARK = :dark
            HAS_OPAQUE_BACKGROUND = :has_opaque_background

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo#resolution
          class Resolution < BrandDev::Internal::Type::BaseModel
            # @!attribute aspect_ratio
            #   Aspect ratio of the image (width/height)
            #
            #   @return [Float, nil]
            optional :aspect_ratio, Float

            # @!attribute height
            #   Height of the image in pixels
            #
            #   @return [Integer, nil]
            optional :height, Integer

            # @!attribute width
            #   Width of the image in pixels
            #
            #   @return [Integer, nil]
            optional :width, Integer

            # @!method initialize(aspect_ratio: nil, height: nil, width: nil)
            #   Resolution of the logo image
            #
            #   @param aspect_ratio [Float] Aspect ratio of the image (width/height)
            #
            #   @param height [Integer] Height of the image in pixels
            #
            #   @param width [Integer] Width of the image in pixels
          end

          # Type of the logo based on resolution (e.g., 'icon', 'logo')
          #
          # @see BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo#type
          module Type
            extend BrandDev::Internal::Type::Enum

            ICON = :icon
            LOGO = :logo

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
