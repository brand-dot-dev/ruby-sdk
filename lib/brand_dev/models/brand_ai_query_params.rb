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

      # @!attribute timeout_ms
      #   Optional timeout in milliseconds for the request. If the request takes longer
      #   than this value, it will be aborted with a 408 status code. Maximum allowed
      #   value is 300000ms (5 minutes).
      #
      #   @return [Integer, nil]
      optional :timeout_ms, Integer, api_name: :timeoutMS

      # @!method initialize(data_to_extract:, domain:, specific_pages: nil, timeout_ms: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {BrandDev::Models::BrandAIQueryParams} for more details.
      #
      #   @param data_to_extract [Array<BrandDev::Models::BrandAIQueryParams::DataToExtract>] Array of data points to extract from the website
      #
      #   @param domain [String] The domain name to analyze
      #
      #   @param specific_pages [BrandDev::Models::BrandAIQueryParams::SpecificPages] Optional object specifying which pages to analyze
      #
      #   @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
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

        # @!attribute datapoint_list_type
        #   Type of items in the list when datapoint_type is 'list'. Defaults to 'string'.
        #   Use 'object' to extract an array of objects matching a schema.
        #
        #   @return [Symbol, BrandDev::Models::BrandAIQueryParams::DataToExtract::DatapointListType, nil]
        optional :datapoint_list_type, enum: -> { BrandDev::BrandAIQueryParams::DataToExtract::DatapointListType }

        # @!attribute datapoint_object_schema
        #   Schema definition for objects when datapoint_list_type is 'object'. Provide a
        #   map of field names to their scalar types.
        #
        #   @return [Hash{Symbol=>Symbol, BrandDev::Models::BrandAIQueryParams::DataToExtract::DatapointObjectSchema}, nil]
        optional :datapoint_object_schema,
                 -> { BrandDev::Internal::Type::HashOf[enum: BrandDev::BrandAIQueryParams::DataToExtract::DatapointObjectSchema] }

        # @!method initialize(datapoint_description:, datapoint_example:, datapoint_name:, datapoint_type:, datapoint_list_type: nil, datapoint_object_schema: nil)
        #   Some parameter documentations has been truncated, see
        #   {BrandDev::Models::BrandAIQueryParams::DataToExtract} for more details.
        #
        #   @param datapoint_description [String] Description of what to extract
        #
        #   @param datapoint_example [String] Example of the expected value
        #
        #   @param datapoint_name [String] Name of the data point to extract
        #
        #   @param datapoint_type [Symbol, BrandDev::Models::BrandAIQueryParams::DataToExtract::DatapointType] Type of the data point
        #
        #   @param datapoint_list_type [Symbol, BrandDev::Models::BrandAIQueryParams::DataToExtract::DatapointListType] Type of items in the list when datapoint_type is 'list'. Defaults to 'string'. U
        #
        #   @param datapoint_object_schema [Hash{Symbol=>Symbol, BrandDev::Models::BrandAIQueryParams::DataToExtract::DatapointObjectSchema}] Schema definition for objects when datapoint_list_type is 'object'. Provide a ma

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

        # Type of items in the list when datapoint_type is 'list'. Defaults to 'string'.
        # Use 'object' to extract an array of objects matching a schema.
        #
        # @see BrandDev::Models::BrandAIQueryParams::DataToExtract#datapoint_list_type
        module DatapointListType
          extend BrandDev::Internal::Type::Enum

          STRING = :string
          TEXT = :text
          NUMBER = :number
          DATE = :date
          BOOLEAN = :boolean
          LIST = :list
          URL = :url
          OBJECT = :object

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        module DatapointObjectSchema
          extend BrandDev::Internal::Type::Enum

          STRING = :string
          NUMBER = :number
          DATE = :date
          BOOLEAN = :boolean

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

        # @!attribute pricing
        #   Whether to analyze the pricing page
        #
        #   @return [Boolean, nil]
        optional :pricing, BrandDev::Internal::Type::Boolean

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

        # @!method initialize(about_us: nil, blog: nil, careers: nil, contact_us: nil, faq: nil, home_page: nil, pricing: nil, privacy_policy: nil, terms_and_conditions: nil)
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
        #   @param pricing [Boolean] Whether to analyze the pricing page
        #
        #   @param privacy_policy [Boolean] Whether to analyze the privacy policy page
        #
        #   @param terms_and_conditions [Boolean] Whether to analyze the terms and conditions page
      end
    end
  end
end
