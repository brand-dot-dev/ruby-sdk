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
      #   Optional object specifying which pages to analyze
      #
      #   @return [BrandDev::Models::BrandAIQueryParams::SpecificPages, nil]
      optional :specific_pages, -> { BrandDev::BrandAIQueryParams::SpecificPages }

      # @!method initialize(data_to_extract:, domain:, specific_pages: nil, request_options: {})
      #   @param data_to_extract [Array<BrandDev::Models::BrandAIQueryParams::DataToExtract>] Array of data points to extract from the website
      #
      #   @param domain [String] The domain name to analyze
      #
      #   @param specific_pages [BrandDev::Models::BrandAIQueryParams::SpecificPages] Optional object specifying which pages to analyze
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

      class SpecificPages < BrandDev::Internal::Type::BaseModel
        # @!attribute about_us
        #   Whether to analyze the about us page
        #
        #   @return [Boolean, nil]
        optional :about_us, BrandDev::Internal::Type::Boolean

        # @!attribute blog
        #   Whether to analyze the blog
        #
        #   @return [Boolean, nil]
        optional :blog, BrandDev::Internal::Type::Boolean

        # @!attribute careers
        #   Whether to analyze the careers page
        #
        #   @return [Boolean, nil]
        optional :careers, BrandDev::Internal::Type::Boolean

        # @!attribute contact_us
        #   Whether to analyze the contact us page
        #
        #   @return [Boolean, nil]
        optional :contact_us, BrandDev::Internal::Type::Boolean

        # @!attribute faq
        #   Whether to analyze the FAQ page
        #
        #   @return [Boolean, nil]
        optional :faq, BrandDev::Internal::Type::Boolean

        # @!attribute home_page
        #   Whether to analyze the home page
        #
        #   @return [Boolean, nil]
        optional :home_page, BrandDev::Internal::Type::Boolean

        # @!attribute privacy_policy
        #   Whether to analyze the privacy policy page
        #
        #   @return [Boolean, nil]
        optional :privacy_policy, BrandDev::Internal::Type::Boolean

        # @!attribute terms_and_conditions
        #   Whether to analyze the terms and conditions page
        #
        #   @return [Boolean, nil]
        optional :terms_and_conditions, BrandDev::Internal::Type::Boolean

        # @!method initialize(about_us: nil, blog: nil, careers: nil, contact_us: nil, faq: nil, home_page: nil, privacy_policy: nil, terms_and_conditions: nil)
        #   Optional object specifying which pages to analyze
        #
        #   @param about_us [Boolean] Whether to analyze the about us page
        #
        #   @param blog [Boolean] Whether to analyze the blog
        #
        #   @param careers [Boolean] Whether to analyze the careers page
        #
        #   @param contact_us [Boolean] Whether to analyze the contact us page
        #
        #   @param faq [Boolean] Whether to analyze the FAQ page
        #
        #   @param home_page [Boolean] Whether to analyze the home page
        #
        #   @param privacy_policy [Boolean] Whether to analyze the privacy policy page
        #
        #   @param terms_and_conditions [Boolean] Whether to analyze the terms and conditions page
      end
    end
  end
end
