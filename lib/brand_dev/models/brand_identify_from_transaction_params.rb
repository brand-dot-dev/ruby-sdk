# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#identify_from_transaction
    class BrandIdentifyFromTransactionParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      # @!attribute transaction_info
      #   Transaction information to identify the brand
      #
      #   @return [String]
      required :transaction_info, String

      # @!method initialize(transaction_info:, request_options: {})
      #   @param transaction_info [String] Transaction information to identify the brand
      #
      #   @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
