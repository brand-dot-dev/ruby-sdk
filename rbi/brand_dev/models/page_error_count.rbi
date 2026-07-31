# typed: strong

module BrandDev
  module Models
    class PageErrorCount < BrandDev::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(BrandDev::PageErrorCount, BrandDev::Internal::AnyHash)
        end

      # Error code for these failures.
      sig { returns(String) }
      attr_accessor :code

      # Pages that failed with this code.
      sig { returns(Integer) }
      attr_accessor :count

      # Page failures sharing one error code.
      sig { params(code: String, count: Integer).returns(T.attached_class) }
      def self.new(
        # Error code for these failures.
        code:,
        # Pages that failed with this code.
        count:
      )
      end

      sig { override.returns({ code: String, count: Integer }) }
      def to_hash
      end
    end
  end
end
