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

      # @!attribute key_metadata
      #   Metadata about the API key used for the request. Included in every response
      #   whenever a valid API key is provided, even when the response status is not 200.
      #
      #   @return [BrandDev::Models::BrandAIQueryResponse::KeyMetadata, nil]
      optional :key_metadata, -> { BrandDev::Models::BrandAIQueryResponse::KeyMetadata }

      # @!attribute status
      #   Status of the response, e.g., 'ok'
      #
      #   @return [String, nil]
      optional :status, String

      # @!attribute urls_analyzed
      #   List of URLs that were analyzed
      #
      #   @return [Array<String>, nil]
      optional :urls_analyzed, BrandDev::Internal::Type::ArrayOf[String]

      # @!method initialize(data_extracted: nil, domain: nil, key_metadata: nil, status: nil, urls_analyzed: nil)
      #   Some parameter documentations has been truncated, see
      #   {BrandDev::Models::BrandAIQueryResponse} for more details.
      #
      #   @param data_extracted [Array<BrandDev::Models::BrandAIQueryResponse::DataExtracted>] Array of extracted data points
      #
      #   @param domain [String] The domain that was analyzed
      #
      #   @param key_metadata [BrandDev::Models::BrandAIQueryResponse::KeyMetadata] Metadata about the API key used for the request. Included in every response when
      #
      #   @param status [String] Status of the response, e.g., 'ok'
      #
      #   @param urls_analyzed [Array<String>] List of URLs that were analyzed

      class DataExtracted < BrandDev::Internal::Type::BaseModel
        # @!attribute datapoint_name
        #   Name of the extracted data point
        #
        #   @return [String, nil]
        optional :datapoint_name, String

        # @!attribute datapoint_value
        #   Value of the extracted data point. Can be a primitive type, an array of
        #   primitives, or an array of objects when datapoint_list_type is 'object'.
        #
        #   @return [String, Float, Boolean, Array<String>, Array<Float>, Array<Object>, nil]
        optional :datapoint_value,
                 union: -> { BrandDev::Models::BrandAIQueryResponse::DataExtracted::DatapointValue }

        # @!method initialize(datapoint_name: nil, datapoint_value: nil)
        #   Some parameter documentations has been truncated, see
        #   {BrandDev::Models::BrandAIQueryResponse::DataExtracted} for more details.
        #
        #   @param datapoint_name [String] Name of the extracted data point
        #
        #   @param datapoint_value [String, Float, Boolean, Array<String>, Array<Float>, Array<Object>] Value of the extracted data point. Can be a primitive type, an array of primitiv

        # Value of the extracted data point. Can be a primitive type, an array of
        # primitives, or an array of objects when datapoint_list_type is 'object'.
        #
        # @see BrandDev::Models::BrandAIQueryResponse::DataExtracted#datapoint_value
        module DatapointValue
          extend BrandDev::Internal::Type::Union

          variant String

          variant Float

          variant BrandDev::Internal::Type::Boolean

          variant -> { BrandDev::Models::BrandAIQueryResponse::DataExtracted::DatapointValue::StringArray }

          variant -> { BrandDev::Models::BrandAIQueryResponse::DataExtracted::DatapointValue::FloatArray }

          variant -> { BrandDev::Models::BrandAIQueryResponse::DataExtracted::DatapointValue::UnionMember5Array }

          # @!method self.variants
          #   @return [Array(String, Float, Boolean, Array<String>, Array<Float>, Array<Object>)]

          # @type [BrandDev::Internal::Type::Converter]
          StringArray = BrandDev::Internal::Type::ArrayOf[String]

          # @type [BrandDev::Internal::Type::Converter]
          FloatArray = BrandDev::Internal::Type::ArrayOf[Float]

          # @type [BrandDev::Internal::Type::Converter]
          UnionMember5Array = BrandDev::Internal::Type::ArrayOf[BrandDev::Internal::Type::Unknown]
        end
      end

      # @see BrandDev::Models::BrandAIQueryResponse#key_metadata
      class KeyMetadata < BrandDev::Internal::Type::BaseModel
        # @!attribute credits_consumed
        #   The number of credits consumed by this request.
        #
        #   @return [Integer]
        required :credits_consumed, Integer

        # @!attribute credits_remaining
        #   The number of credits remaining for your organization after this request.
        #
        #   @return [Integer]
        required :credits_remaining, Integer

        # @!method initialize(credits_consumed:, credits_remaining:)
        #   Metadata about the API key used for the request. Included in every response
        #   whenever a valid API key is provided, even when the response status is not 200.
        #
        #   @param credits_consumed [Integer] The number of credits consumed by this request.
        #
        #   @param credits_remaining [Integer] The number of credits remaining for your organization after this request.
      end
    end
  end
end
