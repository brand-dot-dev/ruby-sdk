# typed: strong

module BrandDev
  module Models
    class BrandScreenshotResponse < BrandDev::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            BrandDev::Models::BrandScreenshotResponse,
            BrandDev::Internal::AnyHash
          )
        end

      # HTTP status code
      sig { returns(T.nilable(Integer)) }
      attr_reader :code

      sig { params(code: Integer).void }
      attr_writer :code

      # The normalized domain that was processed
      sig { returns(T.nilable(String)) }
      attr_reader :domain

      sig { params(domain: String).void }
      attr_writer :domain

      # Public URL of the uploaded screenshot image
      sig { returns(T.nilable(String)) }
      attr_reader :screenshot

      sig { params(screenshot: String).void }
      attr_writer :screenshot

      # Type of screenshot that was captured
      sig do
        returns(
          T.nilable(
            BrandDev::Models::BrandScreenshotResponse::ScreenshotType::TaggedSymbol
          )
        )
      end
      attr_reader :screenshot_type

      sig do
        params(
          screenshot_type:
            BrandDev::Models::BrandScreenshotResponse::ScreenshotType::OrSymbol
        ).void
      end
      attr_writer :screenshot_type

      # Status of the response, e.g., 'ok'
      sig { returns(T.nilable(String)) }
      attr_reader :status

      sig { params(status: String).void }
      attr_writer :status

      sig do
        params(
          code: Integer,
          domain: String,
          screenshot: String,
          screenshot_type:
            BrandDev::Models::BrandScreenshotResponse::ScreenshotType::OrSymbol,
          status: String
        ).returns(T.attached_class)
      end
      def self.new(
        # HTTP status code
        code: nil,
        # The normalized domain that was processed
        domain: nil,
        # Public URL of the uploaded screenshot image
        screenshot: nil,
        # Type of screenshot that was captured
        screenshot_type: nil,
        # Status of the response, e.g., 'ok'
        status: nil
      )
      end

      sig do
        override.returns(
          {
            code: Integer,
            domain: String,
            screenshot: String,
            screenshot_type:
              BrandDev::Models::BrandScreenshotResponse::ScreenshotType::TaggedSymbol,
            status: String
          }
        )
      end
      def to_hash
      end

      # Type of screenshot that was captured
      module ScreenshotType
        extend BrandDev::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              BrandDev::Models::BrandScreenshotResponse::ScreenshotType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        VIEWPORT =
          T.let(
            :viewport,
            BrandDev::Models::BrandScreenshotResponse::ScreenshotType::TaggedSymbol
          )
        FULL_PAGE =
          T.let(
            :fullPage,
            BrandDev::Models::BrandScreenshotResponse::ScreenshotType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              BrandDev::Models::BrandScreenshotResponse::ScreenshotType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
