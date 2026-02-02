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
      # @overload retrieve(domain:, force_language: nil, max_speed: nil, timeout_ms: nil, request_options: {})
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
      def retrieve(params)
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
      # {BrandDev::Models::BrandAIProductsParams} for more details.
      #
      # Beta feature: Extract product information from a brand's website. Brand.dev will
      # analyze the website and return a list of products with details such as name,
      # description, image, pricing, features, and more.
      #
      # @overload ai_products(domain:, max_products: nil, timeout_ms: nil, request_options: {})
      #
      # @param domain [String] The domain name to analyze
      #
      # @param max_products [Integer] Maximum number of products to extract.
      #
      # @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      # @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [BrandDev::Models::BrandAIProductsResponse]
      #
      # @see BrandDev::Models::BrandAIProductsParams
      def ai_products(params)
        parsed, options = BrandDev::BrandAIProductsParams.dump_request(params)
        @client.request(
          method: :post,
          path: "brand/ai/products",
          body: parsed,
          model: BrandDev::Models::BrandAIProductsResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {BrandDev::Models::BrandAIQueryParams} for more details.
      #
      # Use AI to extract specific data points from a brand's website. The AI will crawl
      # the website and extract the requested information based on the provided data
      # points.
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
      # {BrandDev::Models::BrandFontsParams} for more details.
      #
      # Extract font information from a brand's website including font families, usage
      # statistics, fallbacks, and element/word counts.
      #
      # @overload fonts(domain:, timeout_ms: nil, request_options: {})
      #
      # @param domain [String] Domain name to extract fonts from (e.g., 'example.com', 'google.com'). The domai
      #
      # @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      # @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [BrandDev::Models::BrandFontsResponse]
      #
      # @see BrandDev::Models::BrandFontsParams
      def fonts(params)
        parsed, options = BrandDev::BrandFontsParams.dump_request(params)
        @client.request(
          method: :get,
          path: "brand/fonts",
          query: parsed.transform_keys(timeout_ms: "timeoutMS"),
          model: BrandDev::Models::BrandFontsResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {BrandDev::Models::BrandIdentifyFromTransactionParams} for more details.
      #
      # Endpoint specially designed for platforms that want to identify transaction data
      # by the transaction title.
      #
      # @overload identify_from_transaction(transaction_info:, city: nil, country_gl: nil, force_language: nil, max_speed: nil, mcc: nil, phone: nil, timeout_ms: nil, request_options: {})
      #
      # @param transaction_info [String] Transaction information to identify the brand
      #
      # @param city [String] Optional city name to prioritize when searching for the brand.
      #
      # @param country_gl [Symbol, BrandDev::Models::BrandIdentifyFromTransactionParams::CountryGl] Optional country code (GL parameter) to specify the country. This affects the ge
      #
      # @param force_language [Symbol, BrandDev::Models::BrandIdentifyFromTransactionParams::ForceLanguage] Optional parameter to force the language of the retrieved brand data.
      #
      # @param max_speed [Boolean] Optional parameter to optimize the API call for maximum speed. When set to true,
      #
      # @param mcc [String] Optional Merchant Category Code (MCC) to help identify the business category/ind
      #
      # @param phone [Float] Optional phone number from the transaction to help verify brand match.
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
      # {BrandDev::Models::BrandPrefetchByEmailParams} for more details.
      #
      # Signal that you may fetch brand data for a particular domain soon to improve
      # latency. This endpoint accepts an email address, extracts the domain from it,
      # validates that it's not a disposable or free email provider, and queues the
      # domain for prefetching. This endpoint does not charge credits and is available
      # for paid customers to optimize future requests. [You must be on a paid plan to
      # use this endpoint]
      #
      # @overload prefetch_by_email(email:, timeout_ms: nil, request_options: {})
      #
      # @param email [String] Email address to prefetch brand data for. The domain will be extracted from the
      #
      # @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      # @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [BrandDev::Models::BrandPrefetchByEmailResponse]
      #
      # @see BrandDev::Models::BrandPrefetchByEmailParams
      def prefetch_by_email(params)
        parsed, options = BrandDev::BrandPrefetchByEmailParams.dump_request(params)
        @client.request(
          method: :post,
          path: "brand/prefetch-by-email",
          body: parsed,
          model: BrandDev::Models::BrandPrefetchByEmailResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {BrandDev::Models::BrandRetrieveByEmailParams} for more details.
      #
      # Retrieve brand information using an email address while detecting disposable and
      # free email addresses. This endpoint extracts the domain from the email address
      # and returns brand data for that domain. Disposable and free email addresses
      # (like gmail.com, yahoo.com) will throw a 422 error.
      #
      # @overload retrieve_by_email(email:, force_language: nil, max_speed: nil, timeout_ms: nil, request_options: {})
      #
      # @param email [String] Email address to retrieve brand data for (e.g., 'contact@example.com'). The doma
      #
      # @param force_language [Symbol, BrandDev::Models::BrandRetrieveByEmailParams::ForceLanguage] Optional parameter to force the language of the retrieved brand data.
      #
      # @param max_speed [Boolean] Optional parameter to optimize the API call for maximum speed. When set to true,
      #
      # @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      # @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [BrandDev::Models::BrandRetrieveByEmailResponse]
      #
      # @see BrandDev::Models::BrandRetrieveByEmailParams
      def retrieve_by_email(params)
        parsed, options = BrandDev::BrandRetrieveByEmailParams.dump_request(params)
        @client.request(
          method: :get,
          path: "brand/retrieve-by-email",
          query: parsed.transform_keys(max_speed: "maxSpeed", timeout_ms: "timeoutMS"),
          model: BrandDev::Models::BrandRetrieveByEmailResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {BrandDev::Models::BrandRetrieveByIsinParams} for more details.
      #
      # Retrieve brand information using an ISIN (International Securities
      # Identification Number). This endpoint looks up the company associated with the
      # ISIN and returns its brand data.
      #
      # @overload retrieve_by_isin(isin:, force_language: nil, max_speed: nil, timeout_ms: nil, request_options: {})
      #
      # @param isin [String] ISIN (International Securities Identification Number) to retrieve brand data for
      #
      # @param force_language [Symbol, BrandDev::Models::BrandRetrieveByIsinParams::ForceLanguage] Optional parameter to force the language of the retrieved brand data.
      #
      # @param max_speed [Boolean] Optional parameter to optimize the API call for maximum speed. When set to true,
      #
      # @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      # @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [BrandDev::Models::BrandRetrieveByIsinResponse]
      #
      # @see BrandDev::Models::BrandRetrieveByIsinParams
      def retrieve_by_isin(params)
        parsed, options = BrandDev::BrandRetrieveByIsinParams.dump_request(params)
        @client.request(
          method: :get,
          path: "brand/retrieve-by-isin",
          query: parsed.transform_keys(max_speed: "maxSpeed", timeout_ms: "timeoutMS"),
          model: BrandDev::Models::BrandRetrieveByIsinResponse,
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
      # @overload retrieve_naics(input:, max_results: nil, min_results: nil, timeout_ms: nil, request_options: {})
      #
      # @param input [String] Brand domain or title to retrieve NAICS code for. If a valid domain is provided
      #
      # @param max_results [Integer] Maximum number of NAICS codes to return. Must be between 1 and 10. Defaults to 5
      #
      # @param min_results [Integer] Minimum number of NAICS codes to return. Must be at least 1. Defaults to 1.
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
          query: parsed.transform_keys(
            max_results: "maxResults",
            min_results: "minResults",
            timeout_ms: "timeoutMS"
          ),
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
      # Capture a screenshot of a website. Supports both viewport (standard browser
      # view) and full-page screenshots. Can also screenshot specific page types (login,
      # pricing, etc.) by using heuristics to find the appropriate URL. Returns a URL to
      # the uploaded screenshot image hosted on our CDN.
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
      # Automatically extract comprehensive design system information from a brand's
      # website including colors, typography, spacing, shadows, and UI components.
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
