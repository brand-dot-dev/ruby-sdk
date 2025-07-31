# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#identify_from_transaction
    class BrandIdentifyFromTransactionResponse < BrandDev::Internal::Type::BaseModel
      # @!attribute brand
      #   Detailed brand information
      #
      #   @return [BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand, nil]
      optional :brand, -> { BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand }

      # @!attribute code
      #   HTTP status code
      #
      #   @return [Integer, nil]
      optional :code, Integer

      # @!attribute status
      #   Status of the response, e.g., 'ok'
      #
      #   @return [String, nil]
      optional :status, String

      # @!method initialize(brand: nil, code: nil, status: nil)
      #   @param brand [BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand] Detailed brand information
      #
      #   @param code [Integer] HTTP status code
      #
      #   @param status [String] Status of the response, e.g., 'ok'

      # @see BrandDev::Models::BrandIdentifyFromTransactionResponse#brand
      class Brand < BrandDev::Internal::Type::BaseModel
        # @!attribute address
        #   Physical address of the brand
        #
        #   @return [BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Address, nil]
        optional :address, -> { BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Address }

        # @!attribute backdrops
        #   An array of backdrop images for the brand
        #
        #   @return [Array<BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Backdrop>, nil]
        optional :backdrops,
                 -> { BrandDev::Internal::Type::ArrayOf[BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Backdrop] }

        # @!attribute colors
        #   An array of brand colors
        #
        #   @return [Array<BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Color>, nil]
        optional :colors,
                 -> { BrandDev::Internal::Type::ArrayOf[BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Color] }

        # @!attribute description
        #   A brief description of the brand
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute domain
        #   The domain name of the brand
        #
        #   @return [String, nil]
        optional :domain, String

        # @!attribute email
        #   Company email address
        #
        #   @return [String, nil]
        optional :email, String

        # @!attribute is_nsfw
        #   Indicates whether the brand content is not safe for work (NSFW)
        #
        #   @return [Boolean, nil]
        optional :is_nsfw, BrandDev::Internal::Type::Boolean

        # @!attribute logos
        #   An array of logos associated with the brand
        #
        #   @return [Array<BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo>, nil]
        optional :logos,
                 -> { BrandDev::Internal::Type::ArrayOf[BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo] }

        # @!attribute phone
        #   Company phone number
        #
        #   @return [String, nil]
        optional :phone, String

        # @!attribute slogan
        #   The brand's slogan
        #
        #   @return [String, nil]
        optional :slogan, String

        # @!attribute socials
        #   An array of social media links for the brand
        #
        #   @return [Array<BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Social>, nil]
        optional :socials,
                 -> { BrandDev::Internal::Type::ArrayOf[BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Social] }

        # @!attribute stock
        #   Stock market information for this brand (will be null if not a publicly traded
        #   company)
        #
        #   @return [BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Stock, nil]
        optional :stock, -> { BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Stock }

        # @!attribute title
        #   The title or name of the brand
        #
        #   @return [String, nil]
        optional :title, String

        # @!method initialize(address: nil, backdrops: nil, colors: nil, description: nil, domain: nil, email: nil, is_nsfw: nil, logos: nil, phone: nil, slogan: nil, socials: nil, stock: nil, title: nil)
        #   Some parameter documentations has been truncated, see
        #   {BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand} for more
        #   details.
        #
        #   Detailed brand information
        #
        #   @param address [BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Address] Physical address of the brand
        #
        #   @param backdrops [Array<BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Backdrop>] An array of backdrop images for the brand
        #
        #   @param colors [Array<BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Color>] An array of brand colors
        #
        #   @param description [String] A brief description of the brand
        #
        #   @param domain [String] The domain name of the brand
        #
        #   @param email [String] Company email address
        #
        #   @param is_nsfw [Boolean] Indicates whether the brand content is not safe for work (NSFW)
        #
        #   @param logos [Array<BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo>] An array of logos associated with the brand
        #
        #   @param phone [String] Company phone number
        #
        #   @param slogan [String] The brand's slogan
        #
        #   @param socials [Array<BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Social>] An array of social media links for the brand
        #
        #   @param stock [BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Stock] Stock market information for this brand (will be null if not a publicly traded c
        #
        #   @param title [String] The title or name of the brand

        # @see BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand#address
        class Address < BrandDev::Internal::Type::BaseModel
          # @!attribute city
          #   City name
          #
          #   @return [String, nil]
          optional :city, String

          # @!attribute country
          #   Country name
          #
          #   @return [String, nil]
          optional :country, String

          # @!attribute country_code
          #   Country code
          #
          #   @return [String, nil]
          optional :country_code, String

          # @!attribute postal_code
          #   Postal or ZIP code
          #
          #   @return [String, nil]
          optional :postal_code, String

          # @!attribute state_code
          #   State or province code
          #
          #   @return [String, nil]
          optional :state_code, String

          # @!attribute state_province
          #   State or province name
          #
          #   @return [String, nil]
          optional :state_province, String

          # @!attribute street
          #   Street address
          #
          #   @return [String, nil]
          optional :street, String

          # @!method initialize(city: nil, country: nil, country_code: nil, postal_code: nil, state_code: nil, state_province: nil, street: nil)
          #   Physical address of the brand
          #
          #   @param city [String] City name
          #
          #   @param country [String] Country name
          #
          #   @param country_code [String] Country code
          #
          #   @param postal_code [String] Postal or ZIP code
          #
          #   @param state_code [String] State or province code
          #
          #   @param state_province [String] State or province name
          #
          #   @param street [String] Street address
        end

        class Backdrop < BrandDev::Internal::Type::BaseModel
          # @!attribute colors
          #   Array of colors in the backdrop image
          #
          #   @return [Array<BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Backdrop::Color>, nil]
          optional :colors,
                   -> { BrandDev::Internal::Type::ArrayOf[BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Backdrop::Color] }

          # @!attribute resolution
          #   Resolution of the backdrop image
          #
          #   @return [BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Backdrop::Resolution, nil]
          optional :resolution,
                   -> { BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Backdrop::Resolution }

          # @!attribute url
          #   URL of the backdrop image
          #
          #   @return [String, nil]
          optional :url, String

          # @!method initialize(colors: nil, resolution: nil, url: nil)
          #   @param colors [Array<BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Backdrop::Color>] Array of colors in the backdrop image
          #
          #   @param resolution [BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Backdrop::Resolution] Resolution of the backdrop image
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

          # @see BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Backdrop#resolution
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
          #   @return [Array<BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Color>, nil]
          optional :colors,
                   -> { BrandDev::Internal::Type::ArrayOf[BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Color] }

          # @!attribute mode
          #   Indicates when this logo is best used: 'light' = best for light mode, 'dark' =
          #   best for dark mode, 'has_opaque_background' = can be used for either as image
          #   has its own background
          #
          #   @return [Symbol, BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Mode, nil]
          optional :mode, enum: -> { BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Mode }

          # @!attribute resolution
          #   Resolution of the logo image
          #
          #   @return [BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Resolution, nil]
          optional :resolution,
                   -> { BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Resolution }

          # @!attribute type
          #   Type of the logo based on resolution (e.g., 'icon', 'logo')
          #
          #   @return [Symbol, BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Type, nil]
          optional :type, enum: -> { BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Type }

          # @!attribute url
          #   CDN hosted url of the logo (ready for display)
          #
          #   @return [String, nil]
          optional :url, String

          # @!method initialize(colors: nil, mode: nil, resolution: nil, type: nil, url: nil)
          #   Some parameter documentations has been truncated, see
          #   {BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo} for more
          #   details.
          #
          #   @param colors [Array<BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Color>] Array of colors in the logo
          #
          #   @param mode [Symbol, BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Mode] Indicates when this logo is best used: 'light' = best for light mode, 'dark' = b
          #
          #   @param resolution [BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Resolution] Resolution of the logo image
          #
          #   @param type [Symbol, BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Type] Type of the logo based on resolution (e.g., 'icon', 'logo')
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
          # @see BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo#mode
          module Mode
            extend BrandDev::Internal::Type::Enum

            LIGHT = :light
            DARK = :dark
            HAS_OPAQUE_BACKGROUND = :has_opaque_background

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo#resolution
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
          # @see BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo#type
          module Type
            extend BrandDev::Internal::Type::Enum

            ICON = :icon
            LOGO = :logo

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class Social < BrandDev::Internal::Type::BaseModel
          # @!attribute type
          #   Type of social media, e.g., 'facebook', 'twitter'
          #
          #   @return [String, nil]
          optional :type, String

          # @!attribute url
          #   URL of the social media page
          #
          #   @return [String, nil]
          optional :url, String

          # @!method initialize(type: nil, url: nil)
          #   @param type [String] Type of social media, e.g., 'facebook', 'twitter'
          #
          #   @param url [String] URL of the social media page
        end

        # @see BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand#stock
        class Stock < BrandDev::Internal::Type::BaseModel
          # @!attribute exchange
          #   Stock exchange name
          #
          #   @return [String, nil]
          optional :exchange, String

          # @!attribute ticker
          #   Stock ticker symbol
          #
          #   @return [String, nil]
          optional :ticker, String

          # @!method initialize(exchange: nil, ticker: nil)
          #   Stock market information for this brand (will be null if not a publicly traded
          #   company)
          #
          #   @param exchange [String] Stock exchange name
          #
          #   @param ticker [String] Stock ticker symbol
        end
      end
    end
  end
end
