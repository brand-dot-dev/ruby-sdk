# typed: strong

module BrandDev
  module Resources
    class Brand
      # Retrieve logos, backdrops, colors, industry, description, and more from any
      # domain
      sig do
        params(
          domain: String,
          force_language:
            T.nilable(BrandDev::BrandRetrieveParams::ForceLanguage::OrSymbol),
          max_age_ms: T.nilable(Integer),
          max_speed:
            T.any(
              T::Boolean,
              BrandDev::BrandRetrieveParams::MaxSpeed::OrSymbol
            ),
          name: String,
          tags: T::Array[String],
          ticker: String,
          ticker_exchange:
            BrandDev::BrandRetrieveParams::TickerExchange::OrSymbol,
          timeout_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(BrandDev::Models::BrandRetrieveResponse)
      end
      def retrieve(
        # Domain name to retrieve brand data for (e.g., 'example.com', 'google.com').
        # Cannot be used with name or ticker parameters.
        domain: nil,
        # Language to force for the retrieved brand data.
        force_language: nil,
        # Maximum age in milliseconds for cached brand data before the API performs a hard
        # refresh. Defaults to 3 months (7776000000 ms). Values below 1 day (86400000 ms)
        # are clamped to 1 day; values above 1 year (31536000000 ms) are clamped to 1
        # year.
        max_age_ms: nil,
        # Optional parameter to optimize the API call for maximum speed. When set to true,
        # the API will skip time-consuming operations for faster response at the cost of
        # less comprehensive data. Works with all three lookup methods.
        max_speed: nil,
        # Company name to retrieve brand data for (e.g., 'Apple Inc'). Cannot be used with
        # domain or ticker parameters.
        name: nil,
        # Optional comma-separated caller-defined tags for tracking this request. Tags are
        # recorded on the request's usage log and can be used to filter usage on the
        # dashboard usage page. Up to 20 tags, each 1-50 characters.
        tags: nil,
        # Stock ticker symbol to retrieve brand data for (e.g., 'AAPL'). Cannot be used
        # with domain or name parameters.
        ticker: nil,
        # Stock exchange code.
        ticker_exchange: nil,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        request_options: {}
      )
      end

      # Given a single URL, determines if it is a product page and extracts the product
      # information.
      sig do
        params(
          url: String,
          max_age_ms: Integer,
          tags: T::Array[String],
          timeout_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(BrandDev::Models::BrandAIProductResponse)
      end
      def ai_product(
        # The product page URL to extract product data from.
        url:,
        # Return a cached result if a prior scrape for the same parameters exists and is
        # younger than this many milliseconds. Defaults to 7 days (604800000 ms) when
        # omitted. Max is 30 days (2592000000 ms). Set to 0 to always scrape fresh.
        max_age_ms: nil,
        # Optional tags for tracking usage. Up to 20 tags, each 1 to 50 characters.
        tags: nil,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        request_options: {}
      )
      end

      # Extract product information from a brand's website. We will analyze the website
      # and return a list of products with details such as name, description, image,
      # pricing, features, and more.
      sig do
        params(
          body:
            T.any(
              BrandDev::BrandAIProductsParams::Body::ByDomain::OrHash,
              BrandDev::BrandAIProductsParams::Body::ByDirectURL::OrHash
            ),
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(BrandDev::Models::BrandAIProductsResponse)
      end
      def ai_products(body:, request_options: {})
      end

      # Use AI to extract specific data points from a brand's website. The AI will crawl
      # the website and extract the requested information based on the provided data
      # points.
      sig do
        params(
          data_to_extract:
            T::Array[BrandDev::BrandAIQueryParams::DataToExtract::OrHash],
          domain: String,
          specific_pages: BrandDev::BrandAIQueryParams::SpecificPages::OrHash,
          tags: T::Array[String],
          timeout_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(BrandDev::Models::BrandAIQueryResponse)
      end
      def ai_query(
        # Array of data points to extract from the website
        data_to_extract:,
        # The domain name to analyze
        domain:,
        # Optional object specifying which pages to analyze
        specific_pages: nil,
        # Optional tags for tracking usage. Up to 20 tags, each 1 to 50 characters.
        tags: nil,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        request_options: {}
      )
      end

      # Scrape font information from a website including font families, usage
      # statistics, fallbacks, and element/word counts.
      sig do
        params(
          direct_url: String,
          domain: String,
          max_age_ms: T.nilable(Integer),
          tags: T::Array[String],
          timeout_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(BrandDev::Models::BrandFontsResponse)
      end
      def fonts(
        # A specific URL to fetch fonts from directly, bypassing domain resolution (e.g.,
        # 'https://example.com/design-system'). When provided, fonts are extracted from
        # this exact URL. You must provide either 'domain' or 'directUrl', but not both.
        direct_url: nil,
        # Domain name to extract fonts from (e.g., 'example.com', 'google.com'). The
        # domain will be automatically normalized and validated. You must provide either
        # 'domain' or 'directUrl', but not both.
        domain: nil,
        # Maximum age in milliseconds for cached brand data before the API performs a hard
        # refresh. Defaults to 3 months (7776000000 ms). Values below 1 day (86400000 ms)
        # are clamped to 1 day; values above 1 year (31536000000 ms) are clamped to 1
        # year.
        max_age_ms: nil,
        # Optional comma-separated caller-defined tags for tracking this request. Tags are
        # recorded on the request's usage log and can be used to filter usage on the
        # dashboard usage page. Up to 20 tags, each 1-50 characters.
        tags: nil,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        request_options: {}
      )
      end

      # Endpoint specially designed for platforms that want to identify transaction data
      # by the transaction title.
      sig do
        params(
          transaction_info: String,
          city: String,
          country_gl:
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::OrSymbol,
          force_language:
            T.nilable(
              BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::OrSymbol
            ),
          high_confidence_only:
            T.any(
              T::Boolean,
              BrandDev::BrandIdentifyFromTransactionParams::HighConfidenceOnly::OrSymbol
            ),
          max_speed:
            T.any(
              T::Boolean,
              BrandDev::BrandIdentifyFromTransactionParams::MaxSpeed::OrSymbol
            ),
          mcc: BrandDev::BrandIdentifyFromTransactionParams::Mcc::Variants,
          phone: BrandDev::BrandIdentifyFromTransactionParams::Phone::Variants,
          tags: T::Array[String],
          timeout_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(BrandDev::Models::BrandIdentifyFromTransactionResponse)
      end
      def identify_from_transaction(
        # Transaction information to identify the brand
        transaction_info:,
        # Optional city name to prioritize when searching for the brand.
        city: nil,
        # Two-letter ISO 3166-1 alpha-2 country code (GL parameter) used to localize
        # search.
        country_gl: nil,
        # Language to force for the retrieved brand data.
        force_language: nil,
        # When set to true, the API will perform an additional verification steps to
        # ensure the identified brand matches the transaction with high confidence.
        high_confidence_only: nil,
        # Optional parameter to optimize the API call for maximum speed. When set to true,
        # the API will skip time-consuming operations for faster response at the cost of
        # less comprehensive data.
        max_speed: nil,
        # Optional Merchant Category Code (MCC) to help identify the business
        # category/industry.
        mcc: nil,
        # Optional phone number from the transaction to help verify brand match.
        phone: nil,
        # Optional comma-separated caller-defined tags for tracking this request. Tags are
        # recorded on the request's usage log and can be used to filter usage on the
        # dashboard usage page. Up to 20 tags, each 1-50 characters.
        tags: nil,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        request_options: {}
      )
      end

      # Signal that you may fetch brand data for a particular domain soon to improve
      # latency.
      sig do
        params(
          domain: String,
          tags: T::Array[String],
          timeout_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(BrandDev::Models::BrandPrefetchResponse)
      end
      def prefetch(
        # Domain name to prefetch brand data for
        domain:,
        # Optional tags for tracking usage. Up to 20 tags, each 1 to 50 characters.
        tags: nil,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        request_options: {}
      )
      end

      # Signal that you may fetch brand data for a particular domain soon to improve
      # latency. This endpoint accepts an email address, extracts the domain from it,
      # validates that it's not a disposable or free email provider, and queues the
      # domain for prefetching.
      sig do
        params(
          email: String,
          tags: T::Array[String],
          timeout_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(BrandDev::Models::BrandPrefetchByEmailResponse)
      end
      def prefetch_by_email(
        # Email address to prefetch brand data for. The domain will be extracted from the
        # email. Free email providers (gmail.com, yahoo.com, etc.) and disposable email
        # addresses are not allowed.
        email:,
        # Optional tags for tracking usage. Up to 20 tags, each 1 to 50 characters.
        tags: nil,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        request_options: {}
      )
      end

      # Retrieve brand information using an email address while detecting disposable and
      # free email addresses. Disposable and free email addresses (like gmail.com,
      # yahoo.com) will throw a 422 error.
      sig do
        params(
          email: String,
          force_language:
            T.nilable(
              BrandDev::BrandRetrieveByEmailParams::ForceLanguage::OrSymbol
            ),
          max_age_ms: T.nilable(Integer),
          max_speed:
            T.any(
              T::Boolean,
              BrandDev::BrandRetrieveByEmailParams::MaxSpeed::OrSymbol
            ),
          tags: T::Array[String],
          timeout_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(BrandDev::Models::BrandRetrieveByEmailResponse)
      end
      def retrieve_by_email(
        # Email address to retrieve brand data for (e.g., 'contact@example.com'). The
        # domain will be extracted from the email. Free email providers (gmail.com,
        # yahoo.com, etc.) and disposable email addresses are not allowed.
        email:,
        # Language to force for the retrieved brand data.
        force_language: nil,
        # Maximum age in milliseconds for cached brand data before the API performs a hard
        # refresh. Defaults to 3 months (7776000000 ms). Values below 1 day (86400000 ms)
        # are clamped to 1 day; values above 1 year (31536000000 ms) are clamped to 1
        # year.
        max_age_ms: nil,
        # Optional parameter to optimize the API call for maximum speed. When set to true,
        # the API will skip time-consuming operations for faster response at the cost of
        # less comprehensive data.
        max_speed: nil,
        # Optional comma-separated caller-defined tags for tracking this request. Tags are
        # recorded on the request's usage log and can be used to filter usage on the
        # dashboard usage page. Up to 20 tags, each 1-50 characters.
        tags: nil,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        request_options: {}
      )
      end

      # Retrieve brand information using an ISIN (International Securities
      # Identification Number).
      sig do
        params(
          isin: String,
          force_language:
            T.nilable(
              BrandDev::BrandRetrieveByIsinParams::ForceLanguage::OrSymbol
            ),
          max_age_ms: T.nilable(Integer),
          max_speed:
            T.any(
              T::Boolean,
              BrandDev::BrandRetrieveByIsinParams::MaxSpeed::OrSymbol
            ),
          tags: T::Array[String],
          timeout_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(BrandDev::Models::BrandRetrieveByIsinResponse)
      end
      def retrieve_by_isin(
        # ISIN (International Securities Identification Number) to retrieve brand data for
        # (e.g., 'AU000000IMD5', 'US0378331005'). Must be exactly 12 characters: 2 letters
        # followed by 9 alphanumeric characters and ending with a digit.
        isin:,
        # Language to force for the retrieved brand data.
        force_language: nil,
        # Maximum age in milliseconds for cached brand data before the API performs a hard
        # refresh. Defaults to 3 months (7776000000 ms). Values below 1 day (86400000 ms)
        # are clamped to 1 day; values above 1 year (31536000000 ms) are clamped to 1
        # year.
        max_age_ms: nil,
        # Optional parameter to optimize the API call for maximum speed. When set to true,
        # the API will skip time-consuming operations for faster response at the cost of
        # less comprehensive data.
        max_speed: nil,
        # Optional comma-separated caller-defined tags for tracking this request. Tags are
        # recorded on the request's usage log and can be used to filter usage on the
        # dashboard usage page. Up to 20 tags, each 1-50 characters.
        tags: nil,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        request_options: {}
      )
      end

      # Retrieve brand information using a company name.
      sig do
        params(
          name: String,
          country_gl: BrandDev::BrandRetrieveByNameParams::CountryGl::OrSymbol,
          force_language:
            T.nilable(
              BrandDev::BrandRetrieveByNameParams::ForceLanguage::OrSymbol
            ),
          max_age_ms: T.nilable(Integer),
          max_speed:
            T.any(
              T::Boolean,
              BrandDev::BrandRetrieveByNameParams::MaxSpeed::OrSymbol
            ),
          tags: T::Array[String],
          timeout_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(BrandDev::Models::BrandRetrieveByNameResponse)
      end
      def retrieve_by_name(
        # Company name to retrieve brand data for (e.g., 'Apple Inc', 'Microsoft
        # Corporation'). Must be 3-30 characters.
        name:,
        # Two-letter ISO 3166-1 alpha-2 country code (GL parameter) used to localize
        # search.
        country_gl: nil,
        # Language to force for the retrieved brand data.
        force_language: nil,
        # Maximum age in milliseconds for cached brand data before the API performs a hard
        # refresh. Defaults to 3 months (7776000000 ms). Values below 1 day (86400000 ms)
        # are clamped to 1 day; values above 1 year (31536000000 ms) are clamped to 1
        # year.
        max_age_ms: nil,
        # Optional parameter to optimize the API call for maximum speed. When set to true,
        # the API will skip time-consuming operations for faster response at the cost of
        # less comprehensive data.
        max_speed: nil,
        # Optional comma-separated caller-defined tags for tracking this request. Tags are
        # recorded on the request's usage log and can be used to filter usage on the
        # dashboard usage page. Up to 20 tags, each 1-50 characters.
        tags: nil,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        request_options: {}
      )
      end

      # Retrieve brand information using a stock ticker symbol.
      sig do
        params(
          ticker: String,
          force_language:
            T.nilable(
              BrandDev::BrandRetrieveByTickerParams::ForceLanguage::OrSymbol
            ),
          max_age_ms: T.nilable(Integer),
          max_speed:
            T.any(
              T::Boolean,
              BrandDev::BrandRetrieveByTickerParams::MaxSpeed::OrSymbol
            ),
          tags: T::Array[String],
          ticker_exchange:
            BrandDev::BrandRetrieveByTickerParams::TickerExchange::OrSymbol,
          timeout_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(BrandDev::Models::BrandRetrieveByTickerResponse)
      end
      def retrieve_by_ticker(
        # Stock ticker symbol to retrieve brand data for (e.g., 'AAPL', 'GOOGL', 'BRK.A').
        # Must be 1-15 characters, letters/numbers/dots only.
        ticker:,
        # Language to force for the retrieved brand data.
        force_language: nil,
        # Maximum age in milliseconds for cached brand data before the API performs a hard
        # refresh. Defaults to 3 months (7776000000 ms). Values below 1 day (86400000 ms)
        # are clamped to 1 day; values above 1 year (31536000000 ms) are clamped to 1
        # year.
        max_age_ms: nil,
        # Optional parameter to optimize the API call for maximum speed. When set to true,
        # the API will skip time-consuming operations for faster response at the cost of
        # less comprehensive data.
        max_speed: nil,
        # Optional comma-separated caller-defined tags for tracking this request. Tags are
        # recorded on the request's usage log and can be used to filter usage on the
        # dashboard usage page. Up to 20 tags, each 1-50 characters.
        tags: nil,
        # Stock exchange code.
        ticker_exchange: nil,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        request_options: {}
      )
      end

      # Classify any brand into 2022 NAICS industry codes from its domain or name.
      sig do
        params(
          input: String,
          max_results: Integer,
          min_results: Integer,
          tags: T::Array[String],
          timeout_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(BrandDev::Models::BrandRetrieveNaicsResponse)
      end
      def retrieve_naics(
        # Brand domain or title to retrieve NAICS code for. If a valid domain is provided,
        # it will be used for classification, otherwise, we will search for the brand
        # using the provided title.
        input:,
        # Maximum number of NAICS codes to return. Must be between 1 and 10. Defaults
        # to 5.
        max_results: nil,
        # Minimum number of NAICS codes to return. Must be at least 1. Defaults to 1.
        min_results: nil,
        # Optional comma-separated caller-defined tags for tracking this request. Tags are
        # recorded on the request's usage log and can be used to filter usage on the
        # dashboard usage page. Up to 20 tags, each 1-50 characters.
        tags: nil,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        request_options: {}
      )
      end

      # Returns a simplified version of brand data containing only essential
      # information: domain, title, colors, logos, and backdrops. Optimized for faster
      # responses and reduced data transfer.
      sig do
        params(
          domain: String,
          max_age_ms: T.nilable(Integer),
          tags: T::Array[String],
          theme: BrandDev::BrandRetrieveSimplifiedParams::Theme::OrSymbol,
          timeout_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(BrandDev::Models::BrandRetrieveSimplifiedResponse)
      end
      def retrieve_simplified(
        # Domain name to retrieve simplified brand data for
        domain:,
        # Maximum age in milliseconds for cached brand data before the API performs a hard
        # refresh. Defaults to 3 months (7776000000 ms). Values below 1 day (86400000 ms)
        # are clamped to 1 day; values above 1 year (31536000000 ms) are clamped to 1
        # year.
        max_age_ms: nil,
        # Optional comma-separated caller-defined tags for tracking this request. Tags are
        # recorded on the request's usage log and can be used to filter usage on the
        # dashboard usage page. Up to 20 tags, each 1-50 characters.
        tags: nil,
        # Optional theme preference used when selecting brand assets.
        theme: nil,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        request_options: {}
      )
      end

      # Capture a screenshot of a website.
      sig do
        params(
          color_scheme: BrandDev::BrandScreenshotParams::ColorScheme::OrSymbol,
          country: BrandDev::BrandScreenshotParams::Country::OrSymbol,
          direct_url: String,
          domain: String,
          full_screenshot:
            BrandDev::BrandScreenshotParams::FullScreenshot::OrSymbol,
          handle_cookie_popup:
            T.any(
              T::Boolean,
              BrandDev::BrandScreenshotParams::HandleCookiePopup::OrSymbol
            ),
          max_age_ms: T.nilable(Integer),
          page: BrandDev::BrandScreenshotParams::Page::OrSymbol,
          scroll_offset: T.nilable(Integer),
          tags: T::Array[String],
          timeout_ms: Integer,
          viewport: BrandDev::BrandScreenshotParams::Viewport::OrHash,
          wait_for_ms: T.nilable(Integer),
          zdr: BrandDev::BrandScreenshotParams::Zdr::OrSymbol,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(BrandDev::Models::BrandScreenshotResponse)
      end
      def screenshot(
        # Optional parameter to choose the site's visual theme in the screenshot. Use
        # 'light' or 'dark' when the site offers both appearances.
        color_scheme: nil,
        # Fetch the target page through a residential proxy in this country (ISO 3166-1
        # alpha-2).
        country: nil,
        # A specific URL to screenshot directly, bypassing domain resolution (e.g.,
        # 'https://example.com/pricing'). When provided, the screenshot is taken of this
        # exact URL. You must provide either 'domain' or 'directUrl', but not both.
        direct_url: nil,
        # Domain name to take screenshot of (e.g., 'example.com', 'google.com'). The
        # domain will be automatically normalized and validated. You must provide either
        # 'domain' or 'directUrl', but not both.
        domain: nil,
        # Optional parameter to determine screenshot type. If 'true', takes a full page
        # screenshot capturing all content. If 'false' or not provided, takes a viewport
        # screenshot (standard browser view).
        full_screenshot: nil,
        # Optional parameter to control cookie/consent popup handling. If 'true', we
        # dismiss cookie banner before capture. If 'false' or not provided, captures the
        # page without that step.
        handle_cookie_popup: nil,
        # Return a cached screenshot if a prior screenshot for the same parameters exists
        # and is younger than this many milliseconds. Defaults to 1 day (86400000 ms) when
        # omitted. Max is 30 days (2592000000 ms). Set to 0 to always capture fresh.
        max_age_ms: nil,
        # Optional parameter to specify which page type to screenshot. If provided, the
        # system will scrape the domain's links and use heuristics to find the most
        # appropriate URL for the specified page type (30 supported languages). If not
        # provided, screenshots the main domain landing page. Only applicable when using
        # 'domain', not 'directUrl'.
        page: nil,
        # Optional vertical scroll offset in pixels for capturing a long page in
        # viewport-sized chunks. When provided, the full page is captured once and the
        # returned image is the viewport-sized slice that begins at this Y offset (e.g.
        # request scrollOffset=0, then 1080, then 2160 to walk a 1920x1080 landing page
        # top to bottom). The final slice may be shorter than the viewport height. Takes
        # precedence over fullScreenshot. Max: 100000.
        scroll_offset: nil,
        # Optional comma-separated caller-defined tags for tracking this request. Tags are
        # recorded on the request's usage log and can be used to filter usage on the
        # dashboard usage page. Up to 20 tags, each 1-50 characters.
        tags: nil,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        # Optional browser viewport dimensions for the screenshot. Defaults to 1920x1080.
        viewport: nil,
        # Optional browser wait time in milliseconds after initial page load before taking
        # the screenshot. Min: 0. Max: 30000 (30 seconds). Defaults to 3000 ms when
        # omitted.
        wait_for_ms: nil,
        # Set to enabled to bypass shared caches and omit request and response content
        # from retained usage logs. Requires zero data retention to be enabled for your
        # organization (contact support@context.dev), otherwise the request fails with
        # ZDR_NOT_ENABLED. Successful ZDR responses include X-Context-ZDR: true.
        zdr: nil,
        request_options: {}
      )
      end

      # Extract a comprehensive design system from a website including colors,
      # typography, spacing, shadows, and UI components.
      sig do
        params(
          color_scheme: BrandDev::BrandStyleguideParams::ColorScheme::OrSymbol,
          direct_url: String,
          domain: String,
          max_age_ms: T.nilable(Integer),
          tags: T::Array[String],
          timeout_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(BrandDev::Models::BrandStyleguideResponse)
      end
      def styleguide(
        # Optional browser color scheme to emulate for websites that respond to
        # prefers-color-scheme. This value is part of the styleguide cache key.
        color_scheme: nil,
        # A specific URL to fetch the styleguide from directly, bypassing domain
        # resolution (e.g., 'https://example.com/design-system'). When provided, the
        # styleguide is extracted from this exact URL. You must provide either 'domain' or
        # 'directUrl', but not both.
        direct_url: nil,
        # Domain name to extract styleguide from (e.g., 'example.com', 'google.com'). The
        # domain will be automatically normalized and validated. You must provide either
        # 'domain' or 'directUrl', but not both.
        domain: nil,
        # Maximum age in milliseconds for cached brand data before the API performs a hard
        # refresh. Defaults to 3 months (7776000000 ms). Values below 1 day (86400000 ms)
        # are clamped to 1 day; values above 1 year (31536000000 ms) are clamped to 1
        # year.
        max_age_ms: nil,
        # Optional comma-separated caller-defined tags for tracking this request. Tags are
        # recorded on the request's usage log and can be used to filter usage on the
        # dashboard usage page. Up to 20 tags, each 1-50 characters.
        tags: nil,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        request_options: {}
      )
      end

      # Scrapes the given URL and returns the raw HTML content of the page. The base
      # request costs 1 credit; requests with browser actions cost 2 credits.
      sig do
        params(
          url: String,
          actions:
            T.nilable(
              T::Array[
                T.any(
                  BrandDev::BrandWebScrapeHTMLParams::Action::Wait::OrHash,
                  BrandDev::BrandWebScrapeHTMLParams::Action::Perform::OrHash
                )
              ]
            ),
          country: BrandDev::BrandWebScrapeHTMLParams::Country::OrSymbol,
          exclude_selectors: T.nilable(T::Array[String]),
          headers: T::Hash[Symbol, String],
          include_frames:
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeHTMLParams::IncludeFrames::OrSymbol
            ),
          include_selectors: T.nilable(T::Array[String]),
          max_age_ms: T.nilable(Integer),
          pdf: BrandDev::BrandWebScrapeHTMLParams::Pdf::OrHash,
          settle_animations:
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeHTMLParams::SettleAnimations::OrSymbol
            ),
          tags: T::Array[String],
          timeout_ms: Integer,
          use_main_content_only:
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeHTMLParams::UseMainContentOnly::OrSymbol
            ),
          wait_for_ms: T.nilable(Integer),
          zdr: BrandDev::BrandWebScrapeHTMLParams::Zdr::OrSymbol,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(BrandDev::Models::BrandWebScrapeHTMLResponse)
      end
      def web_scrape_html(
        # Full URL to scrape (must include http:// or https:// protocol)
        url:,
        # Optional browser actions executed in array order after the page loads and before
        # content is captured. Requires a paid plan. Send a JSON array in the query
        # parameter. Maximum: 5 actions.
        actions: nil,
        # Fetch the target page through a residential proxy in this country (ISO 3166-1
        # alpha-2).
        country: nil,
        # CSS selectors to remove from the result. Applied after includeSelectors.
        # Exclusion takes precedence: an element matching both is removed. Examples:
        # "nav", "footer", ".ad-banner", "[aria-hidden=true]".
        exclude_selectors: nil,
        # Optional outbound HTTP headers forwarded only to the target URL, sent as
        # deep-object query params such as headers[X-Custom]=value. When provided, caching
        # is bypassed: the result is neither read from nor written to cache.
        headers: nil,
        # When true, iframes are rendered inline into the returned HTML.
        include_frames: nil,
        # CSS selectors. When provided, only matching subtrees (and their descendants) are
        # kept and everything else is dropped. When omitted, the entire document is kept.
        # Examples: "article.main", "#content", "[role=main]".
        include_selectors: nil,
        # Return a cached result if a prior scrape for the same parameters exists and is
        # younger than this many milliseconds. Defaults to 1 day (86400000 ms) when
        # omitted. Max is 30 days (2592000000 ms). Set to 0 to always scrape fresh.
        max_age_ms: nil,
        # PDF parsing controls. Use start/end to limit text extraction and embedded-image
        # detection/OCR to an inclusive 1-based page range.
        pdf: nil,
        # When true, waits briefly for CSS and transition animations to settle before
        # extracting HTML. Defaults to false. This adds a bit of latency in exchange for
        # more stable output on animated pages.
        settle_animations: nil,
        # Optional comma-separated caller-defined tags for tracking this request. Tags are
        # recorded on the request's usage log and can be used to filter usage on the
        # dashboard usage page. Up to 20 tags, each 1-50 characters.
        tags: nil,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        # When true, return only the page's main content in the HTML response, excluding
        # headers, footers, sidebars, and navigation when detectable.
        use_main_content_only: nil,
        # Optional browser wait time in milliseconds after initial page load. Min: 0. Max:
        # 30000 (30 seconds).
        wait_for_ms: nil,
        # Set to enabled to bypass shared caches and omit request and response content
        # from retained usage logs. Requires zero data retention to be enabled for your
        # organization (contact support@context.dev), otherwise the request fails with
        # ZDR_NOT_ENABLED. Successful ZDR responses include X-Context-ZDR: true.
        zdr: nil,
        request_options: {}
      )
      end

      # Extract image assets from a web page, including standard URLs, inline SVGs, data
      # URIs, responsive image sources, metadata, CSS backgrounds, video posters, and
      # embeds. The base request costs 1 credit, or 2 credits with browser actions. When
      # enrichment is enabled, the entire call costs 5 credits, including requests that
      # also use actions.
      sig do
        params(
          url: String,
          actions:
            T.nilable(
              T::Array[
                T.any(
                  BrandDev::BrandWebScrapeImagesParams::Action::Wait::OrHash,
                  BrandDev::BrandWebScrapeImagesParams::Action::Perform::OrHash
                )
              ]
            ),
          dedupe:
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeImagesParams::Dedupe::OrSymbol
            ),
          enrichment:
            T.nilable(BrandDev::BrandWebScrapeImagesParams::Enrichment::OrHash),
          headers: T::Hash[Symbol, String],
          max_age_ms: T.nilable(Integer),
          tags: T::Array[String],
          timeout_ms: Integer,
          wait_for_ms: T.nilable(Integer),
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(BrandDev::Models::BrandWebScrapeImagesResponse)
      end
      def web_scrape_images(
        # Page URL to inspect. Must include http:// or https://.
        url:,
        # Optional browser actions executed in array order after the page loads and before
        # content is captured. Requires a paid plan. Send a JSON array in the query
        # parameter. Maximum: 5 actions.
        actions: nil,
        # When true, visually duplicate images are removed: every image is loaded and
        # perceptually hashed, and only the highest-resolution copy of each duplicate
        # group is kept. Images that cannot be downloaded or hashed are kept. Default:
        # false.
        dedupe: nil,
        # Optional per-image processing, sent as deep-object query params such as
        # enrichment[resolution]=true.
        enrichment: nil,
        # Optional outbound HTTP headers forwarded only to the target URL, sent as
        # deep-object query params such as headers[X-Custom]=value. When provided, caching
        # is bypassed: the result is neither read from nor written to cache.
        headers: nil,
        # Reuse a cached result this many milliseconds old or newer. Default: 86400000 (1
        # day). Set to 0 to bypass cache. Maximum: 2592000000 (30 days).
        max_age_ms: nil,
        # Optional comma-separated caller-defined tags for tracking this request. Tags are
        # recorded on the request's usage log and can be used to filter usage on the
        # dashboard usage page. Up to 20 tags, each 1-50 characters.
        tags: nil,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        # Optional browser wait time in milliseconds after initial page load before
        # collecting images. Min: 0. Max: 30000 (30 seconds).
        wait_for_ms: nil,
        request_options: {}
      )
      end

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
      # | 413         | No                                        | Target content exceeds the maximum supported size (20 MB)                                |
      # | 415         | No                                        | Unsupported content type                                                                 |
      # | 429         | No                                        | Per-minute rate limit exceeded; honor Retry-After                                        |
      # | 500         | No                                        | Internal error                                                                           |
      sig do
        params(
          url: String,
          actions:
            T.nilable(
              T::Array[
                T.any(
                  BrandDev::BrandWebScrapeMdParams::Action::Wait::OrHash,
                  BrandDev::BrandWebScrapeMdParams::Action::Perform::OrHash
                )
              ]
            ),
          country: BrandDev::BrandWebScrapeMdParams::Country::OrSymbol,
          exclude_selectors: T.nilable(T::Array[String]),
          headers: T::Hash[Symbol, String],
          include_frames:
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeMdParams::IncludeFrames::OrSymbol
            ),
          include_images:
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeMdParams::IncludeImages::OrSymbol
            ),
          include_links:
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeMdParams::IncludeLinks::OrSymbol
            ),
          include_selectors: T.nilable(T::Array[String]),
          max_age_ms: T.nilable(Integer),
          pdf: BrandDev::BrandWebScrapeMdParams::Pdf::OrHash,
          settle_animations:
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeMdParams::SettleAnimations::OrSymbol
            ),
          shorten_base64_images:
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeMdParams::ShortenBase64Images::OrSymbol
            ),
          tags: T::Array[String],
          timeout_ms: Integer,
          use_main_content_only:
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeMdParams::UseMainContentOnly::OrSymbol
            ),
          wait_for_ms: T.nilable(Integer),
          zdr: BrandDev::BrandWebScrapeMdParams::Zdr::OrSymbol,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(BrandDev::Models::BrandWebScrapeMdResponse)
      end
      def web_scrape_md(
        # Full URL to scrape into LLM usable Markdown (must include http:// or https://
        # protocol)
        url:,
        # Optional browser actions executed in array order after the page loads and before
        # content is captured. Requires a paid plan. Send a JSON array in the query
        # parameter. Maximum: 5 actions.
        actions: nil,
        # Fetch the target page through a residential proxy in this country (ISO 3166-1
        # alpha-2).
        country: nil,
        # CSS selectors to remove before conversion to Markdown. Applied after
        # includeSelectors. Exclusion takes precedence: an element matching both is
        # removed. Examples: "nav", "footer", ".ad-banner", "[aria-hidden=true]".
        exclude_selectors: nil,
        # Optional outbound HTTP headers forwarded only to the target URL, sent as
        # deep-object query params such as headers[X-Custom]=value. When provided, caching
        # is bypassed: the result is neither read from nor written to cache.
        headers: nil,
        # When true, the contents of iframes are rendered to Markdown.
        include_frames: nil,
        # Include image references in Markdown output
        include_images: nil,
        # Preserve hyperlinks in Markdown output
        include_links: nil,
        # CSS selectors. When provided, only matching HTML subtrees (and their
        # descendants) are kept before conversion to Markdown. When omitted, the entire
        # document is kept. Examples: "article.main", "#content", "[role=main]".
        include_selectors: nil,
        # Return a cached result if a prior scrape for the same parameters exists and is
        # younger than this many milliseconds. Defaults to 1 day (86400000 ms) when
        # omitted. Max is 30 days (2592000000 ms). Set to 0 to always scrape fresh.
        max_age_ms: nil,
        # PDF parsing controls. Use start/end to limit text extraction and embedded-image
        # detection/OCR to an inclusive 1-based page range.
        pdf: nil,
        # When true, waits briefly for CSS and transition animations to settle before
        # converting to Markdown. Defaults to false. This adds a bit of latency in
        # exchange for more stable output on animated pages.
        settle_animations: nil,
        # Shorten base64-encoded image data in the Markdown output
        shorten_base64_images: nil,
        # Optional comma-separated caller-defined tags for tracking this request. Tags are
        # recorded on the request's usage log and can be used to filter usage on the
        # dashboard usage page. Up to 20 tags, each 1-50 characters.
        tags: nil,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        # Extract only the main content of the page, excluding headers, footers, sidebars,
        # and navigation
        use_main_content_only: nil,
        # Optional browser wait time in milliseconds after initial page load before
        # converting the page to Markdown. Min: 0. Max: 30000 (30 seconds).
        wait_for_ms: nil,
        # Set to enabled to bypass shared caches and omit request and response content
        # from retained usage logs. Requires zero data retention to be enabled for your
        # organization (contact support@context.dev), otherwise the request fails with
        # ZDR_NOT_ENABLED. Successful ZDR responses include X-Context-ZDR: true.
        zdr: nil,
        request_options: {}
      )
      end

      # Crawl an entire website's sitemap and return all discovered page URLs.
      sig do
        params(
          domain: String,
          headers: T::Hash[Symbol, String],
          max_links: Integer,
          sitemap_url: String,
          tags: T::Array[String],
          timeout_ms: Integer,
          url_regex: String,
          zdr: BrandDev::BrandWebScrapeSitemapParams::Zdr::OrSymbol,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(BrandDev::Models::BrandWebScrapeSitemapResponse)
      end
      def web_scrape_sitemap(
        # Domain to build a sitemap for
        domain:,
        # Optional outbound HTTP headers forwarded only to the target URL, sent as
        # deep-object query params such as headers[X-Custom]=value. When provided, caching
        # is bypassed: the result is neither read from nor written to cache.
        headers: nil,
        # Maximum number of links to return from the sitemap crawl. Defaults to 10,000.
        # Minimum is 1, maximum is 100,000.
        max_links: nil,
        # Optional explicit sitemap URL. When provided, exactly this sitemap is crawled
        # instead of discovering the domain's sitemaps.
        sitemap_url: nil,
        # Optional comma-separated caller-defined tags for tracking this request. Tags are
        # recorded on the request's usage log and can be used to filter usage on the
        # dashboard usage page. Up to 20 tags, each 1-50 characters.
        tags: nil,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        # Optional RE2-compatible regex pattern. Only URLs matching this pattern are
        # returned and counted against maxLinks.
        url_regex: nil,
        # Set to enabled to bypass shared caches and omit request and response content
        # from retained usage logs. Requires zero data retention to be enabled for your
        # organization (contact support@context.dev), otherwise the request fails with
        # ZDR_NOT_ENABLED. Successful ZDR responses include X-Context-ZDR: true.
        zdr: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: BrandDev::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
