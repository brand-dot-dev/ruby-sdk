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

        # @!attribute fonts
        #   An array of fonts used by the brand's website
        #
        #   @return [Array<BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Font>, nil]
        optional :fonts,
                 -> { BrandDev::Internal::Type::ArrayOf[BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Font] }

        # @!attribute logos
        #   An array of logos associated with the brand
        #
        #   @return [Array<BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo>, nil]
        optional :logos,
                 -> { BrandDev::Internal::Type::ArrayOf[BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo] }

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

        # @!method initialize(address: nil, backdrops: nil, colors: nil, description: nil, domain: nil, fonts: nil, logos: nil, slogan: nil, socials: nil, stock: nil, title: nil)
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
        #   @param fonts [Array<BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Font>] An array of fonts used by the brand's website
        #
        #   @param logos [Array<BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo>] An array of logos associated with the brand
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

            # @!method initialize(height: nil, width: nil)
            #   Resolution of the backdrop image
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

        class Font < BrandDev::Internal::Type::BaseModel
          # @!attribute name
          #   Name of the font
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute usage
          #   Usage of the font, e.g., 'title', 'body', 'button'
          #
          #   @return [String, nil]
          optional :usage, String

          # @!method initialize(name: nil, usage: nil)
          #   @param name [String] Name of the font
          #
          #   @param usage [String] Usage of the font, e.g., 'title', 'body', 'button'
        end

        class Logo < BrandDev::Internal::Type::BaseModel
          # @!attribute colors
          #   Array of colors in the logo
          #
          #   @return [Array<BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Color>, nil]
          optional :colors,
                   -> { BrandDev::Internal::Type::ArrayOf[BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Color] }

          # @!attribute group
          #   Group identifier for logos
          #
          #   @return [Integer, nil]
          optional :group, Integer

          # @!attribute mode
          #   Mode of the logo, e.g., 'dark', 'light'
          #
          #   @return [String, nil]
          optional :mode, String

          # @!attribute resolution
          #   Resolution of the logo image
          #
          #   @return [BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Resolution, nil]
          optional :resolution,
                   -> { BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Resolution }

          # @!attribute url
          #   URL of the logo image
          #
          #   @return [String, nil]
          optional :url, String

          # @!method initialize(colors: nil, group: nil, mode: nil, resolution: nil, url: nil)
          #   @param colors [Array<BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Color>] Array of colors in the logo
          #
          #   @param group [Integer] Group identifier for logos
          #
          #   @param mode [String] Mode of the logo, e.g., 'dark', 'light'
          #
          #   @param resolution [BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Resolution] Resolution of the logo image
          #
          #   @param url [String] URL of the logo image

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

          # @see BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo#resolution
          class Resolution < BrandDev::Internal::Type::BaseModel
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

            # @!method initialize(height: nil, width: nil)
            #   Resolution of the logo image
            #
            #   @param height [Integer] Height of the image in pixels
            #
            #   @param width [Integer] Width of the image in pixels
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
