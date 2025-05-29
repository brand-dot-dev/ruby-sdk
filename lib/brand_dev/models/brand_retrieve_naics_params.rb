# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#retrieve_naics
    class BrandRetrieveNaicsParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      # @!attribute input
      #   Brand domain or title to retrieve NAICS code for. If a valid domain is provided
      #   in `input`, it will be used for classification, otherwise, we will search for
      #   the brand using the provided title.
      #
      #   @return [String]
      required :input, String

      # @!method initialize(input:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {BrandDev::Models::BrandRetrieveNaicsParams} for more details.
      #
      #   @param input [String] Brand domain or title to retrieve NAICS code for. If a valid domain is provided
      #
      #   @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
