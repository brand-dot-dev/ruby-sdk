# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#retrieve_naics
    class BrandRetrieveNaicsResponse < BrandDev::Internal::Type::BaseModel
      # @!attribute codes
      #   Array of NAICS codes and titles.
      #
      #   @return [Array<BrandDev::Models::BrandRetrieveNaicsResponse::Code>, nil]
      optional :codes,
               -> { BrandDev::Internal::Type::ArrayOf[BrandDev::Models::BrandRetrieveNaicsResponse::Code] }

      # @!attribute domain
      #   Domain found for the brand
      #
      #   @return [String, nil]
      optional :domain, String

      # @!attribute status
      #   Status of the response, e.g., 'ok'
      #
      #   @return [String, nil]
      optional :status, String

      # @!attribute type
      #   Industry classification type, for naics api it will be `naics`
      #
      #   @return [String, nil]
      optional :type, String

      # @!method initialize(codes: nil, domain: nil, status: nil, type: nil)
      #   @param codes [Array<BrandDev::Models::BrandRetrieveNaicsResponse::Code>] Array of NAICS codes and titles.
      #
      #   @param domain [String] Domain found for the brand
      #
      #   @param status [String] Status of the response, e.g., 'ok'
      #
      #   @param type [String] Industry classification type, for naics api it will be `naics`

      class Code < BrandDev::Internal::Type::BaseModel
        # @!attribute code
        #   NAICS code
        #
        #   @return [String, nil]
        optional :code, String

        # @!attribute title
        #   NAICS title
        #
        #   @return [String, nil]
        optional :title, String

        # @!method initialize(code: nil, title: nil)
        #   @param code [String] NAICS code
        #
        #   @param title [String] NAICS title
      end
    end
  end
end
