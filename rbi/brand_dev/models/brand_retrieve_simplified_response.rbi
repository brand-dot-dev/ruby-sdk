# typed: strong

module BrandDev
  module Models
    class BrandRetrieveSimplifiedResponse < BrandDev::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            BrandDev::Models::BrandRetrieveSimplifiedResponse,
            BrandDev::Internal::AnyHash
          )
        end

      # Simplified brand information
      sig do
        returns(
          T.nilable(BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand)
        )
      end
      attr_reader :brand

      sig do
        params(
          brand:
            BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::OrHash
        ).void
      end
      attr_writer :brand

      # HTTP status code of the response
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
          brand:
            BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::OrHash,
          code: Integer,
          status: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Simplified brand information
        brand: nil,
        # HTTP status code of the response
        code: nil,
        # Status of the response, e.g., 'ok'
        status: nil
      )
      end

      sig do
        override.returns(
          {
            brand: BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand,
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
              BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand,
              BrandDev::Internal::AnyHash
            )
          end

        # An array of backdrop images for the brand
        sig do
          returns(
            T.nilable(
              T::Array[
                BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Backdrop
              ]
            )
          )
        end
        attr_reader :backdrops

        sig do
          params(
            backdrops:
              T::Array[
                BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Backdrop::OrHash
              ]
          ).void
        end
        attr_writer :backdrops

        # An array of brand colors
        sig do
          returns(
            T.nilable(
              T::Array[
                BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Color
              ]
            )
          )
        end
        attr_reader :colors

        sig do
          params(
            colors:
              T::Array[
                BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Color::OrHash
              ]
          ).void
        end
        attr_writer :colors

        # The domain name of the brand
        sig { returns(T.nilable(String)) }
        attr_reader :domain

        sig { params(domain: String).void }
        attr_writer :domain

        # An array of logos associated with the brand
        sig do
          returns(
            T.nilable(
              T::Array[
                BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo
              ]
            )
          )
        end
        attr_reader :logos

        sig do
          params(
            logos:
              T::Array[
                BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo::OrHash
              ]
          ).void
        end
        attr_writer :logos

        # The title or name of the brand
        sig { returns(T.nilable(String)) }
        attr_reader :title

        sig { params(title: String).void }
        attr_writer :title

        # Simplified brand information
        sig do
          params(
            backdrops:
              T::Array[
                BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Backdrop::OrHash
              ],
            colors:
              T::Array[
                BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Color::OrHash
              ],
            domain: String,
            logos:
              T::Array[
                BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo::OrHash
              ],
            title: String
          ).returns(T.attached_class)
        end
        def self.new(
          # An array of backdrop images for the brand
          backdrops: nil,
          # An array of brand colors
          colors: nil,
          # The domain name of the brand
          domain: nil,
          # An array of logos associated with the brand
          logos: nil,
          # The title or name of the brand
          title: nil
        )
        end

        sig do
          override.returns(
            {
              backdrops:
                T::Array[
                  BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Backdrop
                ],
              colors:
                T::Array[
                  BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Color
                ],
              domain: String,
              logos:
                T::Array[
                  BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo
                ],
              title: String
            }
          )
        end
        def to_hash
        end

        class Backdrop < BrandDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Backdrop,
                BrandDev::Internal::AnyHash
              )
            end

          # Array of colors in the backdrop image
          sig do
            returns(
              T.nilable(
                T::Array[
                  BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Backdrop::Color
                ]
              )
            )
          end
          attr_reader :colors

          sig do
            params(
              colors:
                T::Array[
                  BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Backdrop::Color::OrHash
                ]
            ).void
          end
          attr_writer :colors

          # Resolution of the backdrop image
          sig do
            returns(
              T.nilable(
                BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Backdrop::Resolution
              )
            )
          end
          attr_reader :resolution

          sig do
            params(
              resolution:
                BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Backdrop::Resolution::OrHash
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
                  BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Backdrop::Color::OrHash
                ],
              resolution:
                BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Backdrop::Resolution::OrHash,
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
                    BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Backdrop::Color
                  ],
                resolution:
                  BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Backdrop::Resolution,
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
                  BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Backdrop::Color,
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
                  BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Backdrop::Resolution,
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
                BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Color,
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
                BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo,
                BrandDev::Internal::AnyHash
              )
            end

          # Array of colors in the logo
          sig do
            returns(
              T.nilable(
                T::Array[
                  BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo::Color
                ]
              )
            )
          end
          attr_reader :colors

          sig do
            params(
              colors:
                T::Array[
                  BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo::Color::OrHash
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
                BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo::Mode::TaggedSymbol
              )
            )
          end
          attr_reader :mode

          sig do
            params(
              mode:
                BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo::Mode::OrSymbol
            ).void
          end
          attr_writer :mode

          # Resolution of the logo image
          sig do
            returns(
              T.nilable(
                BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo::Resolution
              )
            )
          end
          attr_reader :resolution

          sig do
            params(
              resolution:
                BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo::Resolution::OrHash
            ).void
          end
          attr_writer :resolution

          # Type of the logo based on resolution (e.g., 'icon', 'logo')
          sig do
            returns(
              T.nilable(
                BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo::Type::TaggedSymbol
              )
            )
          end
          attr_reader :type

          sig do
            params(
              type:
                BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo::Type::OrSymbol
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
                  BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo::Color::OrHash
                ],
              mode:
                BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo::Mode::OrSymbol,
              resolution:
                BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo::Resolution::OrHash,
              type:
                BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo::Type::OrSymbol,
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
                    BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo::Color
                  ],
                mode:
                  BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo::Mode::TaggedSymbol,
                resolution:
                  BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo::Resolution,
                type:
                  BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo::Type::TaggedSymbol,
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
                  BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo::Color,
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
                  BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo::Mode
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            LIGHT =
              T.let(
                :light,
                BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo::Mode::TaggedSymbol
              )
            DARK =
              T.let(
                :dark,
                BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo::Mode::TaggedSymbol
              )
            HAS_OPAQUE_BACKGROUND =
              T.let(
                :has_opaque_background,
                BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo::Mode::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo::Mode::TaggedSymbol
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
                  BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo::Resolution,
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
                  BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ICON =
              T.let(
                :icon,
                BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo::Type::TaggedSymbol
              )
            LOGO =
              T.let(
                :logo,
                BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand::Logo::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
