# typed: strong

module BrandDev
  module Resources
    class Brand
      # Retrieve brand data by domain
      sig do
        params(
          domain: String,
          force_language:
            BrandDev::BrandRetrieveParams::ForceLanguage::OrSymbol,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(BrandDev::Models::BrandRetrieveResponse)
      end
      def retrieve(
        # Domain name to retrieve brand data for
        domain:,
        # Optional parameter to force the language of the retrieved brand data
        force_language: nil,
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
          specific_pages: T::Array[String],
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(BrandDev::Models::BrandAIQueryResponse)
      end
      def ai_query(
        # Array of data points to extract from the website
        data_to_extract:,
        # The domain name to analyze
        domain:,
        # Optional array of specific pages to analyze
        specific_pages: nil,
        request_options: {}
      )
      end

      # Endpoint specially designed for platforms that want to identify transaction data
      # by the transaction title.
      sig do
        params(
          transaction_info: String,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(BrandDev::Models::BrandIdentifyFromTransactionResponse)
      end
      def identify_from_transaction(
        # Transaction information to identify the brand
        transaction_info:,
        request_options: {}
      )
      end

      # Retrieve brand data by stock ticker (e.g. AAPL, TSLA, etc.)
      sig do
        params(
          ticker: String,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(BrandDev::Models::BrandRetrieveByTickerResponse)
      end
      def retrieve_by_ticker(
        # Stock ticker symbol to retrieve brand data for (e.g. AAPL, TSLA, etc.)
        ticker:,
        request_options: {}
      )
      end

      # Endpoint to classify any brand into a 2022 NAICS code.
      sig do
        params(
          input: String,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(BrandDev::Models::BrandRetrieveNaicsResponse)
      end
      def retrieve_naics(
        # Brand domain or title to retrieve NAICS code for. If a valid domain is provided
        # in `input`, it will be used for classification, otherwise, we will search for
        # the brand using the provided title.
        input:,
        request_options: {}
      )
      end

      # Search brands by query
      sig do
        params(
          query: String,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(T::Array[BrandDev::Models::BrandSearchResponseItem])
      end
      def search(
        # Query string to search brands
        query:,
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
