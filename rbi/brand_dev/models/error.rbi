# typed: strong

module BrandDev
  module Models
    class Error < BrandDev::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(BrandDev::Error, BrandDev::Internal::AnyHash) }

      # Batch error code.
      sig { returns(String) }
      attr_accessor :code

      # Batch error message.
      sig { returns(String) }
      attr_accessor :message

      # Why the batch failed.
      sig { params(code: String, message: String).returns(T.attached_class) }
      def self.new(
        # Batch error code.
        code:,
        # Batch error message.
        message:
      )
      end

      sig { override.returns({ code: String, message: String }) }
      def to_hash
      end
    end
  end
end
