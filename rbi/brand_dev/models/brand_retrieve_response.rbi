# typed: strong

module BrandDev
  module Models
    class BrandRetrieveResponse < BrandDev::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            BrandDev::Models::BrandRetrieveResponse,
            BrandDev::Internal::AnyHash
          )
        end

      # Detailed brand information
      sig { returns(T.nilable(BrandDev::Models::BrandRetrieveResponse::Brand)) }
      attr_reader :brand

      sig do
        params(
          brand: BrandDev::Models::BrandRetrieveResponse::Brand::OrHash
        ).void
      end
      attr_writer :brand

      # HTTP status code
      sig { returns(T.nilable(Integer)) }
      attr_reader :code

      sig { params(code: Integer).void }
      attr_writer :code

      # Status of the response, e.g., 'ok'
      sig { returns(T.nilable(String)) }
      attr_reader :status

      sig { params(status: String).void }
      attr_writer :status

      sig do
        params(
          brand: BrandDev::Models::BrandRetrieveResponse::Brand::OrHash,
          code: Integer,
          status: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Detailed brand information
        brand: nil,
        # HTTP status code
        code: nil,
        # Status of the response, e.g., 'ok'
        status: nil
      )
      end

      sig do
        override.returns(
          {
            brand: BrandDev::Models::BrandRetrieveResponse::Brand,
            code: Integer,
            status: String
          }
        )
      end
      def to_hash
      end

      class Brand < BrandDev::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              BrandDev::Models::BrandRetrieveResponse::Brand,
              BrandDev::Internal::AnyHash
            )
          end

        # Physical address of the brand
        sig do
          returns(
            T.nilable(BrandDev::Models::BrandRetrieveResponse::Brand::Address)
          )
        end
        attr_reader :address

        sig do
          params(
            address:
              BrandDev::Models::BrandRetrieveResponse::Brand::Address::OrHash
          ).void
        end
        attr_writer :address

        # An array of backdrop images for the brand
        sig do
          returns(
            T.nilable(
              T::Array[BrandDev::Models::BrandRetrieveResponse::Brand::Backdrop]
            )
          )
        end
        attr_reader :backdrops

        sig do
          params(
            backdrops:
              T::Array[
                BrandDev::Models::BrandRetrieveResponse::Brand::Backdrop::OrHash
              ]
          ).void
        end
        attr_writer :backdrops

        # An array of brand colors
        sig do
          returns(
            T.nilable(
              T::Array[BrandDev::Models::BrandRetrieveResponse::Brand::Color]
            )
          )
        end
        attr_reader :colors

        sig do
          params(
            colors:
              T::Array[
                BrandDev::Models::BrandRetrieveResponse::Brand::Color::OrHash
              ]
          ).void
        end
        attr_writer :colors

        # A brief description of the brand
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # The domain name of the brand
        sig { returns(T.nilable(String)) }
        attr_reader :domain

        sig { params(domain: String).void }
        attr_writer :domain

        # An array of fonts used by the brand's website
        sig do
          returns(
            T.nilable(
              T::Array[BrandDev::Models::BrandRetrieveResponse::Brand::Font]
            )
          )
        end
        attr_reader :fonts

        sig do
          params(
            fonts:
              T::Array[
                BrandDev::Models::BrandRetrieveResponse::Brand::Font::OrHash
              ]
          ).void
        end
        attr_writer :fonts

        # An array of logos associated with the brand
        sig do
          returns(
            T.nilable(
              T::Array[BrandDev::Models::BrandRetrieveResponse::Brand::Logo]
            )
          )
        end
        attr_reader :logos

        sig do
          params(
            logos:
              T::Array[
                BrandDev::Models::BrandRetrieveResponse::Brand::Logo::OrHash
              ]
          ).void
        end
        attr_writer :logos

        # The brand's slogan
        sig { returns(T.nilable(String)) }
        attr_reader :slogan

        sig { params(slogan: String).void }
        attr_writer :slogan

        # An array of social media links for the brand
        sig do
          returns(
            T.nilable(
              T::Array[BrandDev::Models::BrandRetrieveResponse::Brand::Social]
            )
          )
        end
        attr_reader :socials

        sig do
          params(
            socials:
              T::Array[
                BrandDev::Models::BrandRetrieveResponse::Brand::Social::OrHash
              ]
          ).void
        end
        attr_writer :socials

        # Stock market information for this brand (will be null if not a publicly traded
        # company)
        sig do
          returns(
            T.nilable(BrandDev::Models::BrandRetrieveResponse::Brand::Stock)
          )
        end
        attr_reader :stock

        sig do
          params(
            stock: BrandDev::Models::BrandRetrieveResponse::Brand::Stock::OrHash
          ).void
        end
        attr_writer :stock

        # The title or name of the brand
        sig { returns(T.nilable(String)) }
        attr_reader :title

        sig { params(title: String).void }
        attr_writer :title

        # Detailed brand information
        sig do
          params(
            address:
              BrandDev::Models::BrandRetrieveResponse::Brand::Address::OrHash,
            backdrops:
              T::Array[
                BrandDev::Models::BrandRetrieveResponse::Brand::Backdrop::OrHash
              ],
            colors:
              T::Array[
                BrandDev::Models::BrandRetrieveResponse::Brand::Color::OrHash
              ],
            description: String,
            domain: String,
            fonts:
              T::Array[
                BrandDev::Models::BrandRetrieveResponse::Brand::Font::OrHash
              ],
            logos:
              T::Array[
                BrandDev::Models::BrandRetrieveResponse::Brand::Logo::OrHash
              ],
            slogan: String,
            socials:
              T::Array[
                BrandDev::Models::BrandRetrieveResponse::Brand::Social::OrHash
              ],
            stock:
              BrandDev::Models::BrandRetrieveResponse::Brand::Stock::OrHash,
            title: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Physical address of the brand
          address: nil,
          # An array of backdrop images for the brand
          backdrops: nil,
          # An array of brand colors
          colors: nil,
          # A brief description of the brand
          description: nil,
          # The domain name of the brand
          domain: nil,
          # An array of fonts used by the brand's website
          fonts: nil,
          # An array of logos associated with the brand
          logos: nil,
          # The brand's slogan
          slogan: nil,
          # An array of social media links for the brand
          socials: nil,
          # Stock market information for this brand (will be null if not a publicly traded
          # company)
          stock: nil,
          # The title or name of the brand
          title: nil
        )
        end

        sig do
          override.returns(
            {
              address: BrandDev::Models::BrandRetrieveResponse::Brand::Address,
              backdrops:
                T::Array[
                  BrandDev::Models::BrandRetrieveResponse::Brand::Backdrop
                ],
              colors:
                T::Array[BrandDev::Models::BrandRetrieveResponse::Brand::Color],
              description: String,
              domain: String,
              fonts:
                T::Array[BrandDev::Models::BrandRetrieveResponse::Brand::Font],
              logos:
                T::Array[BrandDev::Models::BrandRetrieveResponse::Brand::Logo],
              slogan: String,
              socials:
                T::Array[
                  BrandDev::Models::BrandRetrieveResponse::Brand::Social
                ],
              stock: BrandDev::Models::BrandRetrieveResponse::Brand::Stock,
              title: String
            }
          )
        end
        def to_hash
        end

        class Address < BrandDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                BrandDev::Models::BrandRetrieveResponse::Brand::Address,
                BrandDev::Internal::AnyHash
              )
            end

          # City name
          sig { returns(T.nilable(String)) }
          attr_reader :city

          sig { params(city: String).void }
          attr_writer :city

          # Country name
          sig { returns(T.nilable(String)) }
          attr_reader :country

          sig { params(country: String).void }
          attr_writer :country

          # Country code
          sig { returns(T.nilable(String)) }
          attr_reader :country_code

          sig { params(country_code: String).void }
          attr_writer :country_code

          # Postal or ZIP code
          sig { returns(T.nilable(String)) }
          attr_reader :postal_code

          sig { params(postal_code: String).void }
          attr_writer :postal_code

          # State or province code
          sig { returns(T.nilable(String)) }
          attr_reader :state_code

          sig { params(state_code: String).void }
          attr_writer :state_code

          # State or province name
          sig { returns(T.nilable(String)) }
          attr_reader :state_province

          sig { params(state_province: String).void }
          attr_writer :state_province

          # Street address
          sig { returns(T.nilable(String)) }
          attr_reader :street

          sig { params(street: String).void }
          attr_writer :street

          # Physical address of the brand
          sig do
            params(
              city: String,
              country: String,
              country_code: String,
              postal_code: String,
              state_code: String,
              state_province: String,
              street: String
            ).returns(T.attached_class)
          end
          def self.new(
            # City name
            city: nil,
            # Country name
            country: nil,
            # Country code
            country_code: nil,
            # Postal or ZIP code
            postal_code: nil,
            # State or province code
            state_code: nil,
            # State or province name
            state_province: nil,
            # Street address
            street: nil
          )
          end

          sig do
            override.returns(
              {
                city: String,
                country: String,
                country_code: String,
                postal_code: String,
                state_code: String,
                state_province: String,
                street: String
              }
            )
          end
          def to_hash
          end
        end

        class Backdrop < BrandDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                BrandDev::Models::BrandRetrieveResponse::Brand::Backdrop,
                BrandDev::Internal::AnyHash
              )
            end

          # Array of colors in the backdrop image
          sig do
            returns(
              T.nilable(
                T::Array[
                  BrandDev::Models::BrandRetrieveResponse::Brand::Backdrop::Color
                ]
              )
            )
          end
          attr_reader :colors

          sig do
            params(
              colors:
                T::Array[
                  BrandDev::Models::BrandRetrieveResponse::Brand::Backdrop::Color::OrHash
                ]
            ).void
          end
          attr_writer :colors

          # Resolution of the backdrop image
          sig do
            returns(
              T.nilable(
                BrandDev::Models::BrandRetrieveResponse::Brand::Backdrop::Resolution
              )
            )
          end
          attr_reader :resolution

          sig do
            params(
              resolution:
                BrandDev::Models::BrandRetrieveResponse::Brand::Backdrop::Resolution::OrHash
            ).void
          end
          attr_writer :resolution

          # URL of the backdrop image
          sig { returns(T.nilable(String)) }
          attr_reader :url

          sig { params(url: String).void }
          attr_writer :url

          sig do
            params(
              colors:
                T::Array[
                  BrandDev::Models::BrandRetrieveResponse::Brand::Backdrop::Color::OrHash
                ],
              resolution:
                BrandDev::Models::BrandRetrieveResponse::Brand::Backdrop::Resolution::OrHash,
              url: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Array of colors in the backdrop image
            colors: nil,
            # Resolution of the backdrop image
            resolution: nil,
            # URL of the backdrop image
            url: nil
          )
          end

          sig do
            override.returns(
              {
                colors:
                  T::Array[
                    BrandDev::Models::BrandRetrieveResponse::Brand::Backdrop::Color
                  ],
                resolution:
                  BrandDev::Models::BrandRetrieveResponse::Brand::Backdrop::Resolution,
                url: String
              }
            )
          end
          def to_hash
          end

          class Color < BrandDev::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  BrandDev::Models::BrandRetrieveResponse::Brand::Backdrop::Color,
                  BrandDev::Internal::AnyHash
                )
              end

            # Color in hexadecimal format
            sig { returns(T.nilable(String)) }
            attr_reader :hex

            sig { params(hex: String).void }
            attr_writer :hex

            # Name of the color
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig { params(hex: String, name: String).returns(T.attached_class) }
            def self.new(
              # Color in hexadecimal format
              hex: nil,
              # Name of the color
              name: nil
            )
            end

            sig { override.returns({ hex: String, name: String }) }
            def to_hash
            end
          end

          class Resolution < BrandDev::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  BrandDev::Models::BrandRetrieveResponse::Brand::Backdrop::Resolution,
                  BrandDev::Internal::AnyHash
                )
              end

            # Height of the image in pixels
            sig { returns(T.nilable(Integer)) }
            attr_reader :height

            sig { params(height: Integer).void }
            attr_writer :height

            # Width of the image in pixels
            sig { returns(T.nilable(Integer)) }
            attr_reader :width

            sig { params(width: Integer).void }
            attr_writer :width

            # Resolution of the backdrop image
            sig do
              params(height: Integer, width: Integer).returns(T.attached_class)
            end
            def self.new(
              # Height of the image in pixels
              height: nil,
              # Width of the image in pixels
              width: nil
            )
            end

            sig { override.returns({ height: Integer, width: Integer }) }
            def to_hash
            end
          end
        end

        class Color < BrandDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                BrandDev::Models::BrandRetrieveResponse::Brand::Color,
                BrandDev::Internal::AnyHash
              )
            end

          # Color in hexadecimal format
          sig { returns(T.nilable(String)) }
          attr_reader :hex

          sig { params(hex: String).void }
          attr_writer :hex

          # Name of the color
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig { params(hex: String, name: String).returns(T.attached_class) }
          def self.new(
            # Color in hexadecimal format
            hex: nil,
            # Name of the color
            name: nil
          )
          end

          sig { override.returns({ hex: String, name: String }) }
          def to_hash
          end
        end

        class Font < BrandDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                BrandDev::Models::BrandRetrieveResponse::Brand::Font,
                BrandDev::Internal::AnyHash
              )
            end

          # Name of the font
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # Usage of the font, e.g., 'title', 'body', 'button'
          sig { returns(T.nilable(String)) }
          attr_reader :usage

          sig { params(usage: String).void }
          attr_writer :usage

          sig { params(name: String, usage: String).returns(T.attached_class) }
          def self.new(
            # Name of the font
            name: nil,
            # Usage of the font, e.g., 'title', 'body', 'button'
            usage: nil
          )
          end

          sig { override.returns({ name: String, usage: String }) }
          def to_hash
          end
        end

        class Logo < BrandDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                BrandDev::Models::BrandRetrieveResponse::Brand::Logo,
                BrandDev::Internal::AnyHash
              )
            end

          # Array of colors in the logo
          sig do
            returns(
              T.nilable(
                T::Array[
                  BrandDev::Models::BrandRetrieveResponse::Brand::Logo::Color
                ]
              )
            )
          end
          attr_reader :colors

          sig do
            params(
              colors:
                T::Array[
                  BrandDev::Models::BrandRetrieveResponse::Brand::Logo::Color::OrHash
                ]
            ).void
          end
          attr_writer :colors

          # Group identifier for logos
          sig { returns(T.nilable(Integer)) }
          attr_reader :group

          sig { params(group: Integer).void }
          attr_writer :group

          # Mode of the logo, e.g., 'dark', 'light'
          sig { returns(T.nilable(String)) }
          attr_reader :mode

          sig { params(mode: String).void }
          attr_writer :mode

          # Resolution of the logo image
          sig do
            returns(
              T.nilable(
                BrandDev::Models::BrandRetrieveResponse::Brand::Logo::Resolution
              )
            )
          end
          attr_reader :resolution

          sig do
            params(
              resolution:
                BrandDev::Models::BrandRetrieveResponse::Brand::Logo::Resolution::OrHash
            ).void
          end
          attr_writer :resolution

          # URL of the logo image
          sig { returns(T.nilable(String)) }
          attr_reader :url

          sig { params(url: String).void }
          attr_writer :url

          sig do
            params(
              colors:
                T::Array[
                  BrandDev::Models::BrandRetrieveResponse::Brand::Logo::Color::OrHash
                ],
              group: Integer,
              mode: String,
              resolution:
                BrandDev::Models::BrandRetrieveResponse::Brand::Logo::Resolution::OrHash,
              url: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Array of colors in the logo
            colors: nil,
            # Group identifier for logos
            group: nil,
            # Mode of the logo, e.g., 'dark', 'light'
            mode: nil,
            # Resolution of the logo image
            resolution: nil,
            # URL of the logo image
            url: nil
          )
          end

          sig do
            override.returns(
              {
                colors:
                  T::Array[
                    BrandDev::Models::BrandRetrieveResponse::Brand::Logo::Color
                  ],
                group: Integer,
                mode: String,
                resolution:
                  BrandDev::Models::BrandRetrieveResponse::Brand::Logo::Resolution,
                url: String
              }
            )
          end
          def to_hash
          end

          class Color < BrandDev::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  BrandDev::Models::BrandRetrieveResponse::Brand::Logo::Color,
                  BrandDev::Internal::AnyHash
                )
              end

            # Color in hexadecimal format
            sig { returns(T.nilable(String)) }
            attr_reader :hex

            sig { params(hex: String).void }
            attr_writer :hex

            # Name of the color
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig { params(hex: String, name: String).returns(T.attached_class) }
            def self.new(
              # Color in hexadecimal format
              hex: nil,
              # Name of the color
              name: nil
            )
            end

            sig { override.returns({ hex: String, name: String }) }
            def to_hash
            end
          end

          class Resolution < BrandDev::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  BrandDev::Models::BrandRetrieveResponse::Brand::Logo::Resolution,
                  BrandDev::Internal::AnyHash
                )
              end

            # Height of the image in pixels
            sig { returns(T.nilable(Integer)) }
            attr_reader :height

            sig { params(height: Integer).void }
            attr_writer :height

            # Width of the image in pixels
            sig { returns(T.nilable(Integer)) }
            attr_reader :width

            sig { params(width: Integer).void }
            attr_writer :width

            # Resolution of the logo image
            sig do
              params(height: Integer, width: Integer).returns(T.attached_class)
            end
            def self.new(
              # Height of the image in pixels
              height: nil,
              # Width of the image in pixels
              width: nil
            )
            end

            sig { override.returns({ height: Integer, width: Integer }) }
            def to_hash
            end
          end
        end

        class Social < BrandDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                BrandDev::Models::BrandRetrieveResponse::Brand::Social,
                BrandDev::Internal::AnyHash
              )
            end

          # Type of social media, e.g., 'facebook', 'twitter'
          sig { returns(T.nilable(String)) }
          attr_reader :type

          sig { params(type: String).void }
          attr_writer :type

          # URL of the social media page
          sig { returns(T.nilable(String)) }
          attr_reader :url

          sig { params(url: String).void }
          attr_writer :url

          sig { params(type: String, url: String).returns(T.attached_class) }
          def self.new(
            # Type of social media, e.g., 'facebook', 'twitter'
            type: nil,
            # URL of the social media page
            url: nil
          )
          end

          sig { override.returns({ type: String, url: String }) }
          def to_hash
          end
        end

        class Stock < BrandDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                BrandDev::Models::BrandRetrieveResponse::Brand::Stock,
                BrandDev::Internal::AnyHash
              )
            end

          # Stock exchange name
          sig { returns(T.nilable(String)) }
          attr_reader :exchange

          sig { params(exchange: String).void }
          attr_writer :exchange

          # Stock ticker symbol
          sig { returns(T.nilable(String)) }
          attr_reader :ticker

          sig { params(ticker: String).void }
          attr_writer :ticker

          # Stock market information for this brand (will be null if not a publicly traded
          # company)
          sig do
            params(exchange: String, ticker: String).returns(T.attached_class)
          end
          def self.new(
            # Stock exchange name
            exchange: nil,
            # Stock ticker symbol
            ticker: nil
          )
          end

          sig { override.returns({ exchange: String, ticker: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
