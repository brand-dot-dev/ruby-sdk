# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#prefetch
    class BrandPrefetchParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      # @!attribute domain
      #   Domain name to prefetch brand data for
      #
      #   @return [String]
      required :domain, String

      # @!method initialize(domain:, request_options: {})
      #   @param domain [String] Domain name to prefetch brand data for
      #
      #   @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
