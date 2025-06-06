# typed: strong

module BrandDev
  module Models
    class BrandPrefetchParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(BrandDev::BrandPrefetchParams, BrandDev::Internal::AnyHash)
        end

      # Domain name to prefetch brand data for
      sig { returns(String) }
      attr_accessor :domain

      sig do
        params(
          domain: String,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Domain name to prefetch brand data for
        domain:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { domain: String, request_options: BrandDev::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
