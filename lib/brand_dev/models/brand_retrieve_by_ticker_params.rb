# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#retrieve_by_ticker
    class BrandRetrieveByTickerParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      # @!attribute ticker
      #   Stock ticker symbol to retrieve brand data for (e.g. AAPL, TSLA, etc.)
      #
      #   @return [String]
      required :ticker, String

      # @!method initialize(ticker:, request_options: {})
      #   @param ticker [String] Stock ticker symbol to retrieve brand data for (e.g. AAPL, TSLA, etc.)
      #
      #   @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
