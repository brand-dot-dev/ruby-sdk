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
            BrandDev::BrandRetrieveParams::ForceLanguage::OrSymbol,
          max_age_ms: Integer,
          max_speed: T::Boolean,
          timeout_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(BrandDev::Models::BrandRetrieveResponse)
      end
      def retrieve(
        # Domain name to retrieve brand data for (e.g., 'example.com', 'google.com').
        # Cannot be used with name or ticker parameters.
        domain:,
        # Optional parameter to force the language of the retrieved brand data.
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
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::OrSymbol,
          high_confidence_only: T::Boolean,
          max_speed: T::Boolean,
          mcc: String,
          phone: Float,
          timeout_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(BrandDev::Models::BrandIdentifyFromTransactionResponse)
      end
      def identify_from_transaction(
        # Transaction information to identify the brand
        transaction_info:,
        # Optional city name to prioritize when searching for the brand.
        city: nil,
        # Optional country code (GL parameter) to specify the country. This affects the
        # geographic location used for search queries.
        country_gl: nil,
        # Optional parameter to force the language of the retrieved brand data.
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
          timeout_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(BrandDev::Models::BrandPrefetchResponse)
      end
      def prefetch(
        # Domain name to prefetch brand data for
        domain:,
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
          timeout_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(BrandDev::Models::BrandPrefetchByEmailResponse)
      end
      def prefetch_by_email(
        # Email address to prefetch brand data for. The domain will be extracted from the
        # email. Free email providers (gmail.com, yahoo.com, etc.) and disposable email
        # addresses are not allowed.
        email:,
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
            BrandDev::BrandRetrieveByEmailParams::ForceLanguage::OrSymbol,
          max_age_ms: Integer,
          max_speed: T::Boolean,
          timeout_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(BrandDev::Models::BrandRetrieveByEmailResponse)
      end
      def retrieve_by_email(
        # Email address to retrieve brand data for (e.g., 'contact@example.com'). The
        # domain will be extracted from the email. Free email providers (gmail.com,
        # yahoo.com, etc.) and disposable email addresses are not allowed.
        email:,
        # Optional parameter to force the language of the retrieved brand data.
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
            BrandDev::BrandRetrieveByIsinParams::ForceLanguage::OrSymbol,
          max_age_ms: Integer,
          max_speed: T::Boolean,
          timeout_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(BrandDev::Models::BrandRetrieveByIsinResponse)
      end
      def retrieve_by_isin(
        # ISIN (International Securities Identification Number) to retrieve brand data for
        # (e.g., 'AU000000IMD5', 'US0378331005'). Must be exactly 12 characters: 2 letters
        # followed by 9 alphanumeric characters and ending with a digit.
        isin:,
        # Optional parameter to force the language of the retrieved brand data.
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
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::OrSymbol,
          max_age_ms: Integer,
          max_speed: T::Boolean,
          timeout_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(BrandDev::Models::BrandRetrieveByNameResponse)
      end
      def retrieve_by_name(
        # Company name to retrieve brand data for (e.g., 'Apple Inc', 'Microsoft
        # Corporation'). Must be 3-30 characters.
        name:,
        # Optional country code hint (GL parameter) to specify the country for the company
        # name.
        country_gl: nil,
        # Optional parameter to force the language of the retrieved brand data.
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
            BrandDev::BrandRetrieveByTickerParams::ForceLanguage::OrSymbol,
          max_age_ms: Integer,
          max_speed: T::Boolean,
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
        # Optional parameter to force the language of the retrieved brand data.
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
        # Optional stock exchange for the ticker. Defaults to NASDAQ if not specified.
        ticker_exchange: nil,
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
          max_age_ms: Integer,
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
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        request_options: {}
      )
      end

      # Scrapes the given URL and returns the raw HTML content of the page.
      sig do
        params(
          url: String,
          country: BrandDev::BrandWebScrapeHTMLParams::Country::OrSymbol,
          exclude_selectors: T::Array[String],
          headers: T::Hash[Symbol, String],
          include_frames: T::Boolean,
          include_selectors: T::Array[String],
          max_age_ms: Integer,
          pdf: BrandDev::BrandWebScrapeHTMLParams::Pdf::OrHash,
          settle_animations: T::Boolean,
          timeout_ms: Integer,
          use_main_content_only: T::Boolean,
          wait_for_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(BrandDev::Models::BrandWebScrapeHTMLResponse)
      end
      def web_scrape_html(
        # Full URL to scrape (must include http:// or https:// protocol)
        url:,
        # Two-letter ISO 3166-1 alpha-2 country code for the website request location.
        # When provided, Context.dev fetches the target page from that country.
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
        # PDF parsing controls. Use start/end to limit text extraction and OCR to an
        # inclusive 1-based page range.
        pdf: nil,
        # When true, waits briefly for CSS and transition animations to settle before
        # extracting HTML. Defaults to false. This adds a bit of latency in exchange for
        # more stable output on animated pages.
        settle_animations: nil,
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
        request_options: {}
      )
      end

      # Extract image assets from a web page, including standard URLs, inline SVGs, data
      # URIs, responsive image sources, metadata, CSS backgrounds, video posters, and
      # embeds. The base request costs 1 credit. When enrichment is enabled, the entire
      # call costs 5 credits.
      sig do
        params(
          url: String,
          enrichment: BrandDev::BrandWebScrapeImagesParams::Enrichment::OrHash,
          headers: T::Hash[Symbol, String],
          max_age_ms: Integer,
          timeout_ms: Integer,
          wait_for_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(BrandDev::Models::BrandWebScrapeImagesResponse)
      end
      def web_scrape_images(
        # Page URL to inspect. Must include http:// or https://.
        url:,
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

      # Scrapes the given URL into LLM usable Markdown.
      sig do
        params(
          url: String,
          country: BrandDev::BrandWebScrapeMdParams::Country::OrSymbol,
          exclude_selectors: T::Array[String],
          headers: T::Hash[Symbol, String],
          include_frames: T::Boolean,
          include_images: T::Boolean,
          include_links: T::Boolean,
          include_selectors: T::Array[String],
          max_age_ms: Integer,
          pdf: BrandDev::BrandWebScrapeMdParams::Pdf::OrHash,
          settle_animations: T::Boolean,
          shorten_base64_images: T::Boolean,
          timeout_ms: Integer,
          use_main_content_only: T::Boolean,
          wait_for_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(BrandDev::Models::BrandWebScrapeMdResponse)
      end
      def web_scrape_md(
        # Full URL to scrape into LLM usable Markdown (must include http:// or https://
        # protocol)
        url:,
        # Two-letter ISO 3166-1 alpha-2 country code for the website request location.
        # When provided, Context.dev fetches the target page from that country.
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
        # PDF parsing controls. Use start/end to limit text extraction and OCR to an
        # inclusive 1-based page range.
        pdf: nil,
        # When true, waits briefly for CSS and transition animations to settle before
        # converting to Markdown. Defaults to false. This adds a bit of latency in
        # exchange for more stable output on animated pages.
        settle_animations: nil,
        # Shorten base64-encoded image data in the Markdown output
        shorten_base64_images: nil,
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
        request_options: {}
      )
      end

      # Crawl an entire website's sitemap and return all discovered page URLs.
      sig do
        params(
          domain: String,
          headers: T::Hash[Symbol, String],
          max_links: Integer,
          timeout_ms: Integer,
          url_regex: String,
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
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        # Optional RE2-compatible regex pattern. Only URLs matching this pattern are
        # returned and counted against maxLinks.
        url_regex: nil,
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
