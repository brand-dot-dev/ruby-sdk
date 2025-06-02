# typed: strong

module BrandDev
  module Models
    class BrandAIQueryParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(BrandDev::BrandAIQueryParams, BrandDev::Internal::AnyHash)
        end

      # Array of data points to extract from the website
      sig { returns(T::Array[BrandDev::BrandAIQueryParams::DataToExtract]) }
      attr_accessor :data_to_extract

      # The domain name to analyze
      sig { returns(String) }
      attr_accessor :domain

      # Optional array of specific pages to analyze
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :specific_pages

      sig { params(specific_pages: T::Array[String]).void }
      attr_writer :specific_pages

      sig do
        params(
          data_to_extract:
            T::Array[BrandDev::BrandAIQueryParams::DataToExtract::OrHash],
          domain: String,
          specific_pages: T::Array[String],
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Array of data points to extract from the website
        data_to_extract:,
        # The domain name to analyze
        domain:,
        # Optional array of specific pages to analyze
        specific_pages: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            data_to_extract:
              T::Array[BrandDev::BrandAIQueryParams::DataToExtract],
            domain: String,
            specific_pages: T::Array[String],
            request_options: BrandDev::RequestOptions
          }
        )
      end
      def to_hash
      end

      class DataToExtract < BrandDev::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              BrandDev::BrandAIQueryParams::DataToExtract,
              BrandDev::Internal::AnyHash
            )
          end

        # Description of what to extract
        sig { returns(String) }
        attr_accessor :datapoint_description

        # Example of the expected value
        sig { returns(String) }
        attr_accessor :datapoint_example

        # Name of the data point to extract
        sig { returns(String) }
        attr_accessor :datapoint_name

        # Type of the data point
        sig do
          returns(
            BrandDev::BrandAIQueryParams::DataToExtract::DatapointType::OrSymbol
          )
        end
        attr_accessor :datapoint_type

        sig do
          params(
            datapoint_description: String,
            datapoint_example: String,
            datapoint_name: String,
            datapoint_type:
              BrandDev::BrandAIQueryParams::DataToExtract::DatapointType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Description of what to extract
          datapoint_description:,
          # Example of the expected value
          datapoint_example:,
          # Name of the data point to extract
          datapoint_name:,
          # Type of the data point
          datapoint_type:
        )
        end

        sig do
          override.returns(
            {
              datapoint_description: String,
              datapoint_example: String,
              datapoint_name: String,
              datapoint_type:
                BrandDev::BrandAIQueryParams::DataToExtract::DatapointType::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Type of the data point
        module DatapointType
          extend BrandDev::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                BrandDev::BrandAIQueryParams::DataToExtract::DatapointType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TEXT =
            T.let(
              :text,
              BrandDev::BrandAIQueryParams::DataToExtract::DatapointType::TaggedSymbol
            )
          NUMBER =
            T.let(
              :number,
              BrandDev::BrandAIQueryParams::DataToExtract::DatapointType::TaggedSymbol
            )
          DATE =
            T.let(
              :date,
              BrandDev::BrandAIQueryParams::DataToExtract::DatapointType::TaggedSymbol
            )
          BOOLEAN =
            T.let(
              :boolean,
              BrandDev::BrandAIQueryParams::DataToExtract::DatapointType::TaggedSymbol
            )
          LIST =
            T.let(
              :list,
              BrandDev::BrandAIQueryParams::DataToExtract::DatapointType::TaggedSymbol
            )
          URL =
            T.let(
              :url,
              BrandDev::BrandAIQueryParams::DataToExtract::DatapointType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                BrandDev::BrandAIQueryParams::DataToExtract::DatapointType::TaggedSymbol
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
