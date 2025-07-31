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

        # Company email address
        sig { returns(T.nilable(String)) }
        attr_reader :email

        sig { params(email: String).void }
        attr_writer :email

        # Indicates whether the brand content is not safe for work (NSFW)
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_nsfw

        sig { params(is_nsfw: T::Boolean).void }
        attr_writer :is_nsfw

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

        # Company phone number
        sig { returns(T.nilable(String)) }
        attr_reader :phone

        sig { params(phone: String).void }
        attr_writer :phone

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
            email: String,
            is_nsfw: T::Boolean,
            logos:
              T::Array[
                BrandDev::Models::BrandRetrieveResponse::Brand::Logo::OrHash
              ],
            phone: String,
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
          # Company email address
          email: nil,
          # Indicates whether the brand content is not safe for work (NSFW)
          is_nsfw: nil,
          # An array of logos associated with the brand
          logos: nil,
          # Company phone number
          phone: nil,
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
              email: String,
              is_nsfw: T::Boolean,
              logos:
                T::Array[BrandDev::Models::BrandRetrieveResponse::Brand::Logo],
              phone: String,
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

            # Aspect ratio of the image (width/height)
            sig { returns(T.nilable(Float)) }
            attr_reader :aspect_ratio

            sig { params(aspect_ratio: Float).void }
            attr_writer :aspect_ratio

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
              params(
                aspect_ratio: Float,
                height: Integer,
                width: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              # Aspect ratio of the image (width/height)
              aspect_ratio: nil,
              # Height of the image in pixels
              height: nil,
              # Width of the image in pixels
              width: nil
            )
            end

            sig do
              override.returns(
                { aspect_ratio: Float, height: Integer, width: Integer }
              )
            end
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

          # Indicates when this logo is best used: 'light' = best for light mode, 'dark' =
          # best for dark mode, 'has_opaque_background' = can be used for either as image
          # has its own background
          sig do
            returns(
              T.nilable(
                BrandDev::Models::BrandRetrieveResponse::Brand::Logo::Mode::TaggedSymbol
              )
            )
          end
          attr_reader :mode

          sig do
            params(
              mode:
                BrandDev::Models::BrandRetrieveResponse::Brand::Logo::Mode::OrSymbol
            ).void
          end
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

          # Type of the logo based on resolution (e.g., 'icon', 'logo')
          sig do
            returns(
              T.nilable(
                BrandDev::Models::BrandRetrieveResponse::Brand::Logo::Type::TaggedSymbol
              )
            )
          end
          attr_reader :type

          sig do
            params(
              type:
                BrandDev::Models::BrandRetrieveResponse::Brand::Logo::Type::OrSymbol
            ).void
          end
          attr_writer :type

          # CDN hosted url of the logo (ready for display)
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
              mode:
                BrandDev::Models::BrandRetrieveResponse::Brand::Logo::Mode::OrSymbol,
              resolution:
                BrandDev::Models::BrandRetrieveResponse::Brand::Logo::Resolution::OrHash,
              type:
                BrandDev::Models::BrandRetrieveResponse::Brand::Logo::Type::OrSymbol,
              url: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Array of colors in the logo
            colors: nil,
            # Indicates when this logo is best used: 'light' = best for light mode, 'dark' =
            # best for dark mode, 'has_opaque_background' = can be used for either as image
            # has its own background
            mode: nil,
            # Resolution of the logo image
            resolution: nil,
            # Type of the logo based on resolution (e.g., 'icon', 'logo')
            type: nil,
            # CDN hosted url of the logo (ready for display)
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
                mode:
                  BrandDev::Models::BrandRetrieveResponse::Brand::Logo::Mode::TaggedSymbol,
                resolution:
                  BrandDev::Models::BrandRetrieveResponse::Brand::Logo::Resolution,
                type:
                  BrandDev::Models::BrandRetrieveResponse::Brand::Logo::Type::TaggedSymbol,
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

          # Indicates when this logo is best used: 'light' = best for light mode, 'dark' =
          # best for dark mode, 'has_opaque_background' = can be used for either as image
          # has its own background
          module Mode
            extend BrandDev::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  BrandDev::Models::BrandRetrieveResponse::Brand::Logo::Mode
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            LIGHT =
              T.let(
                :light,
                BrandDev::Models::BrandRetrieveResponse::Brand::Logo::Mode::TaggedSymbol
              )
            DARK =
              T.let(
                :dark,
                BrandDev::Models::BrandRetrieveResponse::Brand::Logo::Mode::TaggedSymbol
              )
            HAS_OPAQUE_BACKGROUND =
              T.let(
                :has_opaque_background,
                BrandDev::Models::BrandRetrieveResponse::Brand::Logo::Mode::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  BrandDev::Models::BrandRetrieveResponse::Brand::Logo::Mode::TaggedSymbol
                ]
              )
            end
            def self.values
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

            # Aspect ratio of the image (width/height)
            sig { returns(T.nilable(Float)) }
            attr_reader :aspect_ratio

            sig { params(aspect_ratio: Float).void }
            attr_writer :aspect_ratio

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
              params(
                aspect_ratio: Float,
                height: Integer,
                width: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              # Aspect ratio of the image (width/height)
              aspect_ratio: nil,
              # Height of the image in pixels
              height: nil,
              # Width of the image in pixels
              width: nil
            )
            end

            sig do
              override.returns(
                { aspect_ratio: Float, height: Integer, width: Integer }
              )
            end
            def to_hash
            end
          end

          # Type of the logo based on resolution (e.g., 'icon', 'logo')
          module Type
            extend BrandDev::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  BrandDev::Models::BrandRetrieveResponse::Brand::Logo::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ICON =
              T.let(
                :icon,
                BrandDev::Models::BrandRetrieveResponse::Brand::Logo::Type::TaggedSymbol
              )
            LOGO =
              T.let(
                :logo,
                BrandDev::Models::BrandRetrieveResponse::Brand::Logo::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  BrandDev::Models::BrandRetrieveResponse::Brand::Logo::Type::TaggedSymbol
                ]
              )
            end
            def self.values
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
