# frozen_string_literal: true

require_relative "../test_helper"

class BrandDev::Test::Resources::BrandTest < BrandDev::Test::ResourceTest
  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response = @brand_dev.brand.retrieve(domain: "domain")

    assert_pattern do
      response => BrandDev::Models::BrandRetrieveResponse
    end

    assert_pattern do
      response => {
        brand: BrandDev::Models::BrandRetrieveResponse::Brand | nil,
        code: Integer | nil,
        key_metadata: BrandDev::Models::BrandRetrieveResponse::KeyMetadata | nil,
        status: String | nil
      }
    end
  end

  def test_ai_product_required_params
    skip("Mock server tests are disabled")

    response = @brand_dev.brand.ai_product(url: "https://example.com")

    assert_pattern do
      response => BrandDev::Models::BrandAIProductResponse
    end

    assert_pattern do
      response => {
        is_product_page: BrandDev::Internal::Type::Boolean | nil,
        key_metadata: BrandDev::Models::BrandAIProductResponse::KeyMetadata | nil,
        platform: BrandDev::Models::BrandAIProductResponse::Platform | nil,
        product: BrandDev::Models::BrandAIProductResponse::Product | nil
      }
    end
  end

  def test_ai_products_required_params
    skip("Mock server tests are disabled")

    response = @brand_dev.brand.ai_products(body: {domain: "domain"})

    assert_pattern do
      response => BrandDev::Models::BrandAIProductsResponse
    end

    assert_pattern do
      response => {
        key_metadata: BrandDev::Models::BrandAIProductsResponse::KeyMetadata | nil,
        products: ^(BrandDev::Internal::Type::ArrayOf[BrandDev::Models::BrandAIProductsResponse::Product]) | nil
      }
    end
  end

  def test_ai_query_required_params
    skip("Mock server tests are disabled")

    response =
      @brand_dev.brand.ai_query(
        data_to_extract: [
          {
            datapoint_description: "datapoint_description",
            datapoint_example: "datapoint_example",
            datapoint_name: "datapoint_name",
            datapoint_type: :text
          }
        ],
        domain: "domain"
      )

    assert_pattern do
      response => BrandDev::Models::BrandAIQueryResponse
    end

    assert_pattern do
      response => {
        data_extracted: ^(BrandDev::Internal::Type::ArrayOf[BrandDev::Models::BrandAIQueryResponse::DataExtracted]) | nil,
        domain: String | nil,
        key_metadata: BrandDev::Models::BrandAIQueryResponse::KeyMetadata | nil,
        status: String | nil,
        urls_analyzed: ^(BrandDev::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_identify_from_transaction_required_params
    skip("Mock server tests are disabled")

    response = @brand_dev.brand.identify_from_transaction(transaction_info: "transaction_info")

    assert_pattern do
      response => BrandDev::Models::BrandIdentifyFromTransactionResponse
    end

    assert_pattern do
      response => {
        brand: BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand | nil,
        code: Integer | nil,
        key_metadata: BrandDev::Models::BrandIdentifyFromTransactionResponse::KeyMetadata | nil,
        status: String | nil
      }
    end
  end

  def test_prefetch_required_params
    skip("Mock server tests are disabled")

    response = @brand_dev.brand.prefetch(domain: "domain")

    assert_pattern do
      response => BrandDev::Models::BrandPrefetchResponse
    end

    assert_pattern do
      response => {
        domain: String | nil,
        key_metadata: BrandDev::Models::BrandPrefetchResponse::KeyMetadata | nil,
        message: String | nil,
        status: String | nil
      }
    end
  end

  def test_prefetch_by_email_required_params
    skip("Mock server tests are disabled")

    response = @brand_dev.brand.prefetch_by_email(email: "dev@stainless.com")

    assert_pattern do
      response => BrandDev::Models::BrandPrefetchByEmailResponse
    end

    assert_pattern do
      response => {
        domain: String | nil,
        key_metadata: BrandDev::Models::BrandPrefetchByEmailResponse::KeyMetadata | nil,
        message: String | nil,
        status: String | nil
      }
    end
  end

  def test_retrieve_by_email_required_params
    skip("Mock server tests are disabled")

    response = @brand_dev.brand.retrieve_by_email(email: "dev@stainless.com")

    assert_pattern do
      response => BrandDev::Models::BrandRetrieveByEmailResponse
    end

    assert_pattern do
      response => {
        brand: BrandDev::Models::BrandRetrieveByEmailResponse::Brand | nil,
        code: Integer | nil,
        key_metadata: BrandDev::Models::BrandRetrieveByEmailResponse::KeyMetadata | nil,
        status: String | nil
      }
    end
  end

  def test_retrieve_by_isin_required_params
    skip("Mock server tests are disabled")

    response = @brand_dev.brand.retrieve_by_isin(isin: "SE60513A9993")

    assert_pattern do
      response => BrandDev::Models::BrandRetrieveByIsinResponse
    end

    assert_pattern do
      response => {
        brand: BrandDev::Models::BrandRetrieveByIsinResponse::Brand | nil,
        code: Integer | nil,
        key_metadata: BrandDev::Models::BrandRetrieveByIsinResponse::KeyMetadata | nil,
        status: String | nil
      }
    end
  end

  def test_retrieve_by_name_required_params
    skip("Mock server tests are disabled")

    response = @brand_dev.brand.retrieve_by_name(name: "xxx")

    assert_pattern do
      response => BrandDev::Models::BrandRetrieveByNameResponse
    end

    assert_pattern do
      response => {
        brand: BrandDev::Models::BrandRetrieveByNameResponse::Brand | nil,
        code: Integer | nil,
        key_metadata: BrandDev::Models::BrandRetrieveByNameResponse::KeyMetadata | nil,
        status: String | nil
      }
    end
  end

  def test_retrieve_by_ticker_required_params
    skip("Mock server tests are disabled")

    response = @brand_dev.brand.retrieve_by_ticker(ticker: "ticker")

    assert_pattern do
      response => BrandDev::Models::BrandRetrieveByTickerResponse
    end

    assert_pattern do
      response => {
        brand: BrandDev::Models::BrandRetrieveByTickerResponse::Brand | nil,
        code: Integer | nil,
        key_metadata: BrandDev::Models::BrandRetrieveByTickerResponse::KeyMetadata | nil,
        status: String | nil
      }
    end
  end

  def test_retrieve_simplified_required_params
    skip("Mock server tests are disabled")

    response = @brand_dev.brand.retrieve_simplified(domain: "domain")

    assert_pattern do
      response => BrandDev::Models::BrandRetrieveSimplifiedResponse
    end

    assert_pattern do
      response => {
        brand: BrandDev::Models::BrandRetrieveSimplifiedResponse::Brand | nil,
        code: Integer | nil,
        key_metadata: BrandDev::Models::BrandRetrieveSimplifiedResponse::KeyMetadata | nil,
        status: String | nil
      }
    end
  end

  def test_web_scrape_html_required_params
    skip("Mock server tests are disabled")

    response = @brand_dev.brand.web_scrape_html(url: "https://example.com")

    assert_pattern do
      response => BrandDev::Models::BrandWebScrapeHTMLResponse
    end

    assert_pattern do
      response => {
        html: String,
        success: BrandDev::Models::BrandWebScrapeHTMLResponse::Success,
        type: BrandDev::Models::BrandWebScrapeHTMLResponse::Type,
        url: String,
        key_metadata: BrandDev::Models::BrandWebScrapeHTMLResponse::KeyMetadata | nil
      }
    end
  end

  def test_web_scrape_images_required_params
    skip("Mock server tests are disabled")

    response = @brand_dev.brand.web_scrape_images(url: "https://example.com")

    assert_pattern do
      response => BrandDev::Models::BrandWebScrapeImagesResponse
    end

    assert_pattern do
      response => {
        images: ^(BrandDev::Internal::Type::ArrayOf[BrandDev::Models::BrandWebScrapeImagesResponse::Image]),
        success: BrandDev::Models::BrandWebScrapeImagesResponse::Success,
        url: String,
        key_metadata: BrandDev::Models::BrandWebScrapeImagesResponse::KeyMetadata | nil
      }
    end
  end

  def test_web_scrape_md_required_params
    skip("Mock server tests are disabled")

    response = @brand_dev.brand.web_scrape_md(url: "https://example.com")

    assert_pattern do
      response => BrandDev::Models::BrandWebScrapeMdResponse
    end

    assert_pattern do
      response => {
        markdown: String,
        success: BrandDev::Models::BrandWebScrapeMdResponse::Success,
        url: String,
        key_metadata: BrandDev::Models::BrandWebScrapeMdResponse::KeyMetadata | nil
      }
    end
  end

  def test_web_scrape_sitemap_required_params
    skip("Mock server tests are disabled")

    response = @brand_dev.brand.web_scrape_sitemap(domain: "domain")

    assert_pattern do
      response => BrandDev::Models::BrandWebScrapeSitemapResponse
    end

    assert_pattern do
      response => {
        domain: String,
        meta: BrandDev::Models::BrandWebScrapeSitemapResponse::Meta,
        success: BrandDev::Models::BrandWebScrapeSitemapResponse::Success,
        urls: ^(BrandDev::Internal::Type::ArrayOf[String]),
        key_metadata: BrandDev::Models::BrandWebScrapeSitemapResponse::KeyMetadata | nil
      }
    end
  end
end
