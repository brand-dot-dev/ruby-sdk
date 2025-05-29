# typed: strong

module BrandDev
  module Models
    class BrandRetrieveNaicsResponse < BrandDev::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            BrandDev::Models::BrandRetrieveNaicsResponse,
            BrandDev::Internal::AnyHash
          )
        end

      # Array of NAICS codes and titles.
      sig do
        returns(
          T.nilable(
            T::Array[BrandDev::Models::BrandRetrieveNaicsResponse::Code]
          )
        )
      end
      attr_reader :codes

      sig do
        params(
          codes:
            T::Array[BrandDev::Models::BrandRetrieveNaicsResponse::Code::OrHash]
        ).void
      end
      attr_writer :codes

      # Domain found for the brand
      sig { returns(T.nilable(String)) }
      attr_reader :domain

      sig { params(domain: String).void }
      attr_writer :domain

      # Status of the response, e.g., 'ok'
      sig { returns(T.nilable(String)) }
      attr_reader :status

      sig { params(status: String).void }
      attr_writer :status

      # Industry classification type, for naics api it will be `naics`
      sig { returns(T.nilable(String)) }
      attr_reader :type

      sig { params(type: String).void }
      attr_writer :type

      sig do
        params(
          codes:
            T::Array[
              BrandDev::Models::BrandRetrieveNaicsResponse::Code::OrHash
            ],
          domain: String,
          status: String,
          type: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Array of NAICS codes and titles.
        codes: nil,
        # Domain found for the brand
        domain: nil,
        # Status of the response, e.g., 'ok'
        status: nil,
        # Industry classification type, for naics api it will be `naics`
        type: nil
      )
      end

      sig do
        override.returns(
          {
            codes: T::Array[BrandDev::Models::BrandRetrieveNaicsResponse::Code],
            domain: String,
            status: String,
            type: String
          }
        )
      end
      def to_hash
      end

      class Code < BrandDev::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              BrandDev::Models::BrandRetrieveNaicsResponse::Code,
              BrandDev::Internal::AnyHash
            )
          end

        # NAICS code
        sig { returns(T.nilable(String)) }
        attr_reader :code

        sig { params(code: String).void }
        attr_writer :code

        # NAICS title
        sig { returns(T.nilable(String)) }
        attr_reader :title

        sig { params(title: String).void }
        attr_writer :title

        sig { params(code: String, title: String).returns(T.attached_class) }
        def self.new(
          # NAICS code
          code: nil,
          # NAICS title
          title: nil
        )
        end

        sig { override.returns({ code: String, title: String }) }
        def to_hash
        end
      end
    end
  end
end
