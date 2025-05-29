# typed: strong

module BrandDev
  module Models
    class BrandRetrieveNaicsParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(BrandDev::BrandRetrieveNaicsParams, BrandDev::Internal::AnyHash)
        end

      # Brand domain or title to retrieve NAICS code for. If a valid domain is provided
      # in `input`, it will be used for classification, otherwise, we will search for
      # the brand using the provided title.
      sig { returns(String) }
      attr_accessor :input

      sig do
        params(
          input: String,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Brand domain or title to retrieve NAICS code for. If a valid domain is provided
        # in `input`, it will be used for classification, otherwise, we will search for
        # the brand using the provided title.
        input:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { input: String, request_options: BrandDev::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
