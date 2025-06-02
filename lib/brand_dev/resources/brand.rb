# frozen_string_literal: true

module BrandDev
  module Resources
    class Brand
      # Retrieve brand data by domain
      #
      # @overload retrieve(domain:, force_language: nil, request_options: {})
      #
      # @param domain [String] Domain name to retrieve brand data for
      #
      # @param force_language [Symbol, BrandDev::Models::BrandRetrieveParams::ForceLanguage] Optional parameter to force the language of the retrieved brand data
      #
      # @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [BrandDev::Models::BrandRetrieveResponse]
      #
      # @see BrandDev::Models::BrandRetrieveParams
      def retrieve(params)
        parsed, options = BrandDev::BrandRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: "brand/retrieve",
          query: parsed,
          model: BrandDev::Models::BrandRetrieveResponse,
          options: options
        )
      end

      # Beta feature: Use AI to extract specific data points from a brand's website. The
      # AI will crawl the website and extract the requested information based on the
      # provided data points.
      #
      # @overload ai_query(data_to_extract:, domain:, specific_pages: nil, request_options: {})
      #
      # @param data_to_extract [Array<BrandDev::Models::BrandAIQueryParams::DataToExtract>] Array of data points to extract from the website
      #
      # @param domain [String] The domain name to analyze
      #
      # @param specific_pages [Array<String>] Optional array of specific pages to analyze
      #
      # @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [BrandDev::Models::BrandAIQueryResponse]
      #
      # @see BrandDev::Models::BrandAIQueryParams
      def ai_query(params)
        parsed, options = BrandDev::BrandAIQueryParams.dump_request(params)
        @client.request(
          method: :post,
          path: "brand/ai/query",
          body: parsed,
          model: BrandDev::Models::BrandAIQueryResponse,
          options: options
        )
      end

      # Endpoint specially designed for platforms that want to identify transaction data
      # by the transaction title.
      #
      # @overload identify_from_transaction(transaction_info:, request_options: {})
      #
      # @param transaction_info [String] Transaction information to identify the brand
      #
      # @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [BrandDev::Models::BrandIdentifyFromTransactionResponse]
      #
      # @see BrandDev::Models::BrandIdentifyFromTransactionParams
      def identify_from_transaction(params)
        parsed, options = BrandDev::BrandIdentifyFromTransactionParams.dump_request(params)
        @client.request(
          method: :get,
          path: "brand/transaction_identifier",
          query: parsed,
          model: BrandDev::Models::BrandIdentifyFromTransactionResponse,
          options: options
        )
      end

      # Retrieve brand data by stock ticker (e.g. AAPL, TSLA, etc.)
      #
      # @overload retrieve_by_ticker(ticker:, request_options: {})
      #
      # @param ticker [String] Stock ticker symbol to retrieve brand data for (e.g. AAPL, TSLA, etc.)
      #
      # @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [BrandDev::Models::BrandRetrieveByTickerResponse]
      #
      # @see BrandDev::Models::BrandRetrieveByTickerParams
      def retrieve_by_ticker(params)
        parsed, options = BrandDev::BrandRetrieveByTickerParams.dump_request(params)
        @client.request(
          method: :get,
          path: "brand/retrieve-by-ticker",
          query: parsed,
          model: BrandDev::Models::BrandRetrieveByTickerResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {BrandDev::Models::BrandRetrieveNaicsParams} for more details.
      #
      # Endpoint to classify any brand into a 2022 NAICS code.
      #
      # @overload retrieve_naics(input:, request_options: {})
      #
      # @param input [String] Brand domain or title to retrieve NAICS code for. If a valid domain is provided
      #
      # @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [BrandDev::Models::BrandRetrieveNaicsResponse]
      #
      # @see BrandDev::Models::BrandRetrieveNaicsParams
      def retrieve_naics(params)
        parsed, options = BrandDev::BrandRetrieveNaicsParams.dump_request(params)
        @client.request(
          method: :get,
          path: "brand/naics",
          query: parsed,
          model: BrandDev::Models::BrandRetrieveNaicsResponse,
          options: options
        )
      end

      # Search brands by query
      #
      # @overload search(query:, request_options: {})
      #
      # @param query [String] Query string to search brands
      #
      # @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<BrandDev::Models::BrandSearchResponseItem>]
      #
      # @see BrandDev::Models::BrandSearchParams
      def search(params)
        parsed, options = BrandDev::BrandSearchParams.dump_request(params)
        @client.request(
          method: :get,
          path: "brand/search",
          query: parsed,
          model: BrandDev::Internal::Type::ArrayOf[BrandDev::Models::BrandSearchResponseItem],
          options: options
        )
      end

      # @api private
      #
      # @param client [BrandDev::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
