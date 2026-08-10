# frozen_string_literal: true

require_relative "../test_helper"

class BrandDev::Test::Resources::BrandTest < BrandDev::Test::ResourceTest
  def test_retrieve
    skip("Mock server tests are disabled")

    response = @brand_dev.brand.retrieve

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

  def test_fonts
    skip("Mock server tests are disabled")

    response = @brand_dev.brand.fonts

    assert_pattern do
      response => BrandDev::Models::BrandFontsResponse
    end

    assert_pattern do
      response => {
        code: Integer,
        domain: String,
        fonts: ^(BrandDev::Internal::Type::ArrayOf[BrandDev::Models::BrandFontsResponse::Font]),
        status: String,
        font_links: ^(BrandDev::Internal::Type::HashOf[BrandDev::Models::BrandFontsResponse::FontLink]) | nil,
        key_metadata: BrandDev::Models::BrandFontsResponse::KeyMetadata | nil
      }
    end
  end

  def test_identify_from_transaction_required_params
    skip("Mock server tests are disabled")

    response = @brand_dev.brand.identify_from_transaction(transaction_info: "xxx")

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

  def test_retrieve_naics_required_params
    skip("Mock server tests are disabled")

    response = @brand_dev.brand.retrieve_naics(input: "xxxx")

    assert_pattern do
      response => BrandDev::Models::BrandRetrieveNaicsResponse
    end

    assert_pattern do
      response => {
        codes: ^(BrandDev::Internal::Type::ArrayOf[BrandDev::Models::BrandRetrieveNaicsResponse::Code]) | nil,
        domain: String | nil,
        key_metadata: BrandDev::Models::BrandRetrieveNaicsResponse::KeyMetadata | nil,
        status: String | nil,
        type: String | nil
      }
    end
  end

  def test_retrieve_simplified_required_params
    skip("Mock server tests are disabled")

    response = @brand_dev.brand.retrieve_simplified(domain: "xxx")

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

  def test_screenshot
    skip("Mock server tests are disabled")

    response = @brand_dev.brand.screenshot

    assert_pattern do
      response => BrandDev::Models::BrandScreenshotResponse
    end

    assert_pattern do
      response => {
        code: Integer | nil,
        domain: String | nil,
        height: Integer | nil,
        key_metadata: BrandDev::Models::BrandScreenshotResponse::KeyMetadata | nil,
        screenshot: String | nil,
        screenshot_type: BrandDev::Models::BrandScreenshotResponse::ScreenshotType | nil,
        status: String | nil,
        width: Integer | nil
      }
    end
  end

  def test_styleguide
    skip("Mock server tests are disabled")

    response = @brand_dev.brand.styleguide

    assert_pattern do
      response => BrandDev::Models::BrandStyleguideResponse
    end

    assert_pattern do
      response => {
        code: Integer | nil,
        domain: String | nil,
        key_metadata: BrandDev::Models::BrandStyleguideResponse::KeyMetadata | nil,
        status: String | nil,
        styleguide: BrandDev::Models::BrandStyleguideResponse::Styleguide | nil
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
        metadata: BrandDev::Models::BrandWebScrapeHTMLResponse::Metadata,
        success: BrandDev::Models::BrandWebScrapeHTMLResponse::Success,
        type: BrandDev::Models::BrandWebScrapeHTMLResponse::Type,
        url: String,
        actions_applied: ^(BrandDev::Internal::Type::ArrayOf[BrandDev::Models::BrandWebScrapeHTMLResponse::ActionsApplied]) | nil,
        actions_html_stale: BrandDev::Internal::Type::Boolean | nil,
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
        content_length: Integer,
        markdown: String,
        metadata: BrandDev::Models::BrandWebScrapeMdResponse::Metadata,
        success: BrandDev::Models::BrandWebScrapeMdResponse::Success,
        url: String,
        actions_applied: ^(BrandDev::Internal::Type::ArrayOf[BrandDev::Models::BrandWebScrapeMdResponse::ActionsApplied]) | nil,
        actions_html_stale: BrandDev::Internal::Type::Boolean | nil,
        html: String | nil,
        key_metadata: BrandDev::Models::BrandWebScrapeMdResponse::KeyMetadata | nil
      }
    end
  end

  def test_web_scrape_sitemap_required_params
    skip("Mock server tests are disabled")

    response = @brand_dev.brand.web_scrape_sitemap(domain: "xxx")

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
