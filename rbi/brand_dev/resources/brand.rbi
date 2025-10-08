# typed: strong

module BrandDev
  module Resources
    class Brand
      # Retrieve brand information using one of three methods: domain name, company
      # name, or stock ticker symbol. Exactly one of these parameters must be provided.
      sig do
        params(
          domain: String,
          force_language:
            BrandDev::BrandRetrieveParams::ForceLanguage::OrSymbol,
          max_speed: T::Boolean,
          name: String,
          ticker: String,
          timeout_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(BrandDev::Models::BrandRetrieveResponse)
      end
      def retrieve(
        # Domain name to retrieve brand data for (e.g., 'example.com', 'google.com').
        # Cannot be used with name or ticker parameters.
        domain: nil,
        # Optional parameter to force the language of the retrieved brand data. Works with
        # all three lookup methods.
        force_language: nil,
        # Optional parameter to optimize the API call for maximum speed. When set to true,
        # the API will skip time-consuming operations for faster response at the cost of
        # less comprehensive data. Works with all three lookup methods.
        max_speed: nil,
        # Company name to retrieve brand data for (e.g., 'Apple Inc', 'Microsoft
        # Corporation'). Must be 3-30 characters. Cannot be used with domain or ticker
        # parameters.
        name: nil,
        # Stock ticker symbol to retrieve brand data for (e.g., 'AAPL', 'GOOGL', 'BRK.A').
        # Must be 1-15 characters, letters/numbers/dots only. Cannot be used with domain
        # or name parameters.
        ticker: nil,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        request_options: {}
      )
      end

      # Beta feature: Use AI to extract specific data points from a brand's website. The
      # AI will crawl the website and extract the requested information based on the
      # provided data points.
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
          timeout_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(BrandDev::Models::BrandIdentifyFromTransactionResponse)
      end
      def identify_from_transaction(
        # Transaction information to identify the brand
        transaction_info:,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        request_options: {}
      )
      end

      # Signal that you may fetch brand data for a particular domain soon to improve
      # latency. This endpoint does not charge credits and is available for paid
      # customers to optimize future requests. [You must be on a paid plan to use this
      # endpoint]
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

      # Endpoint to classify any brand into a 2022 NAICS code.
      sig do
        params(
          input: String,
          timeout_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(BrandDev::Models::BrandRetrieveNaicsResponse)
      end
      def retrieve_naics(
        # Brand domain or title to retrieve NAICS code for. If a valid domain is provided
        # in `input`, it will be used for classification, otherwise, we will search for
        # the brand using the provided title.
        input:,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        request_options: {}
      )
      end

      # Returns a simplified version of brand data containing only essential
      # information: domain, title, colors, logos, and backdrops. This endpoint is
      # optimized for faster responses and reduced data transfer.
      sig do
        params(
          domain: String,
          timeout_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(BrandDev::Models::BrandRetrieveSimplifiedResponse)
      end
      def retrieve_simplified(
        # Domain name to retrieve simplified brand data for
        domain:,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        request_options: {}
      )
      end

      # Beta feature: Capture a screenshot of a website. Supports both viewport
      # (standard browser view) and full-page screenshots. Can also screenshot specific
      # page types (login, pricing, etc.) by using heuristics to find the appropriate
      # URL. Returns a URL to the uploaded screenshot image hosted on our CDN.
      sig do
        params(
          domain: String,
          full_screenshot:
            BrandDev::BrandScreenshotParams::FullScreenshot::OrSymbol,
          page: BrandDev::BrandScreenshotParams::Page::OrSymbol,
          prioritize: BrandDev::BrandScreenshotParams::Prioritize::OrSymbol,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(BrandDev::Models::BrandScreenshotResponse)
      end
      def screenshot(
        # Domain name to take screenshot of (e.g., 'example.com', 'google.com'). The
        # domain will be automatically normalized and validated.
        domain:,
        # Optional parameter to determine screenshot type. If 'true', takes a full page
        # screenshot capturing all content. If 'false' or not provided, takes a viewport
        # screenshot (standard browser view).
        full_screenshot: nil,
        # Optional parameter to specify which page type to screenshot. If provided, the
        # system will scrape the domain's links and use heuristics to find the most
        # appropriate URL for the specified page type (30 supported languages). If not
        # provided, screenshots the main domain landing page.
        page: nil,
        # Optional parameter to prioritize screenshot capture. If 'speed', optimizes for
        # faster capture with basic quality. If 'quality', optimizes for higher quality
        # with longer wait times. Defaults to 'quality' if not provided.
        prioritize: nil,
        request_options: {}
      )
      end

      # Beta feature: Automatically extract comprehensive design system information from
      # a brand's website including colors, typography, spacing, shadows, and UI
      # components.
      sig do
        params(
          domain: String,
          prioritize: BrandDev::BrandStyleguideParams::Prioritize::OrSymbol,
          timeout_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(BrandDev::Models::BrandStyleguideResponse)
      end
      def styleguide(
        # Domain name to extract styleguide from (e.g., 'example.com', 'google.com'). The
        # domain will be automatically normalized and validated.
        domain:,
        # Optional parameter to prioritize screenshot capture for styleguide extraction.
        # If 'speed', optimizes for faster capture with basic quality. If 'quality',
        # optimizes for higher quality with longer wait times. Defaults to 'quality' if
        # not provided.
        prioritize: nil,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
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
