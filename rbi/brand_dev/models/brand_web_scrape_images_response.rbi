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

      # Images found on the page.
      sig do
        returns(T::Array[BrandDev::Models::BrandWebScrapeImagesResponse::Image])
      end
      attr_accessor :images

      # Always true on success.
      sig do
        returns(
          BrandDev::Models::BrandWebScrapeImagesResponse::Success::TaggedBoolean
        )
      end
      attr_accessor :success

      # Page URL that was scraped.
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
        # Images found on the page.
        images:,
        # Always true on success.
        success:,
        # Page URL that was scraped.
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

        # Image alt text, or null when unavailable.
        sig { returns(T.nilable(String)) }
        attr_accessor :alt

        # Where the image was found.
        sig do
          returns(
            BrandDev::Models::BrandWebScrapeImagesResponse::Image::Element::TaggedSymbol
          )
        end
        attr_accessor :element

        # Original image value: URL, inline SVG or HTML, or base64 data URI.
        sig { returns(String) }
        attr_accessor :src

        # Format of src.
        sig do
          returns(
            BrandDev::Models::BrandWebScrapeImagesResponse::Image::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        # Requested metadata for images that could be processed.
        sig do
          returns(
            T.nilable(
              BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment
            )
          )
        end
        attr_reader :enrichment

        sig do
          params(
            enrichment:
              BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment::OrHash
          ).void
        end
        attr_writer :enrichment

        sig do
          params(
            alt: T.nilable(String),
            element:
              BrandDev::Models::BrandWebScrapeImagesResponse::Image::Element::OrSymbol,
            src: String,
            type:
              BrandDev::Models::BrandWebScrapeImagesResponse::Image::Type::OrSymbol,
            enrichment:
              BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Image alt text, or null when unavailable.
          alt:,
          # Where the image was found.
          element:,
          # Original image value: URL, inline SVG or HTML, or base64 data URI.
          src:,
          # Format of src.
          type:,
          # Requested metadata for images that could be processed.
          enrichment: nil
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
                BrandDev::Models::BrandWebScrapeImagesResponse::Image::Type::TaggedSymbol,
              enrichment:
                BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment
            }
          )
        end
        def to_hash
        end

        # Where the image was found.
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
          CSS =
            T.let(
              :css,
              BrandDev::Models::BrandWebScrapeImagesResponse::Image::Element::TaggedSymbol
            )
          OBJECT =
            T.let(
              :object,
              BrandDev::Models::BrandWebScrapeImagesResponse::Image::Element::TaggedSymbol
            )
          META =
            T.let(
              :meta,
              BrandDev::Models::BrandWebScrapeImagesResponse::Image::Element::TaggedSymbol
            )
          BACKGROUND =
            T.let(
              :background,
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

        # Format of src.
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

        class Enrichment < BrandDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment,
                BrandDev::Internal::AnyHash
              )
            end

          # Image height in pixels, when measured.
          sig { returns(T.nilable(Integer)) }
          attr_reader :height

          sig { params(height: Integer).void }
          attr_writer :height

          # Detected MIME type, when hosted.
          sig { returns(T.nilable(String)) }
          attr_reader :mimetype

          sig { params(mimetype: String).void }
          attr_writer :mimetype

          # Visual asset category, when classified.
          sig do
            returns(
              T.nilable(
                BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment::Type::TaggedSymbol
              )
            )
          end
          attr_reader :type

          sig do
            params(
              type:
                BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment::Type::OrSymbol
            ).void
          end
          attr_writer :type

          # Brand.dev CDN URL, when hosted.
          sig { returns(T.nilable(String)) }
          attr_reader :url

          sig { params(url: String).void }
          attr_writer :url

          # Image width in pixels, when measured.
          sig { returns(T.nilable(Integer)) }
          attr_reader :width

          sig { params(width: Integer).void }
          attr_writer :width

          # Requested metadata for images that could be processed.
          sig do
            params(
              height: Integer,
              mimetype: String,
              type:
                BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment::Type::OrSymbol,
              url: String,
              width: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # Image height in pixels, when measured.
            height: nil,
            # Detected MIME type, when hosted.
            mimetype: nil,
            # Visual asset category, when classified.
            type: nil,
            # Brand.dev CDN URL, when hosted.
            url: nil,
            # Image width in pixels, when measured.
            width: nil
          )
          end

          sig do
            override.returns(
              {
                height: Integer,
                mimetype: String,
                type:
                  BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment::Type::TaggedSymbol,
                url: String,
                width: Integer
              }
            )
          end
          def to_hash
          end

          # Visual asset category, when classified.
          module Type
            extend BrandDev::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PHOTOGRAPHY =
              T.let(
                :photography,
                BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment::Type::TaggedSymbol
              )
            ILLUSTRATION =
              T.let(
                :illustration,
                BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment::Type::TaggedSymbol
              )
            LOGO =
              T.let(
                :logo,
                BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment::Type::TaggedSymbol
              )
            WORDMARK =
              T.let(
                :wordmark,
                BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment::Type::TaggedSymbol
              )
            ICON =
              T.let(
                :icon,
                BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment::Type::TaggedSymbol
              )
            PATTERN =
              T.let(
                :pattern,
                BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment::Type::TaggedSymbol
              )
            GRAPHIC =
              T.let(
                :graphic,
                BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment::Type::TaggedSymbol
              )
            OTHER =
              T.let(
                :other,
                BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  BrandDev::Models::BrandWebScrapeImagesResponse::Image::Enrichment::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end

      # Always true on success.
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
