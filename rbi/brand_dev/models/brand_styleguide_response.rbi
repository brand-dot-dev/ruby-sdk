# typed: strong

module BrandDev
  module Models
    class BrandStyleguideResponse < BrandDev::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            BrandDev::Models::BrandStyleguideResponse,
            BrandDev::Internal::AnyHash
          )
        end

      # HTTP status code
      sig { returns(T.nilable(Integer)) }
      attr_reader :code

      sig { params(code: Integer).void }
      attr_writer :code

      # The normalized domain that was processed
      sig { returns(T.nilable(String)) }
      attr_reader :domain

      sig { params(domain: String).void }
      attr_writer :domain

      # Status of the response, e.g., 'ok'
      sig { returns(T.nilable(String)) }
      attr_reader :status

      sig { params(status: String).void }
      attr_writer :status

      # Comprehensive styleguide data extracted from the website
      sig do
        returns(
          T.nilable(BrandDev::Models::BrandStyleguideResponse::Styleguide)
        )
      end
      attr_reader :styleguide

      sig do
        params(
          styleguide:
            BrandDev::Models::BrandStyleguideResponse::Styleguide::OrHash
        ).void
      end
      attr_writer :styleguide

      sig do
        params(
          code: Integer,
          domain: String,
          status: String,
          styleguide:
            BrandDev::Models::BrandStyleguideResponse::Styleguide::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # HTTP status code
        code: nil,
        # The normalized domain that was processed
        domain: nil,
        # Status of the response, e.g., 'ok'
        status: nil,
        # Comprehensive styleguide data extracted from the website
        styleguide: nil
      )
      end

      sig do
        override.returns(
          {
            code: Integer,
            domain: String,
            status: String,
            styleguide: BrandDev::Models::BrandStyleguideResponse::Styleguide
          }
        )
      end
      def to_hash
      end

      class Styleguide < BrandDev::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              BrandDev::Models::BrandStyleguideResponse::Styleguide,
              BrandDev::Internal::AnyHash
            )
          end

        # Primary colors used on the website
        sig do
          returns(
            T.nilable(
              BrandDev::Models::BrandStyleguideResponse::Styleguide::Colors
            )
          )
        end
        attr_reader :colors

        sig do
          params(
            colors:
              BrandDev::Models::BrandStyleguideResponse::Styleguide::Colors::OrHash
          ).void
        end
        attr_writer :colors

        # UI component styles
        sig do
          returns(
            T.nilable(
              BrandDev::Models::BrandStyleguideResponse::Styleguide::Components
            )
          )
        end
        attr_reader :components

        sig do
          params(
            components:
              BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::OrHash
          ).void
        end
        attr_writer :components

        # Spacing system used on the website
        sig do
          returns(
            T.nilable(
              BrandDev::Models::BrandStyleguideResponse::Styleguide::ElementSpacing
            )
          )
        end
        attr_reader :element_spacing

        sig do
          params(
            element_spacing:
              BrandDev::Models::BrandStyleguideResponse::Styleguide::ElementSpacing::OrHash
          ).void
        end
        attr_writer :element_spacing

        # The primary color mode of the website design
        sig do
          returns(
            T.nilable(
              BrandDev::Models::BrandStyleguideResponse::Styleguide::Mode::TaggedSymbol
            )
          )
        end
        attr_reader :mode

        sig do
          params(
            mode:
              BrandDev::Models::BrandStyleguideResponse::Styleguide::Mode::OrSymbol
          ).void
        end
        attr_writer :mode

        # Shadow styles used on the website
        sig do
          returns(
            T.nilable(
              BrandDev::Models::BrandStyleguideResponse::Styleguide::Shadows
            )
          )
        end
        attr_reader :shadows

        sig do
          params(
            shadows:
              BrandDev::Models::BrandStyleguideResponse::Styleguide::Shadows::OrHash
          ).void
        end
        attr_writer :shadows

        # Typography styles used on the website
        sig do
          returns(
            T.nilable(
              BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography
            )
          )
        end
        attr_reader :typography

        sig do
          params(
            typography:
              BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::OrHash
          ).void
        end
        attr_writer :typography

        # Comprehensive styleguide data extracted from the website
        sig do
          params(
            colors:
              BrandDev::Models::BrandStyleguideResponse::Styleguide::Colors::OrHash,
            components:
              BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::OrHash,
            element_spacing:
              BrandDev::Models::BrandStyleguideResponse::Styleguide::ElementSpacing::OrHash,
            mode:
              BrandDev::Models::BrandStyleguideResponse::Styleguide::Mode::OrSymbol,
            shadows:
              BrandDev::Models::BrandStyleguideResponse::Styleguide::Shadows::OrHash,
            typography:
              BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Primary colors used on the website
          colors: nil,
          # UI component styles
          components: nil,
          # Spacing system used on the website
          element_spacing: nil,
          # The primary color mode of the website design
          mode: nil,
          # Shadow styles used on the website
          shadows: nil,
          # Typography styles used on the website
          typography: nil
        )
        end

        sig do
          override.returns(
            {
              colors:
                BrandDev::Models::BrandStyleguideResponse::Styleguide::Colors,
              components:
                BrandDev::Models::BrandStyleguideResponse::Styleguide::Components,
              element_spacing:
                BrandDev::Models::BrandStyleguideResponse::Styleguide::ElementSpacing,
              mode:
                BrandDev::Models::BrandStyleguideResponse::Styleguide::Mode::TaggedSymbol,
              shadows:
                BrandDev::Models::BrandStyleguideResponse::Styleguide::Shadows,
              typography:
                BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography
            }
          )
        end
        def to_hash
        end

        class Colors < BrandDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                BrandDev::Models::BrandStyleguideResponse::Styleguide::Colors,
                BrandDev::Internal::AnyHash
              )
            end

          # Accent color of the website (hex format)
          sig { returns(T.nilable(String)) }
          attr_reader :accent

          sig { params(accent: String).void }
          attr_writer :accent

          # Background color of the website (hex format)
          sig { returns(T.nilable(String)) }
          attr_reader :background

          sig { params(background: String).void }
          attr_writer :background

          # Text color of the website (hex format)
          sig { returns(T.nilable(String)) }
          attr_reader :text

          sig { params(text: String).void }
          attr_writer :text

          # Primary colors used on the website
          sig do
            params(accent: String, background: String, text: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # Accent color of the website (hex format)
            accent: nil,
            # Background color of the website (hex format)
            background: nil,
            # Text color of the website (hex format)
            text: nil
          )
          end

          sig do
            override.returns(
              { accent: String, background: String, text: String }
            )
          end
          def to_hash
          end
        end

        class Components < BrandDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                BrandDev::Models::BrandStyleguideResponse::Styleguide::Components,
                BrandDev::Internal::AnyHash
              )
            end

          # Button component styles
          sig do
            returns(
              T.nilable(
                BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Button
              )
            )
          end
          attr_reader :button

          sig do
            params(
              button:
                BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Button::OrHash
            ).void
          end
          attr_writer :button

          # Card component style
          sig do
            returns(
              T.nilable(
                BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Card
              )
            )
          end
          attr_reader :card

          sig do
            params(
              card:
                BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Card::OrHash
            ).void
          end
          attr_writer :card

          # UI component styles
          sig do
            params(
              button:
                BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Button::OrHash,
              card:
                BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Card::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Button component styles
            button: nil,
            # Card component style
            card: nil
          )
          end

          sig do
            override.returns(
              {
                button:
                  BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Button,
                card:
                  BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Card
              }
            )
          end
          def to_hash
          end

          class Button < BrandDev::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Button,
                  BrandDev::Internal::AnyHash
                )
              end

            # Link button style
            sig do
              returns(
                T.nilable(
                  BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Button::Link
                )
              )
            end
            attr_reader :link

            sig do
              params(
                link:
                  BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Button::Link::OrHash
              ).void
            end
            attr_writer :link

            # Primary button style
            sig do
              returns(
                T.nilable(
                  BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Button::Primary
                )
              )
            end
            attr_reader :primary

            sig do
              params(
                primary:
                  BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Button::Primary::OrHash
              ).void
            end
            attr_writer :primary

            # Secondary button style
            sig do
              returns(
                T.nilable(
                  BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Button::Secondary
                )
              )
            end
            attr_reader :secondary

            sig do
              params(
                secondary:
                  BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Button::Secondary::OrHash
              ).void
            end
            attr_writer :secondary

            # Button component styles
            sig do
              params(
                link:
                  BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Button::Link::OrHash,
                primary:
                  BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Button::Primary::OrHash,
                secondary:
                  BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Button::Secondary::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # Link button style
              link: nil,
              # Primary button style
              primary: nil,
              # Secondary button style
              secondary: nil
            )
            end

            sig do
              override.returns(
                {
                  link:
                    BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Button::Link,
                  primary:
                    BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Button::Primary,
                  secondary:
                    BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Button::Secondary
                }
              )
            end
            def to_hash
            end

            class Link < BrandDev::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Button::Link,
                    BrandDev::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(String)) }
              attr_reader :background_color

              sig { params(background_color: String).void }
              attr_writer :background_color

              sig { returns(T.nilable(String)) }
              attr_reader :border_color

              sig { params(border_color: String).void }
              attr_writer :border_color

              sig { returns(T.nilable(String)) }
              attr_reader :border_radius

              sig { params(border_radius: String).void }
              attr_writer :border_radius

              sig { returns(T.nilable(String)) }
              attr_reader :border_style

              sig { params(border_style: String).void }
              attr_writer :border_style

              sig { returns(T.nilable(String)) }
              attr_reader :border_width

              sig { params(border_width: String).void }
              attr_writer :border_width

              sig { returns(T.nilable(String)) }
              attr_reader :box_shadow

              sig { params(box_shadow: String).void }
              attr_writer :box_shadow

              sig { returns(T.nilable(String)) }
              attr_reader :color

              sig { params(color: String).void }
              attr_writer :color

              sig { returns(T.nilable(String)) }
              attr_reader :font_size

              sig { params(font_size: String).void }
              attr_writer :font_size

              sig { returns(T.nilable(Float)) }
              attr_reader :font_weight

              sig { params(font_weight: Float).void }
              attr_writer :font_weight

              sig { returns(T.nilable(String)) }
              attr_reader :padding

              sig { params(padding: String).void }
              attr_writer :padding

              sig { returns(T.nilable(String)) }
              attr_reader :text_decoration

              sig { params(text_decoration: String).void }
              attr_writer :text_decoration

              # Link button style
              sig do
                params(
                  background_color: String,
                  border_color: String,
                  border_radius: String,
                  border_style: String,
                  border_width: String,
                  box_shadow: String,
                  color: String,
                  font_size: String,
                  font_weight: Float,
                  padding: String,
                  text_decoration: String
                ).returns(T.attached_class)
              end
              def self.new(
                background_color: nil,
                border_color: nil,
                border_radius: nil,
                border_style: nil,
                border_width: nil,
                box_shadow: nil,
                color: nil,
                font_size: nil,
                font_weight: nil,
                padding: nil,
                text_decoration: nil
              )
              end

              sig do
                override.returns(
                  {
                    background_color: String,
                    border_color: String,
                    border_radius: String,
                    border_style: String,
                    border_width: String,
                    box_shadow: String,
                    color: String,
                    font_size: String,
                    font_weight: Float,
                    padding: String,
                    text_decoration: String
                  }
                )
              end
              def to_hash
              end
            end

            class Primary < BrandDev::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Button::Primary,
                    BrandDev::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(String)) }
              attr_reader :background_color

              sig { params(background_color: String).void }
              attr_writer :background_color

              sig { returns(T.nilable(String)) }
              attr_reader :border_color

              sig { params(border_color: String).void }
              attr_writer :border_color

              sig { returns(T.nilable(String)) }
              attr_reader :border_radius

              sig { params(border_radius: String).void }
              attr_writer :border_radius

              sig { returns(T.nilable(String)) }
              attr_reader :border_style

              sig { params(border_style: String).void }
              attr_writer :border_style

              sig { returns(T.nilable(String)) }
              attr_reader :border_width

              sig { params(border_width: String).void }
              attr_writer :border_width

              sig { returns(T.nilable(String)) }
              attr_reader :box_shadow

              sig { params(box_shadow: String).void }
              attr_writer :box_shadow

              sig { returns(T.nilable(String)) }
              attr_reader :color

              sig { params(color: String).void }
              attr_writer :color

              sig { returns(T.nilable(String)) }
              attr_reader :font_size

              sig { params(font_size: String).void }
              attr_writer :font_size

              sig { returns(T.nilable(Float)) }
              attr_reader :font_weight

              sig { params(font_weight: Float).void }
              attr_writer :font_weight

              sig { returns(T.nilable(String)) }
              attr_reader :padding

              sig { params(padding: String).void }
              attr_writer :padding

              sig { returns(T.nilable(String)) }
              attr_reader :text_decoration

              sig { params(text_decoration: String).void }
              attr_writer :text_decoration

              # Primary button style
              sig do
                params(
                  background_color: String,
                  border_color: String,
                  border_radius: String,
                  border_style: String,
                  border_width: String,
                  box_shadow: String,
                  color: String,
                  font_size: String,
                  font_weight: Float,
                  padding: String,
                  text_decoration: String
                ).returns(T.attached_class)
              end
              def self.new(
                background_color: nil,
                border_color: nil,
                border_radius: nil,
                border_style: nil,
                border_width: nil,
                box_shadow: nil,
                color: nil,
                font_size: nil,
                font_weight: nil,
                padding: nil,
                text_decoration: nil
              )
              end

              sig do
                override.returns(
                  {
                    background_color: String,
                    border_color: String,
                    border_radius: String,
                    border_style: String,
                    border_width: String,
                    box_shadow: String,
                    color: String,
                    font_size: String,
                    font_weight: Float,
                    padding: String,
                    text_decoration: String
                  }
                )
              end
              def to_hash
              end
            end

            class Secondary < BrandDev::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Button::Secondary,
                    BrandDev::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(String)) }
              attr_reader :background_color

              sig { params(background_color: String).void }
              attr_writer :background_color

              sig { returns(T.nilable(String)) }
              attr_reader :border_color

              sig { params(border_color: String).void }
              attr_writer :border_color

              sig { returns(T.nilable(String)) }
              attr_reader :border_radius

              sig { params(border_radius: String).void }
              attr_writer :border_radius

              sig { returns(T.nilable(String)) }
              attr_reader :border_style

              sig { params(border_style: String).void }
              attr_writer :border_style

              sig { returns(T.nilable(String)) }
              attr_reader :border_width

              sig { params(border_width: String).void }
              attr_writer :border_width

              sig { returns(T.nilable(String)) }
              attr_reader :box_shadow

              sig { params(box_shadow: String).void }
              attr_writer :box_shadow

              sig { returns(T.nilable(String)) }
              attr_reader :color

              sig { params(color: String).void }
              attr_writer :color

              sig { returns(T.nilable(String)) }
              attr_reader :font_size

              sig { params(font_size: String).void }
              attr_writer :font_size

              sig { returns(T.nilable(Float)) }
              attr_reader :font_weight

              sig { params(font_weight: Float).void }
              attr_writer :font_weight

              sig { returns(T.nilable(String)) }
              attr_reader :padding

              sig { params(padding: String).void }
              attr_writer :padding

              sig { returns(T.nilable(String)) }
              attr_reader :text_decoration

              sig { params(text_decoration: String).void }
              attr_writer :text_decoration

              # Secondary button style
              sig do
                params(
                  background_color: String,
                  border_color: String,
                  border_radius: String,
                  border_style: String,
                  border_width: String,
                  box_shadow: String,
                  color: String,
                  font_size: String,
                  font_weight: Float,
                  padding: String,
                  text_decoration: String
                ).returns(T.attached_class)
              end
              def self.new(
                background_color: nil,
                border_color: nil,
                border_radius: nil,
                border_style: nil,
                border_width: nil,
                box_shadow: nil,
                color: nil,
                font_size: nil,
                font_weight: nil,
                padding: nil,
                text_decoration: nil
              )
              end

              sig do
                override.returns(
                  {
                    background_color: String,
                    border_color: String,
                    border_radius: String,
                    border_style: String,
                    border_width: String,
                    box_shadow: String,
                    color: String,
                    font_size: String,
                    font_weight: Float,
                    padding: String,
                    text_decoration: String
                  }
                )
              end
              def to_hash
              end
            end
          end

          class Card < BrandDev::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Card,
                  BrandDev::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :background_color

            sig { params(background_color: String).void }
            attr_writer :background_color

            sig { returns(T.nilable(String)) }
            attr_reader :border_color

            sig { params(border_color: String).void }
            attr_writer :border_color

            sig { returns(T.nilable(String)) }
            attr_reader :border_radius

            sig { params(border_radius: String).void }
            attr_writer :border_radius

            sig { returns(T.nilable(String)) }
            attr_reader :border_style

            sig { params(border_style: String).void }
            attr_writer :border_style

            sig { returns(T.nilable(String)) }
            attr_reader :border_width

            sig { params(border_width: String).void }
            attr_writer :border_width

            sig { returns(T.nilable(String)) }
            attr_reader :box_shadow

            sig { params(box_shadow: String).void }
            attr_writer :box_shadow

            sig { returns(T.nilable(String)) }
            attr_reader :padding

            sig { params(padding: String).void }
            attr_writer :padding

            sig { returns(T.nilable(String)) }
            attr_reader :text_color

            sig { params(text_color: String).void }
            attr_writer :text_color

            # Card component style
            sig do
              params(
                background_color: String,
                border_color: String,
                border_radius: String,
                border_style: String,
                border_width: String,
                box_shadow: String,
                padding: String,
                text_color: String
              ).returns(T.attached_class)
            end
            def self.new(
              background_color: nil,
              border_color: nil,
              border_radius: nil,
              border_style: nil,
              border_width: nil,
              box_shadow: nil,
              padding: nil,
              text_color: nil
            )
            end

            sig do
              override.returns(
                {
                  background_color: String,
                  border_color: String,
                  border_radius: String,
                  border_style: String,
                  border_width: String,
                  box_shadow: String,
                  padding: String,
                  text_color: String
                }
              )
            end
            def to_hash
            end
          end
        end

        class ElementSpacing < BrandDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                BrandDev::Models::BrandStyleguideResponse::Styleguide::ElementSpacing,
                BrandDev::Internal::AnyHash
              )
            end

          # Large spacing value
          sig { returns(T.nilable(String)) }
          attr_reader :lg

          sig { params(lg: String).void }
          attr_writer :lg

          # Medium spacing value
          sig { returns(T.nilable(String)) }
          attr_reader :md

          sig { params(md: String).void }
          attr_writer :md

          # Small spacing value
          sig { returns(T.nilable(String)) }
          attr_reader :sm

          sig { params(sm: String).void }
          attr_writer :sm

          # Extra large spacing value
          sig { returns(T.nilable(String)) }
          attr_reader :xl

          sig { params(xl: String).void }
          attr_writer :xl

          # Extra small spacing value
          sig { returns(T.nilable(String)) }
          attr_reader :xs

          sig { params(xs: String).void }
          attr_writer :xs

          # Spacing system used on the website
          sig do
            params(
              lg: String,
              md: String,
              sm: String,
              xl: String,
              xs: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Large spacing value
            lg: nil,
            # Medium spacing value
            md: nil,
            # Small spacing value
            sm: nil,
            # Extra large spacing value
            xl: nil,
            # Extra small spacing value
            xs: nil
          )
          end

          sig do
            override.returns(
              { lg: String, md: String, sm: String, xl: String, xs: String }
            )
          end
          def to_hash
          end
        end

        # The primary color mode of the website design
        module Mode
          extend BrandDev::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                BrandDev::Models::BrandStyleguideResponse::Styleguide::Mode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LIGHT =
            T.let(
              :light,
              BrandDev::Models::BrandStyleguideResponse::Styleguide::Mode::TaggedSymbol
            )
          DARK =
            T.let(
              :dark,
              BrandDev::Models::BrandStyleguideResponse::Styleguide::Mode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                BrandDev::Models::BrandStyleguideResponse::Styleguide::Mode::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Shadows < BrandDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                BrandDev::Models::BrandStyleguideResponse::Styleguide::Shadows,
                BrandDev::Internal::AnyHash
              )
            end

          # Inner shadow value
          sig { returns(T.nilable(String)) }
          attr_reader :inner

          sig { params(inner: String).void }
          attr_writer :inner

          # Large shadow value
          sig { returns(T.nilable(String)) }
          attr_reader :lg

          sig { params(lg: String).void }
          attr_writer :lg

          # Medium shadow value
          sig { returns(T.nilable(String)) }
          attr_reader :md

          sig { params(md: String).void }
          attr_writer :md

          # Small shadow value
          sig { returns(T.nilable(String)) }
          attr_reader :sm

          sig { params(sm: String).void }
          attr_writer :sm

          # Extra large shadow value
          sig { returns(T.nilable(String)) }
          attr_reader :xl

          sig { params(xl: String).void }
          attr_writer :xl

          # Shadow styles used on the website
          sig do
            params(
              inner: String,
              lg: String,
              md: String,
              sm: String,
              xl: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Inner shadow value
            inner: nil,
            # Large shadow value
            lg: nil,
            # Medium shadow value
            md: nil,
            # Small shadow value
            sm: nil,
            # Extra large shadow value
            xl: nil
          )
          end

          sig do
            override.returns(
              { inner: String, lg: String, md: String, sm: String, xl: String }
            )
          end
          def to_hash
          end
        end

        class Typography < BrandDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography,
                BrandDev::Internal::AnyHash
              )
            end

          # Heading styles
          sig do
            returns(
              T.nilable(
                BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings
              )
            )
          end
          attr_reader :headings

          sig do
            params(
              headings:
                BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings::OrHash
            ).void
          end
          attr_writer :headings

          # Paragraph text styles
          sig do
            returns(
              T.nilable(
                BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::P
              )
            )
          end
          attr_reader :p_

          sig do
            params(
              p_:
                BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::P::OrHash
            ).void
          end
          attr_writer :p_

          # Typography styles used on the website
          sig do
            params(
              headings:
                BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings::OrHash,
              p_:
                BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::P::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Heading styles
            headings: nil,
            # Paragraph text styles
            p_: nil
          )
          end

          sig do
            override.returns(
              {
                headings:
                  BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings,
                p_:
                  BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::P
              }
            )
          end
          def to_hash
          end

          class Headings < BrandDev::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings,
                  BrandDev::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings::H1
                )
              )
            end
            attr_reader :h1

            sig do
              params(
                h1:
                  BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings::H1::OrHash
              ).void
            end
            attr_writer :h1

            sig do
              returns(
                T.nilable(
                  BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings::H2
                )
              )
            end
            attr_reader :h2

            sig do
              params(
                h2:
                  BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings::H2::OrHash
              ).void
            end
            attr_writer :h2

            sig do
              returns(
                T.nilable(
                  BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings::H3
                )
              )
            end
            attr_reader :h3

            sig do
              params(
                h3:
                  BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings::H3::OrHash
              ).void
            end
            attr_writer :h3

            sig do
              returns(
                T.nilable(
                  BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings::H4
                )
              )
            end
            attr_reader :h4

            sig do
              params(
                h4:
                  BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings::H4::OrHash
              ).void
            end
            attr_writer :h4

            # Heading styles
            sig do
              params(
                h1:
                  BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings::H1::OrHash,
                h2:
                  BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings::H2::OrHash,
                h3:
                  BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings::H3::OrHash,
                h4:
                  BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings::H4::OrHash
              ).returns(T.attached_class)
            end
            def self.new(h1: nil, h2: nil, h3: nil, h4: nil)
            end

            sig do
              override.returns(
                {
                  h1:
                    BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings::H1,
                  h2:
                    BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings::H2,
                  h3:
                    BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings::H3,
                  h4:
                    BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings::H4
                }
              )
            end
            def to_hash
            end

            class H1 < BrandDev::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings::H1,
                    BrandDev::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(String)) }
              attr_reader :font_family

              sig { params(font_family: String).void }
              attr_writer :font_family

              sig { returns(T.nilable(String)) }
              attr_reader :font_size

              sig { params(font_size: String).void }
              attr_writer :font_size

              sig { returns(T.nilable(Float)) }
              attr_reader :font_weight

              sig { params(font_weight: Float).void }
              attr_writer :font_weight

              sig { returns(T.nilable(String)) }
              attr_reader :letter_spacing

              sig { params(letter_spacing: String).void }
              attr_writer :letter_spacing

              sig { returns(T.nilable(String)) }
              attr_reader :line_height

              sig { params(line_height: String).void }
              attr_writer :line_height

              sig do
                params(
                  font_family: String,
                  font_size: String,
                  font_weight: Float,
                  letter_spacing: String,
                  line_height: String
                ).returns(T.attached_class)
              end
              def self.new(
                font_family: nil,
                font_size: nil,
                font_weight: nil,
                letter_spacing: nil,
                line_height: nil
              )
              end

              sig do
                override.returns(
                  {
                    font_family: String,
                    font_size: String,
                    font_weight: Float,
                    letter_spacing: String,
                    line_height: String
                  }
                )
              end
              def to_hash
              end
            end

            class H2 < BrandDev::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings::H2,
                    BrandDev::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(String)) }
              attr_reader :font_family

              sig { params(font_family: String).void }
              attr_writer :font_family

              sig { returns(T.nilable(String)) }
              attr_reader :font_size

              sig { params(font_size: String).void }
              attr_writer :font_size

              sig { returns(T.nilable(Float)) }
              attr_reader :font_weight

              sig { params(font_weight: Float).void }
              attr_writer :font_weight

              sig { returns(T.nilable(String)) }
              attr_reader :letter_spacing

              sig { params(letter_spacing: String).void }
              attr_writer :letter_spacing

              sig { returns(T.nilable(String)) }
              attr_reader :line_height

              sig { params(line_height: String).void }
              attr_writer :line_height

              sig do
                params(
                  font_family: String,
                  font_size: String,
                  font_weight: Float,
                  letter_spacing: String,
                  line_height: String
                ).returns(T.attached_class)
              end
              def self.new(
                font_family: nil,
                font_size: nil,
                font_weight: nil,
                letter_spacing: nil,
                line_height: nil
              )
              end

              sig do
                override.returns(
                  {
                    font_family: String,
                    font_size: String,
                    font_weight: Float,
                    letter_spacing: String,
                    line_height: String
                  }
                )
              end
              def to_hash
              end
            end

            class H3 < BrandDev::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings::H3,
                    BrandDev::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(String)) }
              attr_reader :font_family

              sig { params(font_family: String).void }
              attr_writer :font_family

              sig { returns(T.nilable(String)) }
              attr_reader :font_size

              sig { params(font_size: String).void }
              attr_writer :font_size

              sig { returns(T.nilable(Float)) }
              attr_reader :font_weight

              sig { params(font_weight: Float).void }
              attr_writer :font_weight

              sig { returns(T.nilable(String)) }
              attr_reader :letter_spacing

              sig { params(letter_spacing: String).void }
              attr_writer :letter_spacing

              sig { returns(T.nilable(String)) }
              attr_reader :line_height

              sig { params(line_height: String).void }
              attr_writer :line_height

              sig do
                params(
                  font_family: String,
                  font_size: String,
                  font_weight: Float,
                  letter_spacing: String,
                  line_height: String
                ).returns(T.attached_class)
              end
              def self.new(
                font_family: nil,
                font_size: nil,
                font_weight: nil,
                letter_spacing: nil,
                line_height: nil
              )
              end

              sig do
                override.returns(
                  {
                    font_family: String,
                    font_size: String,
                    font_weight: Float,
                    letter_spacing: String,
                    line_height: String
                  }
                )
              end
              def to_hash
              end
            end

            class H4 < BrandDev::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings::H4,
                    BrandDev::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(String)) }
              attr_reader :font_family

              sig { params(font_family: String).void }
              attr_writer :font_family

              sig { returns(T.nilable(String)) }
              attr_reader :font_size

              sig { params(font_size: String).void }
              attr_writer :font_size

              sig { returns(T.nilable(Float)) }
              attr_reader :font_weight

              sig { params(font_weight: Float).void }
              attr_writer :font_weight

              sig { returns(T.nilable(String)) }
              attr_reader :letter_spacing

              sig { params(letter_spacing: String).void }
              attr_writer :letter_spacing

              sig { returns(T.nilable(String)) }
              attr_reader :line_height

              sig { params(line_height: String).void }
              attr_writer :line_height

              sig do
                params(
                  font_family: String,
                  font_size: String,
                  font_weight: Float,
                  letter_spacing: String,
                  line_height: String
                ).returns(T.attached_class)
              end
              def self.new(
                font_family: nil,
                font_size: nil,
                font_weight: nil,
                letter_spacing: nil,
                line_height: nil
              )
              end

              sig do
                override.returns(
                  {
                    font_family: String,
                    font_size: String,
                    font_weight: Float,
                    letter_spacing: String,
                    line_height: String
                  }
                )
              end
              def to_hash
              end
            end
          end

          class P < BrandDev::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::P,
                  BrandDev::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :font_family

            sig { params(font_family: String).void }
            attr_writer :font_family

            sig { returns(T.nilable(String)) }
            attr_reader :font_size

            sig { params(font_size: String).void }
            attr_writer :font_size

            sig { returns(T.nilable(Float)) }
            attr_reader :font_weight

            sig { params(font_weight: Float).void }
            attr_writer :font_weight

            sig { returns(T.nilable(String)) }
            attr_reader :letter_spacing

            sig { params(letter_spacing: String).void }
            attr_writer :letter_spacing

            sig { returns(T.nilable(String)) }
            attr_reader :line_height

            sig { params(line_height: String).void }
            attr_writer :line_height

            # Paragraph text styles
            sig do
              params(
                font_family: String,
                font_size: String,
                font_weight: Float,
                letter_spacing: String,
                line_height: String
              ).returns(T.attached_class)
            end
            def self.new(
              font_family: nil,
              font_size: nil,
              font_weight: nil,
              letter_spacing: nil,
              line_height: nil
            )
            end

            sig do
              override.returns(
                {
                  font_family: String,
                  font_size: String,
                  font_weight: Float,
                  letter_spacing: String,
                  line_height: String
                }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
