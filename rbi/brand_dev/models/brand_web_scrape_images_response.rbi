# typed: strong

module BrandDev
  module Models
    class BrandWebScrapeImagesResponse < BrandDev::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            BrandDev::Models::BrandWebScrapeImagesResponse,
            BrandDev::Internal::AnyHash
          )
        end

      # Array of scraped images
      sig do
        returns(T::Array[BrandDev::Models::BrandWebScrapeImagesResponse::Image])
      end
      attr_accessor :images

      # Indicates success
      sig do
        returns(
          BrandDev::Models::BrandWebScrapeImagesResponse::Success::TaggedBoolean
        )
      end
      attr_accessor :success

      # The URL that was scraped
      sig { returns(String) }
      attr_accessor :url

      sig do
        params(
          images:
            T::Array[
              BrandDev::Models::BrandWebScrapeImagesResponse::Image::OrHash
            ],
          success:
            BrandDev::Models::BrandWebScrapeImagesResponse::Success::OrBoolean,
          url: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Array of scraped images
        images:,
        # Indicates success
        success:,
        # The URL that was scraped
        url:
      )
      end

      sig do
        override.returns(
          {
            images:
              T::Array[BrandDev::Models::BrandWebScrapeImagesResponse::Image],
            success:
              BrandDev::Models::BrandWebScrapeImagesResponse::Success::TaggedBoolean,
            url: String
          }
        )
      end
      def to_hash
      end

      class Image < BrandDev::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              BrandDev::Models::BrandWebScrapeImagesResponse::Image,
              BrandDev::Internal::AnyHash
            )
          end

        # Alt text of the image, or null if not present
        sig { returns(T.nilable(String)) }
        attr_accessor :alt

        # The HTML element the image was found in
        sig do
          returns(
            BrandDev::Models::BrandWebScrapeImagesResponse::Image::Element::TaggedSymbol
          )
        end
        attr_accessor :element

        # The image source - can be a URL, inline HTML (for SVGs), or a base64 data URI
        sig { returns(String) }
        attr_accessor :src

        # The type/format of the src value
        sig do
          returns(
            BrandDev::Models::BrandWebScrapeImagesResponse::Image::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            alt: T.nilable(String),
            element:
              BrandDev::Models::BrandWebScrapeImagesResponse::Image::Element::OrSymbol,
            src: String,
            type:
              BrandDev::Models::BrandWebScrapeImagesResponse::Image::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Alt text of the image, or null if not present
          alt:,
          # The HTML element the image was found in
          element:,
          # The image source - can be a URL, inline HTML (for SVGs), or a base64 data URI
          src:,
          # The type/format of the src value
          type:
        )
        end

        sig do
          override.returns(
            {
              alt: T.nilable(String),
              element:
                BrandDev::Models::BrandWebScrapeImagesResponse::Image::Element::TaggedSymbol,
              src: String,
              type:
                BrandDev::Models::BrandWebScrapeImagesResponse::Image::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # The HTML element the image was found in
        module Element
          extend BrandDev::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                BrandDev::Models::BrandWebScrapeImagesResponse::Image::Element
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IMG =
            T.let(
              :img,
              BrandDev::Models::BrandWebScrapeImagesResponse::Image::Element::TaggedSymbol
            )
          SVG =
            T.let(
              :svg,
              BrandDev::Models::BrandWebScrapeImagesResponse::Image::Element::TaggedSymbol
            )
          LINK =
            T.let(
              :link,
              BrandDev::Models::BrandWebScrapeImagesResponse::Image::Element::TaggedSymbol
            )
          SOURCE =
            T.let(
              :source,
              BrandDev::Models::BrandWebScrapeImagesResponse::Image::Element::TaggedSymbol
            )
          VIDEO =
            T.let(
              :video,
              BrandDev::Models::BrandWebScrapeImagesResponse::Image::Element::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                BrandDev::Models::BrandWebScrapeImagesResponse::Image::Element::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The type/format of the src value
        module Type
          extend BrandDev::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                BrandDev::Models::BrandWebScrapeImagesResponse::Image::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          URL =
            T.let(
              :url,
              BrandDev::Models::BrandWebScrapeImagesResponse::Image::Type::TaggedSymbol
            )
          HTML =
            T.let(
              :html,
              BrandDev::Models::BrandWebScrapeImagesResponse::Image::Type::TaggedSymbol
            )
          BASE64 =
            T.let(
              :base64,
              BrandDev::Models::BrandWebScrapeImagesResponse::Image::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                BrandDev::Models::BrandWebScrapeImagesResponse::Image::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # Indicates success
      module Success
        extend BrandDev::Internal::Type::Enum

        TaggedBoolean =
          T.type_alias do
            T.all(
              T::Boolean,
              BrandDev::Models::BrandWebScrapeImagesResponse::Success
            )
          end
        OrBoolean = T.type_alias { T::Boolean }

        TRUE =
          T.let(
            true,
            BrandDev::Models::BrandWebScrapeImagesResponse::Success::TaggedBoolean
          )

        sig do
          override.returns(
            T::Array[
              BrandDev::Models::BrandWebScrapeImagesResponse::Success::TaggedBoolean
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
