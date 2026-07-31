# typed: strong

module BrandDev
  module Models
    class Failure < BrandDev::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(BrandDev::Failure, BrandDev::Internal::AnyHash) }

      # Why the batch itself stopped.
      sig { returns(String) }
      attr_accessor :code

      # Human-readable explanation.
      sig { returns(String) }
      attr_accessor :message

      # A failure of the batch as a whole, distinct from the per-page failures in
      # `page_errors`.
      sig { params(code: String, message: String).returns(T.attached_class) }
      def self.new(
        # Why the batch itself stopped.
        code:,
        # Human-readable explanation.
        message:
      )
      end

      sig { override.returns({ code: String, message: String }) }
      def to_hash
      end
    end
  end
end
