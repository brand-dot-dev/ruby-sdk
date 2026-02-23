# typed: strong

module BrandDev
  module Models
    class BrandWebScrapeMdResponse < BrandDev::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            BrandDev::Models::BrandWebScrapeMdResponse,
            BrandDev::Internal::AnyHash
          )
        end

      # Page content converted to GitHub Flavored Markdown
      sig { returns(String) }
      attr_accessor :markdown

      # Indicates success
      sig do
        returns(
          BrandDev::Models::BrandWebScrapeMdResponse::Success::TaggedBoolean
        )
      end
      attr_accessor :success

      # The URL that was scraped
      sig { returns(String) }
      attr_accessor :url

      sig do
        params(
          markdown: String,
          success:
            BrandDev::Models::BrandWebScrapeMdResponse::Success::OrBoolean,
          url: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Page content converted to GitHub Flavored Markdown
        markdown:,
        # Indicates success
        success:,
        # The URL that was scraped
        url:
      )
      end

      sig do
        override.returns(
          {
            markdown: String,
            success:
              BrandDev::Models::BrandWebScrapeMdResponse::Success::TaggedBoolean,
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
              BrandDev::Models::BrandWebScrapeMdResponse::Success
            )
          end
        OrBoolean = T.type_alias { T::Boolean }

        TRUE =
          T.let(
            true,
            BrandDev::Models::BrandWebScrapeMdResponse::Success::TaggedBoolean
          )

        sig do
          override.returns(
            T::Array[
              BrandDev::Models::BrandWebScrapeMdResponse::Success::TaggedBoolean
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
