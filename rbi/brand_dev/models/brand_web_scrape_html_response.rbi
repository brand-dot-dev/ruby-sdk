# typed: strong

module BrandDev
  module Models
    class BrandWebScrapeHTMLResponse < BrandDev::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            BrandDev::Models::BrandWebScrapeHTMLResponse,
            BrandDev::Internal::AnyHash
          )
        end

      # Raw HTML content of the page
      sig { returns(String) }
      attr_accessor :html

      # Indicates success
      sig do
        returns(
          BrandDev::Models::BrandWebScrapeHTMLResponse::Success::TaggedBoolean
        )
      end
      attr_accessor :success

      # The URL that was scraped
      sig { returns(String) }
      attr_accessor :url

      sig do
        params(
          html: String,
          success:
            BrandDev::Models::BrandWebScrapeHTMLResponse::Success::OrBoolean,
          url: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Raw HTML content of the page
        html:,
        # Indicates success
        success:,
        # The URL that was scraped
        url:
      )
      end

      sig do
        override.returns(
          {
            html: String,
            success:
              BrandDev::Models::BrandWebScrapeHTMLResponse::Success::TaggedBoolean,
            url: String
          }
        )
      end
      def to_hash
      end

      # Indicates success
      module Success
        extend BrandDev::Internal::Type::Enum

        TaggedBoolean =
          T.type_alias do
            T.all(
              T::Boolean,
              BrandDev::Models::BrandWebScrapeHTMLResponse::Success
            )
          end
        OrBoolean = T.type_alias { T::Boolean }

        TRUE =
          T.let(
            true,
            BrandDev::Models::BrandWebScrapeHTMLResponse::Success::TaggedBoolean
          )

        sig do
          override.returns(
            T::Array[
              BrandDev::Models::BrandWebScrapeHTMLResponse::Success::TaggedBoolean
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
