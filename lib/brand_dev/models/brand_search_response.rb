# frozen_string_literal: true

module BrandDev
  module Models
    class BrandSearchResponseItem < BrandDev::Internal::Type::BaseModel
      # @!attribute domain
      #   Domain name of the brand
      #
      #   @return [String, nil]
      optional :domain, String

      # @!attribute logo
      #   URL of the brand's logo
      #
      #   @return [String, nil]
      optional :logo, String

      # @!attribute title
      #   Title or name of the brand
      #
      #   @return [String, nil]
      optional :title, String

      # @!method initialize(domain: nil, logo: nil, title: nil)
      #   @param domain [String] Domain name of the brand
      #
      #   @param logo [String] URL of the brand's logo
      #
      #   @param title [String] Title or name of the brand
    end

    # @type [BrandDev::Internal::Type::Converter]
    BrandSearchResponse = BrandDev::Internal::Type::ArrayOf[-> { BrandDev::Models::BrandSearchResponseItem }]
  end
end
