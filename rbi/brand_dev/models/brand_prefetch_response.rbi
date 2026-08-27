# typed: strong

module BrandDev
  module Models
    class BrandPrefetchResponse < BrandDev::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            BrandDev::Models::BrandPrefetchResponse,
            BrandDev::Internal::AnyHash
          )
        end

      # The domain that was queued for prefetching
      sig { returns(T.nilable(String)) }
      attr_reader :domain

      sig { params(domain: String).void }
      attr_writer :domain

      # Metadata about the API key used for the request. Included in every response
      # whenever a valid API key is provided, even when the response status is not 200.
      sig do
        returns(T.nilable(BrandDev::Models::BrandPrefetchResponse::KeyMetadata))
      end
      attr_reader :key_metadata

      sig do
        params(
          key_metadata:
            BrandDev::Models::BrandPrefetchResponse::KeyMetadata::OrHash
        ).void
      end
      attr_writer :key_metadata

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
        params(
          domain: String,
          key_metadata:
            BrandDev::Models::BrandPrefetchResponse::KeyMetadata::OrHash,
          message: String,
          status: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The domain that was queued for prefetching
        domain: nil,
        # Metadata about the API key used for the request. Included in every response
        # whenever a valid API key is provided, even when the response status is not 200.
        key_metadata: nil,
        # Success message
        message: nil,
        # Status of the response, e.g., 'ok'
        status: nil
      )
      end

      sig do
        override.returns(
          {
            domain: String,
            key_metadata: BrandDev::Models::BrandPrefetchResponse::KeyMetadata,
            message: String,
            status: String
          }
        )
      end
      def to_hash
      end

      class KeyMetadata < BrandDev::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              BrandDev::Models::BrandPrefetchResponse::KeyMetadata,
              BrandDev::Internal::AnyHash
            )
          end

        # The number of credits consumed by this request.
        sig { returns(Integer) }
        attr_accessor :credits_consumed

        # The number of credits remaining for your organization after this request.
        sig { returns(Integer) }
        attr_accessor :credits_remaining

        # Metadata about the API key used for the request. Included in every response
        # whenever a valid API key is provided, even when the response status is not 200.
        sig do
          params(credits_consumed: Integer, credits_remaining: Integer).returns(
            T.attached_class
          )
        end
        def self.new(
          # The number of credits consumed by this request.
          credits_consumed:,
          # The number of credits remaining for your organization after this request.
          credits_remaining:
        )
        end

        sig do
          override.returns(
            { credits_consumed: Integer, credits_remaining: Integer }
          )
        end
        def to_hash
        end
      end
    end
  end
end
