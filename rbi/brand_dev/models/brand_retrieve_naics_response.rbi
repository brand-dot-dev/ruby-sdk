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
        sig { returns(String) }
        attr_accessor :code

        # Confidence level for how well this NAICS code matches the company description
        sig do
          returns(
            BrandDev::Models::BrandRetrieveNaicsResponse::Code::Confidence::TaggedSymbol
          )
        end
        attr_accessor :confidence

        # NAICS title
        sig { returns(String) }
        attr_accessor :name

        sig do
          params(
            code: String,
            confidence:
              BrandDev::Models::BrandRetrieveNaicsResponse::Code::Confidence::OrSymbol,
            name: String
          ).returns(T.attached_class)
        end
        def self.new(
          # NAICS code
          code:,
          # Confidence level for how well this NAICS code matches the company description
          confidence:,
          # NAICS title
          name:
        )
        end

        sig do
          override.returns(
            {
              code: String,
              confidence:
                BrandDev::Models::BrandRetrieveNaicsResponse::Code::Confidence::TaggedSymbol,
              name: String
            }
          )
        end
        def to_hash
        end

        # Confidence level for how well this NAICS code matches the company description
        module Confidence
          extend BrandDev::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                BrandDev::Models::BrandRetrieveNaicsResponse::Code::Confidence
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HIGH =
            T.let(
              :high,
              BrandDev::Models::BrandRetrieveNaicsResponse::Code::Confidence::TaggedSymbol
            )
          MEDIUM =
            T.let(
              :medium,
              BrandDev::Models::BrandRetrieveNaicsResponse::Code::Confidence::TaggedSymbol
            )
          LOW =
            T.let(
              :low,
              BrandDev::Models::BrandRetrieveNaicsResponse::Code::Confidence::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                BrandDev::Models::BrandRetrieveNaicsResponse::Code::Confidence::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
