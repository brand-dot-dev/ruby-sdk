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
      # @overload retrieve(domain: nil, force_language: nil, max_age_ms: nil, max_speed: nil, name: nil, tags: nil, ticker: nil, ticker_exchange: nil, timeout_ms: nil, request_options: {})
      #
      # @param domain [String] Domain name to retrieve brand data for (e.g., 'example.com', 'google.com'). Cann
      #
      # @param force_language [Symbol, BrandDev::Models::BrandRetrieveParams::ForceLanguage, nil] Language to force for the retrieved brand data.
      #
      # @param max_age_ms [Integer, nil] Maximum age in milliseconds for cached brand data before the API performs a hard
      #
      # @param max_speed [Boolean, Symbol, BrandDev::Models::BrandRetrieveParams::MaxSpeed] Optional parameter to optimize the API call for maximum speed. When set to true,
      #
      # @param name [String] Company name to retrieve brand data for (e.g., 'Apple Inc'). Cannot be used with
      #
      # @param tags [Array<String>] Optional comma-separated caller-defined tags for tracking this request. Tags are
      #
      # @param ticker [String] Stock ticker symbol to retrieve brand data for (e.g., 'AAPL'). Cannot be used wi
      #
      # @param ticker_exchange [Symbol, BrandDev::Models::BrandRetrieveParams::TickerExchange] Stock exchange code.
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
        query = BrandDev::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "brand/retrieve",
          query: query.transform_keys(max_age_ms: "maxAgeMs", max_speed: "maxSpeed", timeout_ms: "timeoutMS"),
          model: BrandDev::Models::BrandRetrieveResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {BrandDev::Models::BrandAIProductParams} for more details.
      #
      # Given a single URL, determines if it is a product page and extracts the product
      # information.
      #
      # @overload ai_product(url:, max_age_ms: nil, tags: nil, timeout_ms: nil, request_options: {})
      #
      # @param url [String] The product page URL to extract product data from.
      #
      # @param max_age_ms [Integer] Return a cached result if a prior scrape for the same parameters exists and is y
      #
      # @param tags [Array<String>] Optional tags for tracking usage. Up to 20 tags, each 1 to 50 characters.
      #
      # @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      # @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [BrandDev::Models::BrandAIProductResponse]
      #
      # @see BrandDev::Models::BrandAIProductParams
      def ai_product(params)
        parsed, options = BrandDev::BrandAIProductParams.dump_request(params)
        @client.request(
          method: :post,
          path: "brand/ai/product",
          body: parsed,
          model: BrandDev::Models::BrandAIProductResponse,
          options: options
        )
      end

      # Extract product information from a brand's website. We will analyze the website
      # and return a list of products with details such as name, description, image,
      # pricing, features, and more.
      #
      # @overload ai_products(body:, request_options: {})
      #
      # @param body [BrandDev::Models::BrandAIProductsParams::Body::ByDomain, BrandDev::Models::BrandAIProductsParams::Body::ByDirectURL]
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
          body: parsed[:body],
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
      # @overload ai_query(data_to_extract:, domain:, specific_pages: nil, tags: nil, timeout_ms: nil, request_options: {})
      #
      # @param data_to_extract [Array<BrandDev::Models::BrandAIQueryParams::DataToExtract>] Array of data points to extract from the website
      #
      # @param domain [String] The domain name to analyze
      #
      # @param specific_pages [BrandDev::Models::BrandAIQueryParams::SpecificPages] Optional object specifying which pages to analyze
      #
      # @param tags [Array<String>] Optional tags for tracking usage. Up to 20 tags, each 1 to 50 characters.
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
      # @overload identify_from_transaction(transaction_info:, city: nil, country_gl: nil, force_language: nil, high_confidence_only: nil, max_speed: nil, mcc: nil, phone: nil, tags: nil, timeout_ms: nil, request_options: {})
      #
      # @param transaction_info [String] Transaction information to identify the brand
      #
      # @param city [String] Optional city name to prioritize when searching for the brand.
      #
      # @param country_gl [Symbol, BrandDev::Models::BrandIdentifyFromTransactionParams::CountryGl] Two-letter ISO 3166-1 alpha-2 country code (GL parameter) used to localize searc
      #
      # @param force_language [Symbol, BrandDev::Models::BrandIdentifyFromTransactionParams::ForceLanguage, nil] Language to force for the retrieved brand data.
      #
      # @param high_confidence_only [Boolean, Symbol, BrandDev::Models::BrandIdentifyFromTransactionParams::HighConfidenceOnly] When set to true, the API will perform an additional verification steps to ensur
      #
      # @param max_speed [Boolean, Symbol, BrandDev::Models::BrandIdentifyFromTransactionParams::MaxSpeed] Optional parameter to optimize the API call for maximum speed. When set to true,
      #
      # @param mcc [String, Float] Optional Merchant Category Code (MCC) to help identify the business category/ind
      #
      # @param phone [String, Float] Optional phone number from the transaction to help verify brand match.
      #
      # @param tags [Array<String>] Optional comma-separated caller-defined tags for tracking this request. Tags are
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
        query = BrandDev::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "brand/transaction_identifier",
          query: query.transform_keys(max_speed: "maxSpeed", timeout_ms: "timeoutMS"),
          model: BrandDev::Models::BrandIdentifyFromTransactionResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {BrandDev::Models::BrandPrefetchParams} for more details.
      #
      # Signal that you may fetch brand data for a particular domain soon to improve
      # latency.
      #
      # @overload prefetch(domain:, tags: nil, timeout_ms: nil, request_options: {})
      #
      # @param domain [String] Domain name to prefetch brand data for
      #
      # @param tags [Array<String>] Optional tags for tracking usage. Up to 20 tags, each 1 to 50 characters.
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
      # domain for prefetching.
      #
      # @overload prefetch_by_email(email:, tags: nil, timeout_ms: nil, request_options: {})
      #
      # @param email [String] Email address to prefetch brand data for. The domain will be extracted from the
      #
      # @param tags [Array<String>] Optional tags for tracking usage. Up to 20 tags, each 1 to 50 characters.
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
      # free email addresses. Disposable and free email addresses (like gmail.com,
      # yahoo.com) will throw a 422 error.
      #
      # @overload retrieve_by_email(email:, force_language: nil, max_age_ms: nil, max_speed: nil, tags: nil, timeout_ms: nil, request_options: {})
      #
      # @param email [String] Email address to retrieve brand data for (e.g., 'contact@example.com'). The doma
      #
      # @param force_language [Symbol, BrandDev::Models::BrandRetrieveByEmailParams::ForceLanguage, nil] Language to force for the retrieved brand data.
      #
      # @param max_age_ms [Integer, nil] Maximum age in milliseconds for cached brand data before the API performs a hard
      #
      # @param max_speed [Boolean, Symbol, BrandDev::Models::BrandRetrieveByEmailParams::MaxSpeed] Optional parameter to optimize the API call for maximum speed. When set to true,
      #
      # @param tags [Array<String>] Optional comma-separated caller-defined tags for tracking this request. Tags are
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
        query = BrandDev::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "brand/retrieve-by-email",
          query: query.transform_keys(max_age_ms: "maxAgeMs", max_speed: "maxSpeed", timeout_ms: "timeoutMS"),
          model: BrandDev::Models::BrandRetrieveByEmailResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {BrandDev::Models::BrandRetrieveByIsinParams} for more details.
      #
      # Retrieve brand information using an ISIN (International Securities
      # Identification Number).
      #
      # @overload retrieve_by_isin(isin:, force_language: nil, max_age_ms: nil, max_speed: nil, tags: nil, timeout_ms: nil, request_options: {})
      #
      # @param isin [String] ISIN (International Securities Identification Number) to retrieve brand data for
      #
      # @param force_language [Symbol, BrandDev::Models::BrandRetrieveByIsinParams::ForceLanguage, nil] Language to force for the retrieved brand data.
      #
      # @param max_age_ms [Integer, nil] Maximum age in milliseconds for cached brand data before the API performs a hard
      #
      # @param max_speed [Boolean, Symbol, BrandDev::Models::BrandRetrieveByIsinParams::MaxSpeed] Optional parameter to optimize the API call for maximum speed. When set to true,
      #
      # @param tags [Array<String>] Optional comma-separated caller-defined tags for tracking this request. Tags are
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
        query = BrandDev::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "brand/retrieve-by-isin",
          query: query.transform_keys(max_age_ms: "maxAgeMs", max_speed: "maxSpeed", timeout_ms: "timeoutMS"),
          model: BrandDev::Models::BrandRetrieveByIsinResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {BrandDev::Models::BrandRetrieveByNameParams} for more details.
      #
      # Retrieve brand information using a company name.
      #
      # @overload retrieve_by_name(name:, country_gl: nil, force_language: nil, max_age_ms: nil, max_speed: nil, tags: nil, timeout_ms: nil, request_options: {})
      #
      # @param name [String] Company name to retrieve brand data for (e.g., 'Apple Inc', 'Microsoft Corporati
      #
      # @param country_gl [Symbol, BrandDev::Models::BrandRetrieveByNameParams::CountryGl] Two-letter ISO 3166-1 alpha-2 country code (GL parameter) used to localize searc
      #
      # @param force_language [Symbol, BrandDev::Models::BrandRetrieveByNameParams::ForceLanguage, nil] Language to force for the retrieved brand data.
      #
      # @param max_age_ms [Integer, nil] Maximum age in milliseconds for cached brand data before the API performs a hard
      #
      # @param max_speed [Boolean, Symbol, BrandDev::Models::BrandRetrieveByNameParams::MaxSpeed] Optional parameter to optimize the API call for maximum speed. When set to true,
      #
      # @param tags [Array<String>] Optional comma-separated caller-defined tags for tracking this request. Tags are
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
        query = BrandDev::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "brand/retrieve-by-name",
          query: query.transform_keys(max_age_ms: "maxAgeMs", max_speed: "maxSpeed", timeout_ms: "timeoutMS"),
          model: BrandDev::Models::BrandRetrieveByNameResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {BrandDev::Models::BrandRetrieveByTickerParams} for more details.
      #
      # Retrieve brand information using a stock ticker symbol.
      #
      # @overload retrieve_by_ticker(ticker:, force_language: nil, max_age_ms: nil, max_speed: nil, tags: nil, ticker_exchange: nil, timeout_ms: nil, request_options: {})
      #
      # @param ticker [String] Stock ticker symbol to retrieve brand data for (e.g., 'AAPL', 'GOOGL', 'BRK.A').
      #
      # @param force_language [Symbol, BrandDev::Models::BrandRetrieveByTickerParams::ForceLanguage, nil] Language to force for the retrieved brand data.
      #
      # @param max_age_ms [Integer, nil] Maximum age in milliseconds for cached brand data before the API performs a hard
      #
      # @param max_speed [Boolean, Symbol, BrandDev::Models::BrandRetrieveByTickerParams::MaxSpeed] Optional parameter to optimize the API call for maximum speed. When set to true,
      #
      # @param tags [Array<String>] Optional comma-separated caller-defined tags for tracking this request. Tags are
      #
      # @param ticker_exchange [Symbol, BrandDev::Models::BrandRetrieveByTickerParams::TickerExchange] Stock exchange code.
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
        query = BrandDev::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "brand/retrieve-by-ticker",
          query: query.transform_keys(max_age_ms: "maxAgeMs", max_speed: "maxSpeed", timeout_ms: "timeoutMS"),
          model: BrandDev::Models::BrandRetrieveByTickerResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {BrandDev::Models::BrandRetrieveSimplifiedParams} for more details.
      #
      # Returns a simplified version of brand data containing only essential
      # information: domain, title, colors, logos, and backdrops. Optimized for faster
      # responses and reduced data transfer.
      #
      # @overload retrieve_simplified(domain:, max_age_ms: nil, tags: nil, theme: nil, timeout_ms: nil, request_options: {})
      #
      # @param domain [String] Domain name to retrieve simplified brand data for
      #
      # @param max_age_ms [Integer, nil] Maximum age in milliseconds for cached brand data before the API performs a hard
      #
      # @param tags [Array<String>] Optional comma-separated caller-defined tags for tracking this request. Tags are
      #
      # @param theme [Symbol, BrandDev::Models::BrandRetrieveSimplifiedParams::Theme] Optional theme preference used when selecting brand assets.
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
        query = BrandDev::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "brand/retrieve-simplified",
          query: query.transform_keys(max_age_ms: "maxAgeMs", timeout_ms: "timeoutMS"),
          model: BrandDev::Models::BrandRetrieveSimplifiedResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {BrandDev::Models::BrandWebScrapeHTMLParams} for more details.
      #
      # Scrapes the given URL and returns the raw HTML content of the page. The base
      # request costs 1 credit; requests with browser actions cost 2 credits.
      #
      # @overload web_scrape_html(url:, actions: nil, country: nil, exclude_selectors: nil, headers: nil, include_frames: nil, include_selectors: nil, max_age_ms: nil, pdf: nil, settle_animations: nil, tags: nil, timeout_ms: nil, use_main_content_only: nil, wait_for_ms: nil, zdr: nil, request_options: {})
      #
      # @param url [String] Full URL to scrape (must include http:// or https:// protocol)
      #
      # @param actions [Array<BrandDev::Models::BrandWebScrapeHTMLParams::Action::Wait, BrandDev::Models::BrandWebScrapeHTMLParams::Action::Perform>, nil] Optional browser actions executed in array order after the page loads and before
      #
      # @param country [Symbol, BrandDev::Models::BrandWebScrapeHTMLParams::Country] Two-letter ISO 3166-1 alpha-2 country code identifying a supported Context.dev r
      #
      # @param exclude_selectors [Array<String>, nil] CSS selectors to remove from the result. Applied after includeSelectors. Exclusi
      #
      # @param headers [Hash{Symbol=>String}] Optional outbound HTTP headers forwarded only to the target URL, sent as deep-ob
      #
      # @param include_frames [Boolean, Symbol, BrandDev::Models::BrandWebScrapeHTMLParams::IncludeFrames] When true, iframes are rendered inline into the returned HTML.
      #
      # @param include_selectors [Array<String>, nil] CSS selectors. When provided, only matching subtrees (and their descendants) are
      #
      # @param max_age_ms [Integer, nil] Return a cached result if a prior scrape for the same parameters exists and is y
      #
      # @param pdf [BrandDev::Models::BrandWebScrapeHTMLParams::Pdf] PDF parsing controls. Use start/end to limit text extraction and embedded-image
      #
      # @param settle_animations [Boolean, Symbol, BrandDev::Models::BrandWebScrapeHTMLParams::SettleAnimations] When true, waits briefly for CSS and transition animations to settle before extr
      #
      # @param tags [Array<String>] Optional comma-separated caller-defined tags for tracking this request. Tags are
      #
      # @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      # @param use_main_content_only [Boolean, Symbol, BrandDev::Models::BrandWebScrapeHTMLParams::UseMainContentOnly] When true, return only the page's main content in the HTML response, excluding h
      #
      # @param wait_for_ms [Integer, nil] Optional browser wait time in milliseconds after initial page load. Min: 0. Max:
      #
      # @param zdr [Symbol, BrandDev::Models::BrandWebScrapeHTMLParams::Zdr] Set to enabled to bypass shared caches and omit request and response content fro
      #
      # @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [BrandDev::Models::BrandWebScrapeHTMLResponse]
      #
      # @see BrandDev::Models::BrandWebScrapeHTMLParams
      def web_scrape_html(params)
        parsed, options = BrandDev::BrandWebScrapeHTMLParams.dump_request(params)
        query = BrandDev::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "web/scrape/html",
          query: query.transform_keys(
            exclude_selectors: "excludeSelectors",
            include_frames: "includeFrames",
            include_selectors: "includeSelectors",
            max_age_ms: "maxAgeMs",
            settle_animations: "settleAnimations",
            timeout_ms: "timeoutMS",
            use_main_content_only: "useMainContentOnly",
            wait_for_ms: "waitForMs"
          ),
          model: BrandDev::Models::BrandWebScrapeHTMLResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {BrandDev::Models::BrandWebScrapeImagesParams} for more details.
      #
      # Extract image assets from a web page, including standard URLs, inline SVGs, data
      # URIs, responsive image sources, metadata, CSS backgrounds, video posters, and
      # embeds. The base request costs 1 credit, or 2 credits with browser actions. When
      # enrichment is enabled, the entire call costs 5 credits, including requests that
      # also use actions.
      #
      # @overload web_scrape_images(url:, actions: nil, dedupe: nil, enrichment: nil, headers: nil, max_age_ms: nil, tags: nil, timeout_ms: nil, wait_for_ms: nil, request_options: {})
      #
      # @param url [String] Page URL to inspect. Must include http:// or https://.
      #
      # @param actions [Array<BrandDev::Models::BrandWebScrapeImagesParams::Action::Wait, BrandDev::Models::BrandWebScrapeImagesParams::Action::Perform>, nil] Optional browser actions executed in array order after the page loads and before
      #
      # @param dedupe [Boolean, Symbol, BrandDev::Models::BrandWebScrapeImagesParams::Dedupe] When true, visually duplicate images are removed: every image is loaded and perc
      #
      # @param enrichment [BrandDev::Models::BrandWebScrapeImagesParams::Enrichment, nil] Optional per-image processing, sent as deep-object query params such as enrichme
      #
      # @param headers [Hash{Symbol=>String}] Optional outbound HTTP headers forwarded only to the target URL, sent as deep-ob
      #
      # @param max_age_ms [Integer, nil] Reuse a cached result this many milliseconds old or newer. Default: 86400000 (1
      #
      # @param tags [Array<String>] Optional comma-separated caller-defined tags for tracking this request. Tags are
      #
      # @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      # @param wait_for_ms [Integer, nil] Optional browser wait time in milliseconds after initial page load before collec
      #
      # @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [BrandDev::Models::BrandWebScrapeImagesResponse]
      #
      # @see BrandDev::Models::BrandWebScrapeImagesParams
      def web_scrape_images(params)
        parsed, options = BrandDev::BrandWebScrapeImagesParams.dump_request(params)
        query = BrandDev::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "web/scrape/images",
          query: query.transform_keys(
            max_age_ms: "maxAgeMs",
            timeout_ms: "timeoutMS",
            wait_for_ms: "waitForMs"
          ),
          model: BrandDev::Models::BrandWebScrapeImagesResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {BrandDev::Models::BrandWebScrapeMdParams} for more details.
      #
      # Scrapes the given URL into LLM usable Markdown. Inspect key_metadata on JSON
      # responses from a recognized API key; use error_code to distinguish stable
      # failure categories.
      #
      # ### Billing & errors
      #
      # | HTTP status | Billed?                                   | Meaning                                                                                  |
      # | ----------- | ----------------------------------------- | ---------------------------------------------------------------------------------------- |
      # | 200         | Yes — 1 credit, or 2 credits with actions | Successful scrape, including a zero-length result when includeSelectors matched nothing  |
      # | 400         | No                                        | Invalid input, skipped PDF, or the page could not be scraped                             |
      # | 401 / 403   | No                                        | Invalid/disabled key, insufficient permissions, or credits exhausted; inspect error_code |
      # | 404         | No                                        | Target page returned or fingerprinted as not found                                       |
      # | 408         | No                                        | Request timed out                                                                        |
      # | 415         | No                                        | Unsupported content type                                                                 |
      # | 429         | No                                        | Per-minute rate limit exceeded; honor Retry-After                                        |
      # | 500         | No                                        | Internal error                                                                           |
      #
      # @overload web_scrape_md(url:, actions: nil, country: nil, exclude_selectors: nil, headers: nil, include_frames: nil, include_images: nil, include_links: nil, include_selectors: nil, max_age_ms: nil, pdf: nil, settle_animations: nil, shorten_base64_images: nil, tags: nil, timeout_ms: nil, use_main_content_only: nil, wait_for_ms: nil, zdr: nil, request_options: {})
      #
      # @param url [String] Full URL to scrape into LLM usable Markdown (must include http:// or https:// pr
      #
      # @param actions [Array<BrandDev::Models::BrandWebScrapeMdParams::Action::Wait, BrandDev::Models::BrandWebScrapeMdParams::Action::Perform>, nil] Optional browser actions executed in array order after the page loads and before
      #
      # @param country [Symbol, BrandDev::Models::BrandWebScrapeMdParams::Country] Two-letter ISO 3166-1 alpha-2 country code identifying a supported Context.dev r
      #
      # @param exclude_selectors [Array<String>, nil] CSS selectors to remove before conversion to Markdown. Applied after includeSele
      #
      # @param headers [Hash{Symbol=>String}] Optional outbound HTTP headers forwarded only to the target URL, sent as deep-ob
      #
      # @param include_frames [Boolean, Symbol, BrandDev::Models::BrandWebScrapeMdParams::IncludeFrames] When true, the contents of iframes are rendered to Markdown.
      #
      # @param include_images [Boolean, Symbol, BrandDev::Models::BrandWebScrapeMdParams::IncludeImages] Include image references in Markdown output
      #
      # @param include_links [Boolean, Symbol, BrandDev::Models::BrandWebScrapeMdParams::IncludeLinks] Preserve hyperlinks in Markdown output
      #
      # @param include_selectors [Array<String>, nil] CSS selectors. When provided, only matching HTML subtrees (and their descendants
      #
      # @param max_age_ms [Integer, nil] Return a cached result if a prior scrape for the same parameters exists and is y
      #
      # @param pdf [BrandDev::Models::BrandWebScrapeMdParams::Pdf] PDF parsing controls. Use start/end to limit text extraction and embedded-image
      #
      # @param settle_animations [Boolean, Symbol, BrandDev::Models::BrandWebScrapeMdParams::SettleAnimations] When true, waits briefly for CSS and transition animations to settle before conv
      #
      # @param shorten_base64_images [Boolean, Symbol, BrandDev::Models::BrandWebScrapeMdParams::ShortenBase64Images] Shorten base64-encoded image data in the Markdown output
      #
      # @param tags [Array<String>] Optional comma-separated caller-defined tags for tracking this request. Tags are
      #
      # @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      # @param use_main_content_only [Boolean, Symbol, BrandDev::Models::BrandWebScrapeMdParams::UseMainContentOnly] Extract only the main content of the page, excluding headers, footers, sidebars,
      #
      # @param wait_for_ms [Integer, nil] Optional browser wait time in milliseconds after initial page load before conver
      #
      # @param zdr [Symbol, BrandDev::Models::BrandWebScrapeMdParams::Zdr] Set to enabled to bypass shared caches and omit request and response content fro
      #
      # @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [BrandDev::Models::BrandWebScrapeMdResponse]
      #
      # @see BrandDev::Models::BrandWebScrapeMdParams
      def web_scrape_md(params)
        parsed, options = BrandDev::BrandWebScrapeMdParams.dump_request(params)
        query = BrandDev::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "web/scrape/markdown",
          query: query.transform_keys(
            exclude_selectors: "excludeSelectors",
            include_frames: "includeFrames",
            include_images: "includeImages",
            include_links: "includeLinks",
            include_selectors: "includeSelectors",
            max_age_ms: "maxAgeMs",
            settle_animations: "settleAnimations",
            shorten_base64_images: "shortenBase64Images",
            timeout_ms: "timeoutMS",
            use_main_content_only: "useMainContentOnly",
            wait_for_ms: "waitForMs"
          ),
          model: BrandDev::Models::BrandWebScrapeMdResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {BrandDev::Models::BrandWebScrapeSitemapParams} for more details.
      #
      # Crawl an entire website's sitemap and return all discovered page URLs.
      #
      # @overload web_scrape_sitemap(domain:, headers: nil, max_links: nil, sitemap_url: nil, tags: nil, timeout_ms: nil, url_regex: nil, zdr: nil, request_options: {})
      #
      # @param domain [String] Domain to build a sitemap for
      #
      # @param headers [Hash{Symbol=>String}] Optional outbound HTTP headers forwarded only to the target URL, sent as deep-ob
      #
      # @param max_links [Integer] Maximum number of links to return from the sitemap crawl. Defaults to 10,000. Mi
      #
      # @param sitemap_url [String] Optional explicit sitemap URL. When provided, exactly this sitemap is crawled in
      #
      # @param tags [Array<String>] Optional comma-separated caller-defined tags for tracking this request. Tags are
      #
      # @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      # @param url_regex [String] Optional RE2-compatible regex pattern. Only URLs matching this pattern are retur
      #
      # @param zdr [Symbol, BrandDev::Models::BrandWebScrapeSitemapParams::Zdr] Set to enabled to bypass shared caches and omit request and response content fro
      #
      # @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [BrandDev::Models::BrandWebScrapeSitemapResponse]
      #
      # @see BrandDev::Models::BrandWebScrapeSitemapParams
      def web_scrape_sitemap(params)
        parsed, options = BrandDev::BrandWebScrapeSitemapParams.dump_request(params)
        query = BrandDev::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "web/scrape/sitemap",
          query: query.transform_keys(
            max_links: "maxLinks",
            sitemap_url: "sitemapUrl",
            timeout_ms: "timeoutMS",
            url_regex: "urlRegex"
          ),
          model: BrandDev::Models::BrandWebScrapeSitemapResponse,
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
