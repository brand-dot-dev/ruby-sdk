# typed: strong

module BrandDev
  module Models
    class BrandPrefetchByEmailResponse < BrandDev::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            BrandDev::Models::BrandPrefetchByEmailResponse,
            BrandDev::Internal::AnyHash
          )
        end

      # The domain that was queued for prefetching
      sig { returns(T.nilable(String)) }
      attr_reader :domain

      sig { params(domain: String).void }
      attr_writer :domain

      # Success message
      sig { returns(T.nilable(String)) }
      attr_reader :message

      sig { params(message: String).void }
      attr_writer :message

      # Status of the response, e.g., 'ok'
      sig { returns(T.nilable(String)) }
      attr_reader :status

      sig { params(status: String).void }
      attr_writer :status

      sig do
        params(domain: String, message: String, status: String).returns(
          T.attached_class
        )
      end
      def self.new(
        # The domain that was queued for prefetching
        domain: nil,
        # Success message
        message: nil,
        # Status of the response, e.g., 'ok'
        status: nil
      )
      end

      sig do
        override.returns({ domain: String, message: String, status: String })
      end
      def to_hash
      end
    end
  end
end
