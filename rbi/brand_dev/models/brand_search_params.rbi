# typed: strong

module BrandDev
  module Models
    class BrandSearchParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(BrandDev::BrandSearchParams, BrandDev::Internal::AnyHash)
        end

      # Query string to search brands
      sig { returns(String) }
      attr_accessor :query

      sig do
        params(
          query: String,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Query string to search brands
        query:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { query: String, request_options: BrandDev::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
