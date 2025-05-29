# typed: strong

module BrandDev
  module Models
    class BrandRetrieveByTickerParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            BrandDev::BrandRetrieveByTickerParams,
            BrandDev::Internal::AnyHash
          )
        end

      # Stock ticker symbol to retrieve brand data for (e.g. AAPL, TSLA, etc.)
      sig { returns(String) }
      attr_accessor :ticker

      sig do
        params(
          ticker: String,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Stock ticker symbol to retrieve brand data for (e.g. AAPL, TSLA, etc.)
        ticker:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { ticker: String, request_options: BrandDev::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
