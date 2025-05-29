# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#search
    class BrandSearchParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      # @!attribute query
      #   Query string to search brands
      #
      #   @return [String]
      required :query, String

      # @!method initialize(query:, request_options: {})
      #   @param query [String] Query string to search brands
      #
      #   @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
