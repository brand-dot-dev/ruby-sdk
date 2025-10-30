# frozen_string_literal: true

module BrandDev
  module Resources
    class Brand
      # Some parameter documentations has been truncated, see
      # {BrandDev::Models::BrandRetrieveParams} for more details.
      #
      # Retrieve logos, backdrops, colors, industry, description, and more from any
      # domain
      #
      # @overload retrieve(domain: nil, force_language: nil, max_speed: nil, timeout_ms: nil, request_options: {})
      #
      # @param domain [String] Domain name to retrieve brand data for (e.g., 'example.com', 'google.com'). Cann
      #
      # @param force_language [Symbol, BrandDev::Models::BrandRetrieveParams::ForceLanguage] Optional parameter to force the language of the retrieved brand data. Works with
      #
      # @param max_speed [Boolean] Optional parameter to optimize the API call for maximum speed. When set to true,
      #
      # @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      # @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [BrandDev::Models::BrandRetrieveResponse]
      #
      # @see BrandDev::Models::BrandRetrieveParams
      def retrieve(params = {})
        parsed, options = BrandDev::BrandRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: "brand/retrieve",
          query: parsed.transform_keys(max_speed: "maxSpeed", timeout_ms: "timeoutMS"),
          model: BrandDev::Models::BrandRetrieveResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {BrandDev::Models::BrandAIQueryParams} for more details.
      #
      # Beta feature: Use AI to extract specific data points from a brand's website. The
      # AI will crawl the website and extract the requested information based on the
      # provided data points.
      #
      # @overload ai_query(data_to_extract:, domain:, specific_pages: nil, timeout_ms: nil, request_options: {})
      #
      # @param data_to_extract [Array<BrandDev::Models::BrandAIQueryParams::DataToExtract>] Array of data points to extract from the website
      #
      # @param domain [String] The domain name to analyze
      #
      # @param specific_pages [BrandDev::Models::BrandAIQueryParams::SpecificPages] Optional object specifying which pages to analyze
      #
      # @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
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

      # Some parameter documentations has been truncated, see
      # {BrandDev::Models::BrandIdentifyFromTransactionParams} for more details.
      #
      # Endpoint specially designed for platforms that want to identify transaction data
      # by the transaction title.
      #
      # @overload identify_from_transaction(transaction_info:, force_language: nil, max_speed: nil, timeout_ms: nil, request_options: {})
      #
      # @param transaction_info [String] Transaction information to identify the brand
      #
      # @param force_language [Symbol, BrandDev::Models::BrandIdentifyFromTransactionParams::ForceLanguage] Optional parameter to force the language of the retrieved brand data.
      #
      # @param max_speed [Boolean] Optional parameter to optimize the API call for maximum speed. When set to true,
      #
      # @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
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
          query: parsed.transform_keys(max_speed: "maxSpeed", timeout_ms: "timeoutMS"),
          model: BrandDev::Models::BrandIdentifyFromTransactionResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {BrandDev::Models::BrandPrefetchParams} for more details.
      #
      # Signal that you may fetch brand data for a particular domain soon to improve
      # latency. This endpoint does not charge credits and is available for paid
      # customers to optimize future requests. [You must be on a paid plan to use this
      # endpoint]
      #
      # @overload prefetch(domain:, timeout_ms: nil, request_options: {})
      #
      # @param domain [String] Domain name to prefetch brand data for
      #
      # @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      # @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [BrandDev::Models::BrandPrefetchResponse]
      #
      # @see BrandDev::Models::BrandPrefetchParams
      def prefetch(params)
        parsed, options = BrandDev::BrandPrefetchParams.dump_request(params)
        @client.request(
          method: :post,
          path: "brand/prefetch",
          body: parsed,
          model: BrandDev::Models::BrandPrefetchResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {BrandDev::Models::BrandRetrieveByNameParams} for more details.
      #
      # Retrieve brand information using a company name. This endpoint searches for the
      # company by name and returns its brand data.
      #
      # @overload retrieve_by_name(name:, force_language: nil, max_speed: nil, timeout_ms: nil, request_options: {})
      #
      # @param name [String] Company name to retrieve brand data for (e.g., 'Apple Inc', 'Microsoft Corporati
      #
      # @param force_language [Symbol, BrandDev::Models::BrandRetrieveByNameParams::ForceLanguage] Optional parameter to force the language of the retrieved brand data.
      #
      # @param max_speed [Boolean] Optional parameter to optimize the API call for maximum speed. When set to true,
      #
      # @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      # @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [BrandDev::Models::BrandRetrieveByNameResponse]
      #
      # @see BrandDev::Models::BrandRetrieveByNameParams
      def retrieve_by_name(params)
        parsed, options = BrandDev::BrandRetrieveByNameParams.dump_request(params)
        @client.request(
          method: :get,
          path: "brand/retrieve-by-name",
          query: parsed.transform_keys(max_speed: "maxSpeed", timeout_ms: "timeoutMS"),
          model: BrandDev::Models::BrandRetrieveByNameResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {BrandDev::Models::BrandRetrieveByTickerParams} for more details.
      #
      # Retrieve brand information using a stock ticker symbol. This endpoint looks up
      # the company associated with the ticker and returns its brand data.
      #
      # @overload retrieve_by_ticker(ticker:, force_language: nil, max_speed: nil, ticker_exchange: nil, timeout_ms: nil, request_options: {})
      #
      # @param ticker [String] Stock ticker symbol to retrieve brand data for (e.g., 'AAPL', 'GOOGL', 'BRK.A').
      #
      # @param force_language [Symbol, BrandDev::Models::BrandRetrieveByTickerParams::ForceLanguage] Optional parameter to force the language of the retrieved brand data.
      #
      # @param max_speed [Boolean] Optional parameter to optimize the API call for maximum speed. When set to true,
      #
      # @param ticker_exchange [Symbol, BrandDev::Models::BrandRetrieveByTickerParams::TickerExchange] Optional stock exchange for the ticker. Defaults to NASDAQ if not specified.
      #
      # @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
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
          query: parsed.transform_keys(max_speed: "maxSpeed", timeout_ms: "timeoutMS"),
          model: BrandDev::Models::BrandRetrieveByTickerResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {BrandDev::Models::BrandRetrieveNaicsParams} for more details.
      #
      # Endpoint to classify any brand into a 2022 NAICS code.
      #
      # @overload retrieve_naics(input:, timeout_ms: nil, request_options: {})
      #
      # @param input [String] Brand domain or title to retrieve NAICS code for. If a valid domain is provided
      #
      # @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
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
          query: parsed.transform_keys(timeout_ms: "timeoutMS"),
          model: BrandDev::Models::BrandRetrieveNaicsResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {BrandDev::Models::BrandRetrieveSimplifiedParams} for more details.
      #
      # Returns a simplified version of brand data containing only essential
      # information: domain, title, colors, logos, and backdrops. This endpoint is
      # optimized for faster responses and reduced data transfer.
      #
      # @overload retrieve_simplified(domain:, timeout_ms: nil, request_options: {})
      #
      # @param domain [String] Domain name to retrieve simplified brand data for
      #
      # @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      # @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [BrandDev::Models::BrandRetrieveSimplifiedResponse]
      #
      # @see BrandDev::Models::BrandRetrieveSimplifiedParams
      def retrieve_simplified(params)
        parsed, options = BrandDev::BrandRetrieveSimplifiedParams.dump_request(params)
        @client.request(
          method: :get,
          path: "brand/retrieve-simplified",
          query: parsed.transform_keys(timeout_ms: "timeoutMS"),
          model: BrandDev::Models::BrandRetrieveSimplifiedResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {BrandDev::Models::BrandScreenshotParams} for more details.
      #
      # Beta feature: Capture a screenshot of a website. Supports both viewport
      # (standard browser view) and full-page screenshots. Can also screenshot specific
      # page types (login, pricing, etc.) by using heuristics to find the appropriate
      # URL. Returns a URL to the uploaded screenshot image hosted on our CDN.
      #
      # @overload screenshot(domain:, full_screenshot: nil, page: nil, prioritize: nil, request_options: {})
      #
      # @param domain [String] Domain name to take screenshot of (e.g., 'example.com', 'google.com'). The domai
      #
      # @param full_screenshot [Symbol, BrandDev::Models::BrandScreenshotParams::FullScreenshot] Optional parameter to determine screenshot type. If 'true', takes a full page sc
      #
      # @param page [Symbol, BrandDev::Models::BrandScreenshotParams::Page] Optional parameter to specify which page type to screenshot. If provided, the sy
      #
      # @param prioritize [Symbol, BrandDev::Models::BrandScreenshotParams::Prioritize] Optional parameter to prioritize screenshot capture. If 'speed', optimizes for f
      #
      # @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [BrandDev::Models::BrandScreenshotResponse]
      #
      # @see BrandDev::Models::BrandScreenshotParams
      def screenshot(params)
        parsed, options = BrandDev::BrandScreenshotParams.dump_request(params)
        @client.request(
          method: :get,
          path: "brand/screenshot",
          query: parsed.transform_keys(full_screenshot: "fullScreenshot"),
          model: BrandDev::Models::BrandScreenshotResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {BrandDev::Models::BrandStyleguideParams} for more details.
      #
      # Beta feature: Automatically extract comprehensive design system information from
      # a brand's website including colors, typography, spacing, shadows, and UI
      # components.
      #
      # @overload styleguide(domain:, prioritize: nil, timeout_ms: nil, request_options: {})
      #
      # @param domain [String] Domain name to extract styleguide from (e.g., 'example.com', 'google.com'). The
      #
      # @param prioritize [Symbol, BrandDev::Models::BrandStyleguideParams::Prioritize] Optional parameter to prioritize screenshot capture for styleguide extraction. I
      #
      # @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      # @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [BrandDev::Models::BrandStyleguideResponse]
      #
      # @see BrandDev::Models::BrandStyleguideParams
      def styleguide(params)
        parsed, options = BrandDev::BrandStyleguideParams.dump_request(params)
        @client.request(
          method: :get,
          path: "brand/styleguide",
          query: parsed.transform_keys(timeout_ms: "timeoutMS"),
          model: BrandDev::Models::BrandStyleguideResponse,
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
