# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#styleguide
    class BrandStyleguideResponse < BrandDev::Internal::Type::BaseModel
      # @!attribute cache_metadata
      #   Cache outcome for this response. Composite responses are hits only when every
      #   cache-controlled fetch contributing to the output was a hit; age_ms is the
      #   oldest contributing hit.
      #
      #   @return [BrandDev::Models::BrandStyleguideResponse::CacheMetadata]
      required :cache_metadata, -> { BrandDev::Models::BrandStyleguideResponse::CacheMetadata }

      # @!attribute code
      #   HTTP status code
      #
      #   @return [Integer, nil]
      optional :code, Integer

      # @!attribute domain
      #   The normalized domain that was processed
      #
      #   @return [String, nil]
      optional :domain, String

      # @!attribute key_metadata
      #   Metadata about the API key used for the request. Included in every response
      #   whenever a valid API key is provided, even when the response status is not 200.
      #
      #   @return [BrandDev::Models::BrandStyleguideResponse::KeyMetadata, nil]
      optional :key_metadata, -> { BrandDev::Models::BrandStyleguideResponse::KeyMetadata }

      # @!attribute status
      #   Status of the response, e.g., 'ok'
      #
      #   @return [String, nil]
      optional :status, String

      # @!attribute styleguide
      #   Comprehensive styleguide data extracted from the website
      #
      #   @return [BrandDev::Models::BrandStyleguideResponse::Styleguide, nil]
      optional :styleguide, -> { BrandDev::Models::BrandStyleguideResponse::Styleguide }

      # @!method initialize(cache_metadata:, code: nil, domain: nil, key_metadata: nil, status: nil, styleguide: nil)
      #   Some parameter documentations has been truncated, see
      #   {BrandDev::Models::BrandStyleguideResponse} for more details.
      #
      #   @param cache_metadata [BrandDev::Models::BrandStyleguideResponse::CacheMetadata] Cache outcome for this response. Composite responses are hits only when every ca
      #
      #   @param code [Integer] HTTP status code
      #
      #   @param domain [String] The normalized domain that was processed
      #
      #   @param key_metadata [BrandDev::Models::BrandStyleguideResponse::KeyMetadata] Metadata about the API key used for the request. Included in every response when
      #
      #   @param status [String] Status of the response, e.g., 'ok'
      #
      #   @param styleguide [BrandDev::Models::BrandStyleguideResponse::Styleguide] Comprehensive styleguide data extracted from the website

      # @see BrandDev::Models::BrandStyleguideResponse#cache_metadata
      class CacheMetadata < BrandDev::Internal::Type::BaseModel
        # @!attribute age_ms
        #   Age of the cached data in milliseconds. Zero for miss and zdr responses.
        #
        #   @return [Integer]
        required :age_ms, Integer

        # @!attribute status
        #   Whether the response was served from cache, required fresh work, or honored
        #   zero-data-retention cache bypass.
        #
        #   @return [Symbol, BrandDev::Models::BrandStyleguideResponse::CacheMetadata::Status]
        required :status, enum: -> { BrandDev::Models::BrandStyleguideResponse::CacheMetadata::Status }

        # @!method initialize(age_ms:, status:)
        #   Some parameter documentations has been truncated, see
        #   {BrandDev::Models::BrandStyleguideResponse::CacheMetadata} for more details.
        #
        #   Cache outcome for this response. Composite responses are hits only when every
        #   cache-controlled fetch contributing to the output was a hit; age_ms is the
        #   oldest contributing hit.
        #
        #   @param age_ms [Integer] Age of the cached data in milliseconds. Zero for miss and zdr responses.
        #
        #   @param status [Symbol, BrandDev::Models::BrandStyleguideResponse::CacheMetadata::Status] Whether the response was served from cache, required fresh work, or honored zero

        # Whether the response was served from cache, required fresh work, or honored
        # zero-data-retention cache bypass.
        #
        # @see BrandDev::Models::BrandStyleguideResponse::CacheMetadata#status
        module Status
          extend BrandDev::Internal::Type::Enum

          HIT = :hit
          MISS = :miss
          ZDR = :zdr

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see BrandDev::Models::BrandStyleguideResponse#key_metadata
      class KeyMetadata < BrandDev::Internal::Type::BaseModel
        # @!attribute credits_consumed
        #   The number of credits consumed by this request.
        #
        #   @return [Integer]
        required :credits_consumed, Integer

        # @!attribute credits_remaining
        #   The number of credits remaining for your organization after this request.
        #
        #   @return [Integer]
        required :credits_remaining, Integer

        # @!method initialize(credits_consumed:, credits_remaining:)
        #   Metadata about the API key used for the request. Included in every response
        #   whenever a valid API key is provided, even when the response status is not 200.
        #
        #   @param credits_consumed [Integer] The number of credits consumed by this request.
        #
        #   @param credits_remaining [Integer] The number of credits remaining for your organization after this request.
      end

      # @see BrandDev::Models::BrandStyleguideResponse#styleguide
      class Styleguide < BrandDev::Internal::Type::BaseModel
        # @!attribute colors
        #   Primary colors used on the website
        #
        #   @return [BrandDev::Models::BrandStyleguideResponse::Styleguide::Colors]
        required :colors, -> { BrandDev::Models::BrandStyleguideResponse::Styleguide::Colors }

        # @!attribute components
        #   UI component styles
        #
        #   @return [BrandDev::Models::BrandStyleguideResponse::Styleguide::Components]
        required :components, -> { BrandDev::Models::BrandStyleguideResponse::Styleguide::Components }

        # @!attribute element_spacing
        #   Spacing system used on the website
        #
        #   @return [BrandDev::Models::BrandStyleguideResponse::Styleguide::ElementSpacing]
        required :element_spacing,
                 -> { BrandDev::Models::BrandStyleguideResponse::Styleguide::ElementSpacing },
                 api_name: :elementSpacing

        # @!attribute font_links
        #   Font assets keyed by family name as it appears in fontFamily/fontFallbacks
        #   (non-generic names only). Clients match typography.fontFamily / fontWeight or
        #   button styles to pick a file URL from files.
        #
        #   @return [Hash{Symbol=>BrandDev::Models::BrandStyleguideResponse::Styleguide::FontLink}]
        required :font_links,
                 -> { BrandDev::Internal::Type::HashOf[BrandDev::Models::BrandStyleguideResponse::Styleguide::FontLink] },
                 api_name: :fontLinks

        # @!attribute mode
        #   The primary color mode of the website design
        #
        #   @return [Symbol, BrandDev::Models::BrandStyleguideResponse::Styleguide::Mode]
        required :mode, enum: -> { BrandDev::Models::BrandStyleguideResponse::Styleguide::Mode }

        # @!attribute shadows
        #   Shadow styles used on the website
        #
        #   @return [BrandDev::Models::BrandStyleguideResponse::Styleguide::Shadows]
        required :shadows, -> { BrandDev::Models::BrandStyleguideResponse::Styleguide::Shadows }

        # @!attribute typography
        #   Typography styles used on the website
        #
        #   @return [BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography]
        required :typography, -> { BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography }

        # @!method initialize(colors:, components:, element_spacing:, font_links:, mode:, shadows:, typography:)
        #   Some parameter documentations has been truncated, see
        #   {BrandDev::Models::BrandStyleguideResponse::Styleguide} for more details.
        #
        #   Comprehensive styleguide data extracted from the website
        #
        #   @param colors [BrandDev::Models::BrandStyleguideResponse::Styleguide::Colors] Primary colors used on the website
        #
        #   @param components [BrandDev::Models::BrandStyleguideResponse::Styleguide::Components] UI component styles
        #
        #   @param element_spacing [BrandDev::Models::BrandStyleguideResponse::Styleguide::ElementSpacing] Spacing system used on the website
        #
        #   @param font_links [Hash{Symbol=>BrandDev::Models::BrandStyleguideResponse::Styleguide::FontLink}] Font assets keyed by family name as it appears in fontFamily/fontFallbacks (non-
        #
        #   @param mode [Symbol, BrandDev::Models::BrandStyleguideResponse::Styleguide::Mode] The primary color mode of the website design
        #
        #   @param shadows [BrandDev::Models::BrandStyleguideResponse::Styleguide::Shadows] Shadow styles used on the website
        #
        #   @param typography [BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography] Typography styles used on the website

        # @see BrandDev::Models::BrandStyleguideResponse::Styleguide#colors
        class Colors < BrandDev::Internal::Type::BaseModel
          # @!attribute accent
          #   Accent color (hex format)
          #
          #   @return [String]
          required :accent, String

          # @!attribute background
          #   Background color (hex format)
          #
          #   @return [String]
          required :background, String

          # @!attribute text
          #   Text color (hex format)
          #
          #   @return [String]
          required :text, String

          # @!method initialize(accent:, background:, text:)
          #   Primary colors used on the website
          #
          #   @param accent [String] Accent color (hex format)
          #
          #   @param background [String] Background color (hex format)
          #
          #   @param text [String] Text color (hex format)
        end

        # @see BrandDev::Models::BrandStyleguideResponse::Styleguide#components
        class Components < BrandDev::Internal::Type::BaseModel
          # @!attribute button
          #   Button component styles
          #
          #   @return [BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Button]
          required :button, -> { BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Button }

          # @!attribute card
          #   Card component style
          #
          #   @return [BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Card, nil]
          optional :card, -> { BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Card }

          # @!method initialize(button:, card: nil)
          #   UI component styles
          #
          #   @param button [BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Button] Button component styles
          #
          #   @param card [BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Card] Card component style

          # @see BrandDev::Models::BrandStyleguideResponse::Styleguide::Components#button
          class Button < BrandDev::Internal::Type::BaseModel
            # @!attribute link
            #
            #   @return [BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Button::Link, nil]
            optional :link, -> { BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Button::Link }

            # @!attribute primary
            #
            #   @return [BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Button::Primary, nil]
            optional :primary,
                     -> { BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Button::Primary }

            # @!attribute secondary
            #
            #   @return [BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Button::Secondary, nil]
            optional :secondary,
                     -> { BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Button::Secondary }

            # @!method initialize(link: nil, primary: nil, secondary: nil)
            #   Button component styles
            #
            #   @param link [BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Button::Link]
            #   @param primary [BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Button::Primary]
            #   @param secondary [BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Button::Secondary]

            # @see BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Button#link
            class Link < BrandDev::Internal::Type::BaseModel
              # @!attribute background_color
              #
              #   @return [String]
              required :background_color, String, api_name: :backgroundColor

              # @!attribute border_color
              #   Border color as CSS hex (#RRGGBB or #RRGGBBAA when computed border-color has
              #   alpha)
              #
              #   @return [String]
              required :border_color, String, api_name: :borderColor

              # @!attribute border_radius
              #
              #   @return [String]
              required :border_radius, String, api_name: :borderRadius

              # @!attribute border_style
              #
              #   @return [String]
              required :border_style, String, api_name: :borderStyle

              # @!attribute border_width
              #
              #   @return [String]
              required :border_width, String, api_name: :borderWidth

              # @!attribute box_shadow
              #   Computed box-shadow (comma-separated layers when present)
              #
              #   @return [String]
              required :box_shadow, String, api_name: :boxShadow

              # @!attribute color
              #
              #   @return [String]
              required :color, String

              # @!attribute css
              #   Ready-to-use CSS declaration block for this component style
              #
              #   @return [String]
              required :css, String

              # @!attribute font_size
              #
              #   @return [String]
              required :font_size, String, api_name: :fontSize

              # @!attribute font_weight
              #
              #   @return [Float]
              required :font_weight, Float, api_name: :fontWeight

              # @!attribute min_height
              #   Sampled minimum height of the button box (typically px)
              #
              #   @return [String]
              required :min_height, String, api_name: :minHeight

              # @!attribute min_width
              #   Sampled minimum width of the button box (typically px)
              #
              #   @return [String]
              required :min_width, String, api_name: :minWidth

              # @!attribute padding
              #
              #   @return [String]
              required :padding, String

              # @!attribute text_decoration
              #
              #   @return [String]
              required :text_decoration, String, api_name: :textDecoration

              # @!attribute font_fallbacks
              #   Full ordered font list from computed font-family
              #
              #   @return [Array<String>, nil]
              optional :font_fallbacks, BrandDev::Internal::Type::ArrayOf[String], api_name: :fontFallbacks

              # @!attribute font_family
              #   Primary button typeface (first in fontFallbacks)
              #
              #   @return [String, nil]
              optional :font_family, String, api_name: :fontFamily

              # @!attribute text_decoration_color
              #   Hex color of the underline when it differs from the text color
              #
              #   @return [String, nil]
              optional :text_decoration_color, String, api_name: :textDecorationColor

              # @!method initialize(background_color:, border_color:, border_radius:, border_style:, border_width:, box_shadow:, color:, css:, font_size:, font_weight:, min_height:, min_width:, padding:, text_decoration:, font_fallbacks: nil, font_family: nil, text_decoration_color: nil)
              #   Some parameter documentations has been truncated, see
              #   {BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Button::Link}
              #   for more details.
              #
              #   @param background_color [String]
              #
              #   @param border_color [String] Border color as CSS hex (#RRGGBB or #RRGGBBAA when computed border-color has alp
              #
              #   @param border_radius [String]
              #
              #   @param border_style [String]
              #
              #   @param border_width [String]
              #
              #   @param box_shadow [String] Computed box-shadow (comma-separated layers when present)
              #
              #   @param color [String]
              #
              #   @param css [String] Ready-to-use CSS declaration block for this component style
              #
              #   @param font_size [String]
              #
              #   @param font_weight [Float]
              #
              #   @param min_height [String] Sampled minimum height of the button box (typically px)
              #
              #   @param min_width [String] Sampled minimum width of the button box (typically px)
              #
              #   @param padding [String]
              #
              #   @param text_decoration [String]
              #
              #   @param font_fallbacks [Array<String>] Full ordered font list from computed font-family
              #
              #   @param font_family [String] Primary button typeface (first in fontFallbacks)
              #
              #   @param text_decoration_color [String] Hex color of the underline when it differs from the text color
            end

            # @see BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Button#primary
            class Primary < BrandDev::Internal::Type::BaseModel
              # @!attribute background_color
              #
              #   @return [String]
              required :background_color, String, api_name: :backgroundColor

              # @!attribute border_color
              #   Border color as CSS hex (#RRGGBB or #RRGGBBAA when computed border-color has
              #   alpha)
              #
              #   @return [String]
              required :border_color, String, api_name: :borderColor

              # @!attribute border_radius
              #
              #   @return [String]
              required :border_radius, String, api_name: :borderRadius

              # @!attribute border_style
              #
              #   @return [String]
              required :border_style, String, api_name: :borderStyle

              # @!attribute border_width
              #
              #   @return [String]
              required :border_width, String, api_name: :borderWidth

              # @!attribute box_shadow
              #   Computed box-shadow (comma-separated layers when present)
              #
              #   @return [String]
              required :box_shadow, String, api_name: :boxShadow

              # @!attribute color
              #
              #   @return [String]
              required :color, String

              # @!attribute css
              #   Ready-to-use CSS declaration block for this component style
              #
              #   @return [String]
              required :css, String

              # @!attribute font_size
              #
              #   @return [String]
              required :font_size, String, api_name: :fontSize

              # @!attribute font_weight
              #
              #   @return [Float]
              required :font_weight, Float, api_name: :fontWeight

              # @!attribute min_height
              #   Sampled minimum height of the button box (typically px)
              #
              #   @return [String]
              required :min_height, String, api_name: :minHeight

              # @!attribute min_width
              #   Sampled minimum width of the button box (typically px)
              #
              #   @return [String]
              required :min_width, String, api_name: :minWidth

              # @!attribute padding
              #
              #   @return [String]
              required :padding, String

              # @!attribute text_decoration
              #
              #   @return [String]
              required :text_decoration, String, api_name: :textDecoration

              # @!attribute font_fallbacks
              #   Full ordered font list from computed font-family
              #
              #   @return [Array<String>, nil]
              optional :font_fallbacks, BrandDev::Internal::Type::ArrayOf[String], api_name: :fontFallbacks

              # @!attribute font_family
              #   Primary button typeface (first in fontFallbacks)
              #
              #   @return [String, nil]
              optional :font_family, String, api_name: :fontFamily

              # @!attribute text_decoration_color
              #   Hex color of the underline when it differs from the text color
              #
              #   @return [String, nil]
              optional :text_decoration_color, String, api_name: :textDecorationColor

              # @!method initialize(background_color:, border_color:, border_radius:, border_style:, border_width:, box_shadow:, color:, css:, font_size:, font_weight:, min_height:, min_width:, padding:, text_decoration:, font_fallbacks: nil, font_family: nil, text_decoration_color: nil)
              #   Some parameter documentations has been truncated, see
              #   {BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Button::Primary}
              #   for more details.
              #
              #   @param background_color [String]
              #
              #   @param border_color [String] Border color as CSS hex (#RRGGBB or #RRGGBBAA when computed border-color has alp
              #
              #   @param border_radius [String]
              #
              #   @param border_style [String]
              #
              #   @param border_width [String]
              #
              #   @param box_shadow [String] Computed box-shadow (comma-separated layers when present)
              #
              #   @param color [String]
              #
              #   @param css [String] Ready-to-use CSS declaration block for this component style
              #
              #   @param font_size [String]
              #
              #   @param font_weight [Float]
              #
              #   @param min_height [String] Sampled minimum height of the button box (typically px)
              #
              #   @param min_width [String] Sampled minimum width of the button box (typically px)
              #
              #   @param padding [String]
              #
              #   @param text_decoration [String]
              #
              #   @param font_fallbacks [Array<String>] Full ordered font list from computed font-family
              #
              #   @param font_family [String] Primary button typeface (first in fontFallbacks)
              #
              #   @param text_decoration_color [String] Hex color of the underline when it differs from the text color
            end

            # @see BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Button#secondary
            class Secondary < BrandDev::Internal::Type::BaseModel
              # @!attribute background_color
              #
              #   @return [String]
              required :background_color, String, api_name: :backgroundColor

              # @!attribute border_color
              #   Border color as CSS hex (#RRGGBB or #RRGGBBAA when computed border-color has
              #   alpha)
              #
              #   @return [String]
              required :border_color, String, api_name: :borderColor

              # @!attribute border_radius
              #
              #   @return [String]
              required :border_radius, String, api_name: :borderRadius

              # @!attribute border_style
              #
              #   @return [String]
              required :border_style, String, api_name: :borderStyle

              # @!attribute border_width
              #
              #   @return [String]
              required :border_width, String, api_name: :borderWidth

              # @!attribute box_shadow
              #   Computed box-shadow (comma-separated layers when present)
              #
              #   @return [String]
              required :box_shadow, String, api_name: :boxShadow

              # @!attribute color
              #
              #   @return [String]
              required :color, String

              # @!attribute css
              #   Ready-to-use CSS declaration block for this component style
              #
              #   @return [String]
              required :css, String

              # @!attribute font_size
              #
              #   @return [String]
              required :font_size, String, api_name: :fontSize

              # @!attribute font_weight
              #
              #   @return [Float]
              required :font_weight, Float, api_name: :fontWeight

              # @!attribute min_height
              #   Sampled minimum height of the button box (typically px)
              #
              #   @return [String]
              required :min_height, String, api_name: :minHeight

              # @!attribute min_width
              #   Sampled minimum width of the button box (typically px)
              #
              #   @return [String]
              required :min_width, String, api_name: :minWidth

              # @!attribute padding
              #
              #   @return [String]
              required :padding, String

              # @!attribute text_decoration
              #
              #   @return [String]
              required :text_decoration, String, api_name: :textDecoration

              # @!attribute font_fallbacks
              #   Full ordered font list from computed font-family
              #
              #   @return [Array<String>, nil]
              optional :font_fallbacks, BrandDev::Internal::Type::ArrayOf[String], api_name: :fontFallbacks

              # @!attribute font_family
              #   Primary button typeface (first in fontFallbacks)
              #
              #   @return [String, nil]
              optional :font_family, String, api_name: :fontFamily

              # @!attribute text_decoration_color
              #   Hex color of the underline when it differs from the text color
              #
              #   @return [String, nil]
              optional :text_decoration_color, String, api_name: :textDecorationColor

              # @!method initialize(background_color:, border_color:, border_radius:, border_style:, border_width:, box_shadow:, color:, css:, font_size:, font_weight:, min_height:, min_width:, padding:, text_decoration:, font_fallbacks: nil, font_family: nil, text_decoration_color: nil)
              #   Some parameter documentations has been truncated, see
              #   {BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Button::Secondary}
              #   for more details.
              #
              #   @param background_color [String]
              #
              #   @param border_color [String] Border color as CSS hex (#RRGGBB or #RRGGBBAA when computed border-color has alp
              #
              #   @param border_radius [String]
              #
              #   @param border_style [String]
              #
              #   @param border_width [String]
              #
              #   @param box_shadow [String] Computed box-shadow (comma-separated layers when present)
              #
              #   @param color [String]
              #
              #   @param css [String] Ready-to-use CSS declaration block for this component style
              #
              #   @param font_size [String]
              #
              #   @param font_weight [Float]
              #
              #   @param min_height [String] Sampled minimum height of the button box (typically px)
              #
              #   @param min_width [String] Sampled minimum width of the button box (typically px)
              #
              #   @param padding [String]
              #
              #   @param text_decoration [String]
              #
              #   @param font_fallbacks [Array<String>] Full ordered font list from computed font-family
              #
              #   @param font_family [String] Primary button typeface (first in fontFallbacks)
              #
              #   @param text_decoration_color [String] Hex color of the underline when it differs from the text color
            end
          end

          # @see BrandDev::Models::BrandStyleguideResponse::Styleguide::Components#card
          class Card < BrandDev::Internal::Type::BaseModel
            # @!attribute background_color
            #
            #   @return [String]
            required :background_color, String, api_name: :backgroundColor

            # @!attribute border_color
            #   Border color as CSS hex (#RRGGBB or #RRGGBBAA when computed border-color has
            #   alpha)
            #
            #   @return [String]
            required :border_color, String, api_name: :borderColor

            # @!attribute border_radius
            #
            #   @return [String]
            required :border_radius, String, api_name: :borderRadius

            # @!attribute border_style
            #
            #   @return [String]
            required :border_style, String, api_name: :borderStyle

            # @!attribute border_width
            #
            #   @return [String]
            required :border_width, String, api_name: :borderWidth

            # @!attribute box_shadow
            #
            #   @return [String]
            required :box_shadow, String, api_name: :boxShadow

            # @!attribute css
            #   Ready-to-use CSS declaration block for this component style
            #
            #   @return [String]
            required :css, String

            # @!attribute padding
            #
            #   @return [String]
            required :padding, String

            # @!attribute text_color
            #
            #   @return [String]
            required :text_color, String, api_name: :textColor

            # @!method initialize(background_color:, border_color:, border_radius:, border_style:, border_width:, box_shadow:, css:, padding:, text_color:)
            #   Some parameter documentations has been truncated, see
            #   {BrandDev::Models::BrandStyleguideResponse::Styleguide::Components::Card} for
            #   more details.
            #
            #   Card component style
            #
            #   @param background_color [String]
            #
            #   @param border_color [String] Border color as CSS hex (#RRGGBB or #RRGGBBAA when computed border-color has alp
            #
            #   @param border_radius [String]
            #
            #   @param border_style [String]
            #
            #   @param border_width [String]
            #
            #   @param box_shadow [String]
            #
            #   @param css [String] Ready-to-use CSS declaration block for this component style
            #
            #   @param padding [String]
            #
            #   @param text_color [String]
          end
        end

        # @see BrandDev::Models::BrandStyleguideResponse::Styleguide#element_spacing
        class ElementSpacing < BrandDev::Internal::Type::BaseModel
          # @!attribute lg
          #
          #   @return [String]
          required :lg, String

          # @!attribute md
          #
          #   @return [String]
          required :md, String

          # @!attribute sm
          #
          #   @return [String]
          required :sm, String

          # @!attribute xl
          #
          #   @return [String]
          required :xl, String

          # @!attribute xs
          #
          #   @return [String]
          required :xs, String

          # @!method initialize(lg:, md:, sm:, xl:, xs:)
          #   Spacing system used on the website
          #
          #   @param lg [String]
          #   @param md [String]
          #   @param sm [String]
          #   @param xl [String]
          #   @param xs [String]
        end

        class FontLink < BrandDev::Internal::Type::BaseModel
          # @!attribute files
          #   Upright font files keyed by weight string (e.g. "400" for regular, "500",
          #   "700"). Values are absolute URLs.
          #
          #   @return [Hash{Symbol=>String}]
          required :files, BrandDev::Internal::Type::HashOf[String]

          # @!attribute type
          #
          #   @return [Symbol, BrandDev::Models::BrandStyleguideResponse::Styleguide::FontLink::Type]
          required :type, enum: -> { BrandDev::Models::BrandStyleguideResponse::Styleguide::FontLink::Type }

          # @!attribute category
          #   Google Fonts category when type is google (e.g. sans-serif, serif, monospace,
          #   display, handwriting). Omitted for custom fonts when unknown.
          #
          #   @return [String, nil]
          optional :category, String

          # @!attribute display_name
          #   Present when type is custom: human-readable name derived from the fontLinks key
          #   (strip build/hash suffixes, split camelCase / PascalCase, normalize separators).
          #   Google entries omit this.
          #
          #   @return [String, nil]
          optional :display_name, String, api_name: :displayName

          # @!method initialize(files:, type:, category: nil, display_name: nil)
          #   Some parameter documentations has been truncated, see
          #   {BrandDev::Models::BrandStyleguideResponse::Styleguide::FontLink} for more
          #   details.
          #
          #   @param files [Hash{Symbol=>String}] Upright font files keyed by weight string (e.g. "400" for regular, "500", "700")
          #
          #   @param type [Symbol, BrandDev::Models::BrandStyleguideResponse::Styleguide::FontLink::Type]
          #
          #   @param category [String] Google Fonts category when type is google (e.g. sans-serif, serif, monospace, di
          #
          #   @param display_name [String] Present when type is custom: human-readable name derived from the fontLinks key

          # @see BrandDev::Models::BrandStyleguideResponse::Styleguide::FontLink#type
          module Type
            extend BrandDev::Internal::Type::Enum

            GOOGLE = :google
            CUSTOM = :custom

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # The primary color mode of the website design
        #
        # @see BrandDev::Models::BrandStyleguideResponse::Styleguide#mode
        module Mode
          extend BrandDev::Internal::Type::Enum

          LIGHT = :light
          DARK = :dark

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see BrandDev::Models::BrandStyleguideResponse::Styleguide#shadows
        class Shadows < BrandDev::Internal::Type::BaseModel
          # @!attribute inner
          #
          #   @return [String]
          required :inner, String

          # @!attribute lg
          #
          #   @return [String]
          required :lg, String

          # @!attribute md
          #
          #   @return [String]
          required :md, String

          # @!attribute sm
          #
          #   @return [String]
          required :sm, String

          # @!attribute xl
          #
          #   @return [String]
          required :xl, String

          # @!method initialize(inner:, lg:, md:, sm:, xl:)
          #   Shadow styles used on the website
          #
          #   @param inner [String]
          #   @param lg [String]
          #   @param md [String]
          #   @param sm [String]
          #   @param xl [String]
        end

        # @see BrandDev::Models::BrandStyleguideResponse::Styleguide#typography
        class Typography < BrandDev::Internal::Type::BaseModel
          # @!attribute headings
          #   Heading styles
          #
          #   @return [BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings]
          required :headings, -> { BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings }

          # @!attribute p_
          #
          #   @return [BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::P, nil]
          optional :p_, -> { BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::P }, api_name: :p

          # @!method initialize(headings:, p_: nil)
          #   Typography styles used on the website
          #
          #   @param headings [BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings] Heading styles
          #
          #   @param p_ [BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::P]

          # @see BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography#headings
          class Headings < BrandDev::Internal::Type::BaseModel
            # @!attribute h1
            #
            #   @return [BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings::H1, nil]
            optional :h1, -> { BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings::H1 }

            # @!attribute h2
            #
            #   @return [BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings::H2, nil]
            optional :h2, -> { BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings::H2 }

            # @!attribute h3
            #
            #   @return [BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings::H3, nil]
            optional :h3, -> { BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings::H3 }

            # @!attribute h4
            #
            #   @return [BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings::H4, nil]
            optional :h4, -> { BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings::H4 }

            # @!method initialize(h1: nil, h2: nil, h3: nil, h4: nil)
            #   Heading styles
            #
            #   @param h1 [BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings::H1]
            #   @param h2 [BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings::H2]
            #   @param h3 [BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings::H3]
            #   @param h4 [BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings::H4]

            # @see BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings#h1
            class H1 < BrandDev::Internal::Type::BaseModel
              # @!attribute font_fallbacks
              #   Full ordered font list from resolved computed font-family
              #
              #   @return [Array<String>]
              required :font_fallbacks, BrandDev::Internal::Type::ArrayOf[String], api_name: :fontFallbacks

              # @!attribute font_family
              #   Primary face (first family in the computed stack)
              #
              #   @return [String]
              required :font_family, String, api_name: :fontFamily

              # @!attribute font_size
              #
              #   @return [String]
              required :font_size, String, api_name: :fontSize

              # @!attribute font_weight
              #
              #   @return [Float]
              required :font_weight, Float, api_name: :fontWeight

              # @!attribute letter_spacing
              #
              #   @return [String]
              required :letter_spacing, String, api_name: :letterSpacing

              # @!attribute line_height
              #
              #   @return [String]
              required :line_height, String, api_name: :lineHeight

              # @!method initialize(font_fallbacks:, font_family:, font_size:, font_weight:, letter_spacing:, line_height:)
              #   @param font_fallbacks [Array<String>] Full ordered font list from resolved computed font-family
              #
              #   @param font_family [String] Primary face (first family in the computed stack)
              #
              #   @param font_size [String]
              #
              #   @param font_weight [Float]
              #
              #   @param letter_spacing [String]
              #
              #   @param line_height [String]
            end

            # @see BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings#h2
            class H2 < BrandDev::Internal::Type::BaseModel
              # @!attribute font_fallbacks
              #   Full ordered font list from resolved computed font-family
              #
              #   @return [Array<String>]
              required :font_fallbacks, BrandDev::Internal::Type::ArrayOf[String], api_name: :fontFallbacks

              # @!attribute font_family
              #   Primary face (first family in the computed stack)
              #
              #   @return [String]
              required :font_family, String, api_name: :fontFamily

              # @!attribute font_size
              #
              #   @return [String]
              required :font_size, String, api_name: :fontSize

              # @!attribute font_weight
              #
              #   @return [Float]
              required :font_weight, Float, api_name: :fontWeight

              # @!attribute letter_spacing
              #
              #   @return [String]
              required :letter_spacing, String, api_name: :letterSpacing

              # @!attribute line_height
              #
              #   @return [String]
              required :line_height, String, api_name: :lineHeight

              # @!method initialize(font_fallbacks:, font_family:, font_size:, font_weight:, letter_spacing:, line_height:)
              #   @param font_fallbacks [Array<String>] Full ordered font list from resolved computed font-family
              #
              #   @param font_family [String] Primary face (first family in the computed stack)
              #
              #   @param font_size [String]
              #
              #   @param font_weight [Float]
              #
              #   @param letter_spacing [String]
              #
              #   @param line_height [String]
            end

            # @see BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings#h3
            class H3 < BrandDev::Internal::Type::BaseModel
              # @!attribute font_fallbacks
              #   Full ordered font list from resolved computed font-family
              #
              #   @return [Array<String>]
              required :font_fallbacks, BrandDev::Internal::Type::ArrayOf[String], api_name: :fontFallbacks

              # @!attribute font_family
              #   Primary face (first family in the computed stack)
              #
              #   @return [String]
              required :font_family, String, api_name: :fontFamily

              # @!attribute font_size
              #
              #   @return [String]
              required :font_size, String, api_name: :fontSize

              # @!attribute font_weight
              #
              #   @return [Float]
              required :font_weight, Float, api_name: :fontWeight

              # @!attribute letter_spacing
              #
              #   @return [String]
              required :letter_spacing, String, api_name: :letterSpacing

              # @!attribute line_height
              #
              #   @return [String]
              required :line_height, String, api_name: :lineHeight

              # @!method initialize(font_fallbacks:, font_family:, font_size:, font_weight:, letter_spacing:, line_height:)
              #   @param font_fallbacks [Array<String>] Full ordered font list from resolved computed font-family
              #
              #   @param font_family [String] Primary face (first family in the computed stack)
              #
              #   @param font_size [String]
              #
              #   @param font_weight [Float]
              #
              #   @param letter_spacing [String]
              #
              #   @param line_height [String]
            end

            # @see BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography::Headings#h4
            class H4 < BrandDev::Internal::Type::BaseModel
              # @!attribute font_fallbacks
              #   Full ordered font list from resolved computed font-family
              #
              #   @return [Array<String>]
              required :font_fallbacks, BrandDev::Internal::Type::ArrayOf[String], api_name: :fontFallbacks

              # @!attribute font_family
              #   Primary face (first family in the computed stack)
              #
              #   @return [String]
              required :font_family, String, api_name: :fontFamily

              # @!attribute font_size
              #
              #   @return [String]
              required :font_size, String, api_name: :fontSize

              # @!attribute font_weight
              #
              #   @return [Float]
              required :font_weight, Float, api_name: :fontWeight

              # @!attribute letter_spacing
              #
              #   @return [String]
              required :letter_spacing, String, api_name: :letterSpacing

              # @!attribute line_height
              #
              #   @return [String]
              required :line_height, String, api_name: :lineHeight

              # @!method initialize(font_fallbacks:, font_family:, font_size:, font_weight:, letter_spacing:, line_height:)
              #   @param font_fallbacks [Array<String>] Full ordered font list from resolved computed font-family
              #
              #   @param font_family [String] Primary face (first family in the computed stack)
              #
              #   @param font_size [String]
              #
              #   @param font_weight [Float]
              #
              #   @param letter_spacing [String]
              #
              #   @param line_height [String]
            end
          end

          # @see BrandDev::Models::BrandStyleguideResponse::Styleguide::Typography#p_
          class P < BrandDev::Internal::Type::BaseModel
            # @!attribute font_fallbacks
            #   Full ordered font list from resolved computed font-family
            #
            #   @return [Array<String>]
            required :font_fallbacks, BrandDev::Internal::Type::ArrayOf[String], api_name: :fontFallbacks

            # @!attribute font_family
            #   Primary face (first family in the computed stack)
            #
            #   @return [String]
            required :font_family, String, api_name: :fontFamily

            # @!attribute font_size
            #
            #   @return [String]
            required :font_size, String, api_name: :fontSize

            # @!attribute font_weight
            #
            #   @return [Float]
            required :font_weight, Float, api_name: :fontWeight

            # @!attribute letter_spacing
            #
            #   @return [String]
            required :letter_spacing, String, api_name: :letterSpacing

            # @!attribute line_height
            #
            #   @return [String]
            required :line_height, String, api_name: :lineHeight

            # @!method initialize(font_fallbacks:, font_family:, font_size:, font_weight:, letter_spacing:, line_height:)
            #   @param font_fallbacks [Array<String>] Full ordered font list from resolved computed font-family
            #
            #   @param font_family [String] Primary face (first family in the computed stack)
            #
            #   @param font_size [String]
            #
            #   @param font_weight [Float]
            #
            #   @param letter_spacing [String]
            #
            #   @param line_height [String]
          end
        end
      end
    end
  end
end
