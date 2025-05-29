# typed: strong

module BrandDev
  module Models
    class BrandIdentifyFromTransactionParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            BrandDev::BrandIdentifyFromTransactionParams,
            BrandDev::Internal::AnyHash
          )
        end

      # Transaction information to identify the brand
      sig { returns(String) }
      attr_accessor :transaction_info

      sig do
        params(
          transaction_info: String,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Transaction information to identify the brand
        transaction_info:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            transaction_info: String,
            request_options: BrandDev::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
