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

      # Metadata about the API key used for the request. Included in every response
      # whenever a valid API key is provided, even when the response status is not 200.
      sig do
        returns(
          T.nilable(BrandDev::Models::BrandStyleguideResponse::KeyMetadata)
        )
      end
      attr_reader :key_metadata

      sig do
        params(
          key_metadata:
            BrandDev::Models::BrandStyleguideResponse::KeyMetadata::OrHash
        ).void
      end
      attr_writer :key_metadata

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
          key_metadata:
            BrandDev::Models::BrandStyleguideResponse::KeyMetadata::OrHash,
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
        # Metadata about the API key used for the request. Included in every response
        # whenever a valid API key is provided, even when the response status is not 200.
        key_metadata: nil,
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
            key_metadata:
              BrandDev::Models::BrandStyleguideResponse::KeyMetadata,
            status: String,
            styleguide: BrandDev::Models::BrandStyleguideResponse::Styleguide
          }
        )
      end
      def to_hash
      end

      class KeyMetadata < BrandDev::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              BrandDev::Models::BrandStyleguideResponse::KeyMetadata,
              BrandDev::Internal::AnyHash
            )
          end

        # The number of credits consumed by this request.
        sig { returns(Integer) }
        attr_accessor :credits_consumed

        # The number of credits remaining for your organization after this request.
        sig { returns(Integer) }
        attr_accessor :credits_remaining

        # Metadata about the API key used for the request. Included in every response
        # whenever a valid API key is provided, even when the response status is not 200.
        sig do
          params(credits_consumed: Integer, credits_remaining: Integer).returns(
            T.attached_class
          )
        end
        def self.new(
          # The number of credits consumed by this request.
          credits_consumed:,
          # The number of credits remaining for your organization after this request.
          credits_remaining:
        )
        end

        sig do
          override.returns(
            { credits_consumed: Integer, credits_remaining: Integer }
          )
        end
        def to_hash
        end
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
          returns(BrandDev::Models::BrandStyleguideResponse::Styleguide::Colors)
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
            BrandDev::Models::BrandStyleguideResponse::Styleguide::Components
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
            BrandDev::Models::BrandStyleguideResponse::Styleguide::ElementSpacing
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

        # Font assets keyed by family name as it appears in fontFamily/fontFallbacks
        # (non-generic names only). Clients match typography.fontFamily / fontWeight or
        # button styles to pick a file URL from files.
        sig do
          returns(
            T::Hash[
              Symbol,
              BrandDev::Models::BrandStyleguideResponse::Styleguide::FontLink
            ]
          )
        end
        attr_accessor :font_links

        # The primary color mode of the website design
        sig do
          returns(
            BrandDev::Models::BrandStyleguideResponse::Styleguide::Mode::TaggedSymbol
          )
        end
        attr_accessor :mode

        # Shadow styles used on the website
        sig do
          returns(
            BrandDev::Models::BrandStyleguideResponse::Styleguide::Shadows
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
            BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography
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
            font_links:
              T::Hash[
                Symbol,
                BrandDev::Models::BrandStyleguideResponse::Styleguide::FontLink::OrHash
              ],
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
          colors:,
          # UI component styles
          components:,
          # Spacing system used on the website
          element_spacing:,
          # Font assets keyed by family name as it appears in fontFamily/fontFallbacks
          # (non-generic names only). Clients match typography.fontFamily / fontWeight or
          # button styles to pick a file URL from files.
          font_links:,
          # The primary color mode of the website design
          mode:,
          # Shadow styles used on the website
          shadows:,
          # Typography styles used on the website
          typography:
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
              font_links:
                T::Hash[
                  Symbol,
                  BrandDev::Models::BrandStyleguideResponse::Styleguide::FontLink
                ],
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

          # Accent color (hex format)
          sig { returns(String) }
          attr_accessor :accent

          # Background color (hex format)
          sig { returns(String) }
          attr_accessor :background

          # Text color (hex format)
          sig { returns(String) }
          attr_accessor :text

          # Primary colors used on the website
          sig do
            params(accent: String, background: String, text: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # Accent color (hex format)
            accent:,
            # Background color (hex format)
            background:,
            # Text color (hex format)
            text:
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
              BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Button
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
            button:,
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
            def self.new(link: nil, primary: nil, secondary: nil)
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

              sig { returns(String) }
              attr_accessor :background_color

              # Border color as CSS hex (#RRGGBB or #RRGGBBAA when computed border-color has
              # alpha)
              sig { returns(String) }
              attr_accessor :border_color

              sig { returns(String) }
              attr_accessor :border_radius

              sig { returns(String) }
              attr_accessor :border_style

              sig { returns(String) }
              attr_accessor :border_width

              # Computed box-shadow (comma-separated layers when present)
              sig { returns(String) }
              attr_accessor :box_shadow

              sig { returns(String) }
              attr_accessor :color

              # Ready-to-use CSS declaration block for this component style
              sig { returns(String) }
              attr_accessor :css

              sig { returns(String) }
              attr_accessor :font_size

              sig { returns(Float) }
              attr_accessor :font_weight

              # Sampled minimum height of the button box (typically px)
              sig { returns(String) }
              attr_accessor :min_height

              # Sampled minimum width of the button box (typically px)
              sig { returns(String) }
              attr_accessor :min_width

              sig { returns(String) }
              attr_accessor :padding

              sig { returns(String) }
              attr_accessor :text_decoration

              # Full ordered font list from computed font-family
              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :font_fallbacks

              sig { params(font_fallbacks: T::Array[String]).void }
              attr_writer :font_fallbacks

              # Primary button typeface (first in fontFallbacks)
              sig { returns(T.nilable(String)) }
              attr_reader :font_family

              sig { params(font_family: String).void }
              attr_writer :font_family

              # Hex color of the underline when it differs from the text color
              sig { returns(T.nilable(String)) }
              attr_reader :text_decoration_color

              sig { params(text_decoration_color: String).void }
              attr_writer :text_decoration_color

              sig do
                params(
                  background_color: String,
                  border_color: String,
                  border_radius: String,
                  border_style: String,
                  border_width: String,
                  box_shadow: String,
                  color: String,
                  css: String,
                  font_size: String,
                  font_weight: Float,
                  min_height: String,
                  min_width: String,
                  padding: String,
                  text_decoration: String,
                  font_fallbacks: T::Array[String],
                  font_family: String,
                  text_decoration_color: String
                ).returns(T.attached_class)
              end
              def self.new(
                background_color:,
                # Border color as CSS hex (#RRGGBB or #RRGGBBAA when computed border-color has
                # alpha)
                border_color:,
                border_radius:,
                border_style:,
                border_width:,
                # Computed box-shadow (comma-separated layers when present)
                box_shadow:,
                color:,
                # Ready-to-use CSS declaration block for this component style
                css:,
                font_size:,
                font_weight:,
                # Sampled minimum height of the button box (typically px)
                min_height:,
                # Sampled minimum width of the button box (typically px)
                min_width:,
                padding:,
                text_decoration:,
                # Full ordered font list from computed font-family
                font_fallbacks: nil,
                # Primary button typeface (first in fontFallbacks)
                font_family: nil,
                # Hex color of the underline when it differs from the text color
                text_decoration_color: nil
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
                    css: String,
                    font_size: String,
                    font_weight: Float,
                    min_height: String,
                    min_width: String,
                    padding: String,
                    text_decoration: String,
                    font_fallbacks: T::Array[String],
                    font_family: String,
                    text_decoration_color: String
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

              sig { returns(String) }
              attr_accessor :background_color

              # Border color as CSS hex (#RRGGBB or #RRGGBBAA when computed border-color has
              # alpha)
              sig { returns(String) }
              attr_accessor :border_color

              sig { returns(String) }
              attr_accessor :border_radius

              sig { returns(String) }
              attr_accessor :border_style

              sig { returns(String) }
              attr_accessor :border_width

              # Computed box-shadow (comma-separated layers when present)
              sig { returns(String) }
              attr_accessor :box_shadow

              sig { returns(String) }
              attr_accessor :color

              # Ready-to-use CSS declaration block for this component style
              sig { returns(String) }
              attr_accessor :css

              sig { returns(String) }
              attr_accessor :font_size

              sig { returns(Float) }
              attr_accessor :font_weight

              # Sampled minimum height of the button box (typically px)
              sig { returns(String) }
              attr_accessor :min_height

              # Sampled minimum width of the button box (typically px)
              sig { returns(String) }
              attr_accessor :min_width

              sig { returns(String) }
              attr_accessor :padding

              sig { returns(String) }
              attr_accessor :text_decoration

              # Full ordered font list from computed font-family
              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :font_fallbacks

              sig { params(font_fallbacks: T::Array[String]).void }
              attr_writer :font_fallbacks

              # Primary button typeface (first in fontFallbacks)
              sig { returns(T.nilable(String)) }
              attr_reader :font_family

              sig { params(font_family: String).void }
              attr_writer :font_family

              # Hex color of the underline when it differs from the text color
              sig { returns(T.nilable(String)) }
              attr_reader :text_decoration_color

              sig { params(text_decoration_color: String).void }
              attr_writer :text_decoration_color

              sig do
                params(
                  background_color: String,
                  border_color: String,
                  border_radius: String,
                  border_style: String,
                  border_width: String,
                  box_shadow: String,
                  color: String,
                  css: String,
                  font_size: String,
                  font_weight: Float,
                  min_height: String,
                  min_width: String,
                  padding: String,
                  text_decoration: String,
                  font_fallbacks: T::Array[String],
                  font_family: String,
                  text_decoration_color: String
                ).returns(T.attached_class)
              end
              def self.new(
                background_color:,
                # Border color as CSS hex (#RRGGBB or #RRGGBBAA when computed border-color has
                # alpha)
                border_color:,
                border_radius:,
                border_style:,
                border_width:,
                # Computed box-shadow (comma-separated layers when present)
                box_shadow:,
                color:,
                # Ready-to-use CSS declaration block for this component style
                css:,
                font_size:,
                font_weight:,
                # Sampled minimum height of the button box (typically px)
                min_height:,
                # Sampled minimum width of the button box (typically px)
                min_width:,
                padding:,
                text_decoration:,
                # Full ordered font list from computed font-family
                font_fallbacks: nil,
                # Primary button typeface (first in fontFallbacks)
                font_family: nil,
                # Hex color of the underline when it differs from the text color
                text_decoration_color: nil
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
                    css: String,
                    font_size: String,
                    font_weight: Float,
                    min_height: String,
                    min_width: String,
                    padding: String,
                    text_decoration: String,
                    font_fallbacks: T::Array[String],
                    font_family: String,
                    text_decoration_color: String
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

              sig { returns(String) }
              attr_accessor :background_color

              # Border color as CSS hex (#RRGGBB or #RRGGBBAA when computed border-color has
              # alpha)
              sig { returns(String) }
              attr_accessor :border_color

              sig { returns(String) }
              attr_accessor :border_radius

              sig { returns(String) }
              attr_accessor :border_style

              sig { returns(String) }
              attr_accessor :border_width

              # Computed box-shadow (comma-separated layers when present)
              sig { returns(String) }
              attr_accessor :box_shadow

              sig { returns(String) }
              attr_accessor :color

              # Ready-to-use CSS declaration block for this component style
              sig { returns(String) }
              attr_accessor :css

              sig { returns(String) }
              attr_accessor :font_size

              sig { returns(Float) }
              attr_accessor :font_weight

              # Sampled minimum height of the button box (typically px)
              sig { returns(String) }
              attr_accessor :min_height

              # Sampled minimum width of the button box (typically px)
              sig { returns(String) }
              attr_accessor :min_width

              sig { returns(String) }
              attr_accessor :padding

              sig { returns(String) }
              attr_accessor :text_decoration

              # Full ordered font list from computed font-family
              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :font_fallbacks

              sig { params(font_fallbacks: T::Array[String]).void }
              attr_writer :font_fallbacks

              # Primary button typeface (first in fontFallbacks)
              sig { returns(T.nilable(String)) }
              attr_reader :font_family

              sig { params(font_family: String).void }
              attr_writer :font_family

              # Hex color of the underline when it differs from the text color
              sig { returns(T.nilable(String)) }
              attr_reader :text_decoration_color

              sig { params(text_decoration_color: String).void }
              attr_writer :text_decoration_color

              sig do
                params(
                  background_color: String,
                  border_color: String,
                  border_radius: String,
                  border_style: String,
                  border_width: String,
                  box_shadow: String,
                  color: String,
                  css: String,
                  font_size: String,
                  font_weight: Float,
                  min_height: String,
                  min_width: String,
                  padding: String,
                  text_decoration: String,
                  font_fallbacks: T::Array[String],
                  font_family: String,
                  text_decoration_color: String
                ).returns(T.attached_class)
              end
              def self.new(
                background_color:,
                # Border color as CSS hex (#RRGGBB or #RRGGBBAA when computed border-color has
                # alpha)
                border_color:,
                border_radius:,
                border_style:,
                border_width:,
                # Computed box-shadow (comma-separated layers when present)
                box_shadow:,
                color:,
                # Ready-to-use CSS declaration block for this component style
                css:,
                font_size:,
                font_weight:,
                # Sampled minimum height of the button box (typically px)
                min_height:,
                # Sampled minimum width of the button box (typically px)
                min_width:,
                padding:,
                text_decoration:,
                # Full ordered font list from computed font-family
                font_fallbacks: nil,
                # Primary button typeface (first in fontFallbacks)
                font_family: nil,
                # Hex color of the underline when it differs from the text color
                text_decoration_color: nil
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
                    css: String,
                    font_size: String,
                    font_weight: Float,
                    min_height: String,
                    min_width: String,
                    padding: String,
                    text_decoration: String,
                    font_fallbacks: T::Array[String],
                    font_family: String,
                    text_decoration_color: String
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

            sig { returns(String) }
            attr_accessor :background_color

            # Border color as CSS hex (#RRGGBB or #RRGGBBAA when computed border-color has
            # alpha)
            sig { returns(String) }
            attr_accessor :border_color

            sig { returns(String) }
            attr_accessor :border_radius

            sig { returns(String) }
            attr_accessor :border_style

            sig { returns(String) }
            attr_accessor :border_width

            sig { returns(String) }
            attr_accessor :box_shadow

            # Ready-to-use CSS declaration block for this component style
            sig { returns(String) }
            attr_accessor :css

            sig { returns(String) }
            attr_accessor :padding

            sig { returns(String) }
            attr_accessor :text_color

            # Card component style
            sig do
              params(
                background_color: String,
                border_color: String,
                border_radius: String,
                border_style: String,
                border_width: String,
                box_shadow: String,
                css: String,
                padding: String,
                text_color: String
              ).returns(T.attached_class)
            end
            def self.new(
              background_color:,
              # Border color as CSS hex (#RRGGBB or #RRGGBBAA when computed border-color has
              # alpha)
              border_color:,
              border_radius:,
              border_style:,
              border_width:,
              box_shadow:,
              # Ready-to-use CSS declaration block for this component style
              css:,
              padding:,
              text_color:
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
                  css: String,
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

          sig { returns(String) }
          attr_accessor :lg

          sig { returns(String) }
          attr_accessor :md

          sig { returns(String) }
          attr_accessor :sm

          sig { returns(String) }
          attr_accessor :xl

          sig { returns(String) }
          attr_accessor :xs

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
          def self.new(lg:, md:, sm:, xl:, xs:)
          end

          sig do
            override.returns(
              { lg: String, md: String, sm: String, xl: String, xs: String }
            )
          end
          def to_hash
          end
        end

        class FontLink < BrandDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                BrandDev::Models::BrandStyleguideResponse::Styleguide::FontLink,
                BrandDev::Internal::AnyHash
              )
            end

          # Upright font files keyed by weight string (e.g. "400" for regular, "500",
          # "700"). Values are absolute URLs.
          sig { returns(T::Hash[Symbol, String]) }
          attr_accessor :files

          sig do
            returns(
              BrandDev::Models::BrandStyleguideResponse::Styleguide::FontLink::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          # Google Fonts category when type is google (e.g. sans-serif, serif, monospace,
          # display, handwriting). Omitted for custom fonts when unknown.
          sig { returns(T.nilable(String)) }
          attr_reader :category

          sig { params(category: String).void }
          attr_writer :category

          # Present when type is custom: human-readable name derived from the fontLinks key
          # (strip build/hash suffixes, split camelCase / PascalCase, normalize separators).
          # Google entries omit this.
          sig { returns(T.nilable(String)) }
          attr_reader :display_name

          sig { params(display_name: String).void }
          attr_writer :display_name

          sig do
            params(
              files: T::Hash[Symbol, String],
              type:
                BrandDev::Models::BrandStyleguideResponse::Styleguide::FontLink::Type::OrSymbol,
              category: String,
              display_name: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Upright font files keyed by weight string (e.g. "400" for regular, "500",
            # "700"). Values are absolute URLs.
            files:,
            type:,
            # Google Fonts category when type is google (e.g. sans-serif, serif, monospace,
            # display, handwriting). Omitted for custom fonts when unknown.
            category: nil,
            # Present when type is custom: human-readable name derived from the fontLinks key
            # (strip build/hash suffixes, split camelCase / PascalCase, normalize separators).
            # Google entries omit this.
            display_name: nil
          )
          end

          sig do
            override.returns(
              {
                files: T::Hash[Symbol, String],
                type:
                  BrandDev::Models::BrandStyleguideResponse::Styleguide::FontLink::Type::TaggedSymbol,
                category: String,
                display_name: String
              }
            )
          end
          def to_hash
          end

          module Type
            extend BrandDev::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  BrandDev::Models::BrandStyleguideResponse::Styleguide::FontLink::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            GOOGLE =
              T.let(
                :google,
                BrandDev::Models::BrandStyleguideResponse::Styleguide::FontLink::Type::TaggedSymbol
              )
            CUSTOM =
              T.let(
                :custom,
                BrandDev::Models::BrandStyleguideResponse::Styleguide::FontLink::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  BrandDev::Models::BrandStyleguideResponse::Styleguide::FontLink::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
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

          sig { returns(String) }
          attr_accessor :inner

          sig { returns(String) }
          attr_accessor :lg

          sig { returns(String) }
          attr_accessor :md

          sig { returns(String) }
          attr_accessor :sm

          sig { returns(String) }
          attr_accessor :xl

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
          def self.new(inner:, lg:, md:, sm:, xl:)
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
              BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings
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
            headings:,
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

              # Full ordered font list from resolved computed font-family
              sig { returns(T::Array[String]) }
              attr_accessor :font_fallbacks

              # Primary face (first family in the computed stack)
              sig { returns(String) }
              attr_accessor :font_family

              sig { returns(String) }
              attr_accessor :font_size

              sig { returns(Float) }
              attr_accessor :font_weight

              sig { returns(String) }
              attr_accessor :letter_spacing

              sig { returns(String) }
              attr_accessor :line_height

              sig do
                params(
                  font_fallbacks: T::Array[String],
                  font_family: String,
                  font_size: String,
                  font_weight: Float,
                  letter_spacing: String,
                  line_height: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Full ordered font list from resolved computed font-family
                font_fallbacks:,
                # Primary face (first family in the computed stack)
                font_family:,
                font_size:,
                font_weight:,
                letter_spacing:,
                line_height:
              )
              end

              sig do
                override.returns(
                  {
                    font_fallbacks: T::Array[String],
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

              # Full ordered font list from resolved computed font-family
              sig { returns(T::Array[String]) }
              attr_accessor :font_fallbacks

              # Primary face (first family in the computed stack)
              sig { returns(String) }
              attr_accessor :font_family

              sig { returns(String) }
              attr_accessor :font_size

              sig { returns(Float) }
              attr_accessor :font_weight

              sig { returns(String) }
              attr_accessor :letter_spacing

              sig { returns(String) }
              attr_accessor :line_height

              sig do
                params(
                  font_fallbacks: T::Array[String],
                  font_family: String,
                  font_size: String,
                  font_weight: Float,
                  letter_spacing: String,
                  line_height: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Full ordered font list from resolved computed font-family
                font_fallbacks:,
                # Primary face (first family in the computed stack)
                font_family:,
                font_size:,
                font_weight:,
                letter_spacing:,
                line_height:
              )
              end

              sig do
                override.returns(
                  {
                    font_fallbacks: T::Array[String],
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

              # Full ordered font list from resolved computed font-family
              sig { returns(T::Array[String]) }
              attr_accessor :font_fallbacks

              # Primary face (first family in the computed stack)
              sig { returns(String) }
              attr_accessor :font_family

              sig { returns(String) }
              attr_accessor :font_size

              sig { returns(Float) }
              attr_accessor :font_weight

              sig { returns(String) }
              attr_accessor :letter_spacing

              sig { returns(String) }
              attr_accessor :line_height

              sig do
                params(
                  font_fallbacks: T::Array[String],
                  font_family: String,
                  font_size: String,
                  font_weight: Float,
                  letter_spacing: String,
                  line_height: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Full ordered font list from resolved computed font-family
                font_fallbacks:,
                # Primary face (first family in the computed stack)
                font_family:,
                font_size:,
                font_weight:,
                letter_spacing:,
                line_height:
              )
              end

              sig do
                override.returns(
                  {
                    font_fallbacks: T::Array[String],
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

              # Full ordered font list from resolved computed font-family
              sig { returns(T::Array[String]) }
              attr_accessor :font_fallbacks

              # Primary face (first family in the computed stack)
              sig { returns(String) }
              attr_accessor :font_family

              sig { returns(String) }
              attr_accessor :font_size

              sig { returns(Float) }
              attr_accessor :font_weight

              sig { returns(String) }
              attr_accessor :letter_spacing

              sig { returns(String) }
              attr_accessor :line_height

              sig do
                params(
                  font_fallbacks: T::Array[String],
                  font_family: String,
                  font_size: String,
                  font_weight: Float,
                  letter_spacing: String,
                  line_height: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Full ordered font list from resolved computed font-family
                font_fallbacks:,
                # Primary face (first family in the computed stack)
                font_family:,
                font_size:,
                font_weight:,
                letter_spacing:,
                line_height:
              )
              end

              sig do
                override.returns(
                  {
                    font_fallbacks: T::Array[String],
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

            # Full ordered font list from resolved computed font-family
            sig { returns(T::Array[String]) }
            attr_accessor :font_fallbacks

            # Primary face (first family in the computed stack)
            sig { returns(String) }
            attr_accessor :font_family

            sig { returns(String) }
            attr_accessor :font_size

            sig { returns(Float) }
            attr_accessor :font_weight

            sig { returns(String) }
            attr_accessor :letter_spacing

            sig { returns(String) }
            attr_accessor :line_height

            sig do
              params(
                font_fallbacks: T::Array[String],
                font_family: String,
                font_size: String,
                font_weight: Float,
                letter_spacing: String,
                line_height: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Full ordered font list from resolved computed font-family
              font_fallbacks:,
              # Primary face (first family in the computed stack)
              font_family:,
              font_size:,
              font_weight:,
              letter_spacing:,
              line_height:
            )
            end

            sig do
              override.returns(
                {
                  font_fallbacks: T::Array[String],
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
