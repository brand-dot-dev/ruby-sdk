# typed: strong

module BrandDev
  module Models
    class BrandAIQueryResponse < BrandDev::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            BrandDev::Models::BrandAIQueryResponse,
            BrandDev::Internal::AnyHash
          )
        end

      # Array of extracted data points
      sig do
        returns(
          T.nilable(
            T::Array[BrandDev::Models::BrandAIQueryResponse::DataExtracted]
          )
        )
      end
      attr_reader :data_extracted

      sig do
        params(
          data_extracted:
            T::Array[
              BrandDev::Models::BrandAIQueryResponse::DataExtracted::OrHash
            ]
        ).void
      end
      attr_writer :data_extracted

      # The domain that was analyzed
      sig { returns(T.nilable(String)) }
      attr_reader :domain

      sig { params(domain: String).void }
      attr_writer :domain

      # Metadata about the API key used for the request. Included in every response
      # whenever a valid API key is provided, even when the response status is not 200.
      sig do
        returns(T.nilable(BrandDev::Models::BrandAIQueryResponse::KeyMetadata))
      end
      attr_reader :key_metadata

      sig do
        params(
          key_metadata:
            BrandDev::Models::BrandAIQueryResponse::KeyMetadata::OrHash
        ).void
      end
      attr_writer :key_metadata

      # Status of the response, e.g., 'ok'
      sig { returns(T.nilable(String)) }
      attr_reader :status

      sig { params(status: String).void }
      attr_writer :status

      # List of URLs that were analyzed
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :urls_analyzed

      sig { params(urls_analyzed: T::Array[String]).void }
      attr_writer :urls_analyzed

      sig do
        params(
          data_extracted:
            T::Array[
              BrandDev::Models::BrandAIQueryResponse::DataExtracted::OrHash
            ],
          domain: String,
          key_metadata:
            BrandDev::Models::BrandAIQueryResponse::KeyMetadata::OrHash,
          status: String,
          urls_analyzed: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(
        # Array of extracted data points
        data_extracted: nil,
        # The domain that was analyzed
        domain: nil,
        # Metadata about the API key used for the request. Included in every response
        # whenever a valid API key is provided, even when the response status is not 200.
        key_metadata: nil,
        # Status of the response, e.g., 'ok'
        status: nil,
        # List of URLs that were analyzed
        urls_analyzed: nil
      )
      end

      sig do
        override.returns(
          {
            data_extracted:
              T::Array[BrandDev::Models::BrandAIQueryResponse::DataExtracted],
            domain: String,
            key_metadata: BrandDev::Models::BrandAIQueryResponse::KeyMetadata,
            status: String,
            urls_analyzed: T::Array[String]
          }
        )
      end
      def to_hash
      end

      class DataExtracted < BrandDev::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              BrandDev::Models::BrandAIQueryResponse::DataExtracted,
              BrandDev::Internal::AnyHash
            )
          end

        # Name of the extracted data point
        sig { returns(T.nilable(String)) }
        attr_reader :datapoint_name

        sig { params(datapoint_name: String).void }
        attr_writer :datapoint_name

        # Value of the extracted data point. Can be a primitive type, an array of
        # primitives, or an array of objects when datapoint_list_type is 'object'.
        sig do
          returns(
            T.nilable(
              BrandDev::Models::BrandAIQueryResponse::DataExtracted::DatapointValue::Variants
            )
          )
        end
        attr_reader :datapoint_value

        sig do
          params(
            datapoint_value:
              BrandDev::Models::BrandAIQueryResponse::DataExtracted::DatapointValue::Variants
          ).void
        end
        attr_writer :datapoint_value

        sig do
          params(
            datapoint_name: String,
            datapoint_value:
              BrandDev::Models::BrandAIQueryResponse::DataExtracted::DatapointValue::Variants
          ).returns(T.attached_class)
        end
        def self.new(
          # Name of the extracted data point
          datapoint_name: nil,
          # Value of the extracted data point. Can be a primitive type, an array of
          # primitives, or an array of objects when datapoint_list_type is 'object'.
          datapoint_value: nil
        )
        end

        sig do
          override.returns(
            {
              datapoint_name: String,
              datapoint_value:
                BrandDev::Models::BrandAIQueryResponse::DataExtracted::DatapointValue::Variants
            }
          )
        end
        def to_hash
        end

        # Value of the extracted data point. Can be a primitive type, an array of
        # primitives, or an array of objects when datapoint_list_type is 'object'.
        module DatapointValue
          extend BrandDev::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                String,
                Float,
                T::Boolean,
                T::Array[String],
                T::Array[Float],
                T::Array[T.anything]
              )
            end

          sig do
            override.returns(
              T::Array[
                BrandDev::Models::BrandAIQueryResponse::DataExtracted::DatapointValue::Variants
              ]
            )
          end
          def self.variants
          end

          StringArray =
            T.let(
              BrandDev::Internal::Type::ArrayOf[String],
              BrandDev::Internal::Type::Converter
            )

          FloatArray =
            T.let(
              BrandDev::Internal::Type::ArrayOf[Float],
              BrandDev::Internal::Type::Converter
            )

          UnionMember5Array =
            T.let(
              BrandDev::Internal::Type::ArrayOf[
                BrandDev::Internal::Type::Unknown
              ],
              BrandDev::Internal::Type::Converter
            )
        end
      end

      class KeyMetadata < BrandDev::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              BrandDev::Models::BrandAIQueryResponse::KeyMetadata,
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
