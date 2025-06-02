# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#ai_query
    class BrandAIQueryResponse < BrandDev::Internal::Type::BaseModel
      # @!attribute data_extracted
      #   Array of extracted data points
      #
      #   @return [Array<BrandDev::Models::BrandAIQueryResponse::DataExtracted>, nil]
      optional :data_extracted,
               -> { BrandDev::Internal::Type::ArrayOf[BrandDev::Models::BrandAIQueryResponse::DataExtracted] }

      # @!attribute domain
      #   The domain that was analyzed
      #
      #   @return [String, nil]
      optional :domain, String

      # @!attribute urls_analyzed
      #   List of URLs that were analyzed
      #
      #   @return [Array<String>, nil]
      optional :urls_analyzed, BrandDev::Internal::Type::ArrayOf[String]

      # @!method initialize(data_extracted: nil, domain: nil, urls_analyzed: nil)
      #   @param data_extracted [Array<BrandDev::Models::BrandAIQueryResponse::DataExtracted>] Array of extracted data points
      #
      #   @param domain [String] The domain that was analyzed
      #
      #   @param urls_analyzed [Array<String>] List of URLs that were analyzed

      class DataExtracted < BrandDev::Internal::Type::BaseModel
        # @!attribute datapoint_name
        #   Name of the extracted data point
        #
        #   @return [String, nil]
        optional :datapoint_name, String

        # @!attribute datapoint_value
        #   Value of the extracted data point
        #
        #   @return [String, Float, Boolean, Array<String>, Array<Float>, nil]
        optional :datapoint_value,
                 union: -> { BrandDev::Models::BrandAIQueryResponse::DataExtracted::DatapointValue }

        # @!method initialize(datapoint_name: nil, datapoint_value: nil)
        #   @param datapoint_name [String] Name of the extracted data point
        #
        #   @param datapoint_value [String, Float, Boolean, Array<String>, Array<Float>] Value of the extracted data point

        # Value of the extracted data point
        #
        # @see BrandDev::Models::BrandAIQueryResponse::DataExtracted#datapoint_value
        module DatapointValue
          extend BrandDev::Internal::Type::Union

          variant String

          variant Float

          variant BrandDev::Internal::Type::Boolean

          variant -> { BrandDev::Models::BrandAIQueryResponse::DataExtracted::DatapointValue::StringArray }

          variant -> { BrandDev::Models::BrandAIQueryResponse::DataExtracted::DatapointValue::FloatArray }

          # @!method self.variants
          #   @return [Array(String, Float, Boolean, Array<String>, Array<Float>)]

          # @type [BrandDev::Internal::Type::Converter]
          StringArray = BrandDev::Internal::Type::ArrayOf[String]

          # @type [BrandDev::Internal::Type::Converter]
          FloatArray = BrandDev::Internal::Type::ArrayOf[Float]
        end
      end
    end
  end
end
