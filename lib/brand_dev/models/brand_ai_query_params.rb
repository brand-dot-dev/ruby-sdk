# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#ai_query
    class BrandAIQueryParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      # @!attribute data_to_extract
      #   Array of data points to extract from the website
      #
      #   @return [Array<BrandDev::Models::BrandAIQueryParams::DataToExtract>]
      required :data_to_extract,
               -> { BrandDev::Internal::Type::ArrayOf[BrandDev::BrandAIQueryParams::DataToExtract] }

      # @!attribute domain
      #   The domain name to analyze
      #
      #   @return [String]
      required :domain, String

      # @!attribute specific_pages
      #   Optional array of specific pages to analyze
      #
      #   @return [Array<String>, nil]
      optional :specific_pages, BrandDev::Internal::Type::ArrayOf[String]

      # @!method initialize(data_to_extract:, domain:, specific_pages: nil, request_options: {})
      #   @param data_to_extract [Array<BrandDev::Models::BrandAIQueryParams::DataToExtract>] Array of data points to extract from the website
      #
      #   @param domain [String] The domain name to analyze
      #
      #   @param specific_pages [Array<String>] Optional array of specific pages to analyze
      #
      #   @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}]

      class DataToExtract < BrandDev::Internal::Type::BaseModel
        # @!attribute datapoint_description
        #   Description of what to extract
        #
        #   @return [String]
        required :datapoint_description, String

        # @!attribute datapoint_example
        #   Example of the expected value
        #
        #   @return [String]
        required :datapoint_example, String

        # @!attribute datapoint_name
        #   Name of the data point to extract
        #
        #   @return [String]
        required :datapoint_name, String

        # @!attribute datapoint_type
        #   Type of the data point
        #
        #   @return [Symbol, BrandDev::Models::BrandAIQueryParams::DataToExtract::DatapointType]
        required :datapoint_type, enum: -> { BrandDev::BrandAIQueryParams::DataToExtract::DatapointType }

        # @!method initialize(datapoint_description:, datapoint_example:, datapoint_name:, datapoint_type:)
        #   @param datapoint_description [String] Description of what to extract
        #
        #   @param datapoint_example [String] Example of the expected value
        #
        #   @param datapoint_name [String] Name of the data point to extract
        #
        #   @param datapoint_type [Symbol, BrandDev::Models::BrandAIQueryParams::DataToExtract::DatapointType] Type of the data point

        # Type of the data point
        #
        # @see BrandDev::Models::BrandAIQueryParams::DataToExtract#datapoint_type
        module DatapointType
          extend BrandDev::Internal::Type::Enum

          TEXT = :text
          NUMBER = :number
          DATE = :date
          BOOLEAN = :boolean
          LIST = :list
          URL = :url

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
