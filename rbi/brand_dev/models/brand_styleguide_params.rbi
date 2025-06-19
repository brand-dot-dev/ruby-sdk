# typed: strong

module BrandDev
  module Models
    class BrandStyleguideParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(BrandDev::BrandStyleguideParams, BrandDev::Internal::AnyHash)
        end

      # Domain name to extract styleguide from (e.g., 'example.com', 'google.com'). The
      # domain will be automatically normalized and validated.
      sig { returns(String) }
      attr_accessor :domain

      # Optional timeout in milliseconds for the request. If the request takes longer
      # than this value, it will be aborted with a 408 status code. Maximum allowed
      # value is 300000ms (5 minutes).
      sig { returns(T.nilable(Integer)) }
      attr_reader :timeout_ms

      sig { params(timeout_ms: Integer).void }
      attr_writer :timeout_ms

      sig do
        params(
          domain: String,
          timeout_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Domain name to extract styleguide from (e.g., 'example.com', 'google.com'). The
        # domain will be automatically normalized and validated.
        domain:,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            domain: String,
            timeout_ms: Integer,
            request_options: BrandDev::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
