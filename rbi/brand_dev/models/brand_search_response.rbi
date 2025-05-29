# typed: strong

module BrandDev
  module Models
    class BrandSearchResponseItem < BrandDev::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            BrandDev::Models::BrandSearchResponseItem,
            BrandDev::Internal::AnyHash
          )
        end

      # Domain name of the brand
      sig { returns(T.nilable(String)) }
      attr_reader :domain

      sig { params(domain: String).void }
      attr_writer :domain

      # URL of the brand's logo
      sig { returns(T.nilable(String)) }
      attr_reader :logo

      sig { params(logo: String).void }
      attr_writer :logo

      # Title or name of the brand
      sig { returns(T.nilable(String)) }
      attr_reader :title

      sig { params(title: String).void }
      attr_writer :title

      sig do
        params(domain: String, logo: String, title: String).returns(
          T.attached_class
        )
      end
      def self.new(
        # Domain name of the brand
        domain: nil,
        # URL of the brand's logo
        logo: nil,
        # Title or name of the brand
        title: nil
      )
      end

      sig { override.returns({ domain: String, logo: String, title: String }) }
      def to_hash
      end
    end

    BrandSearchResponse =
      T.let(
        BrandDev::Internal::Type::ArrayOf[
          BrandDev::Models::BrandSearchResponseItem
        ],
        BrandDev::Internal::Type::Converter
      )
  end
end
