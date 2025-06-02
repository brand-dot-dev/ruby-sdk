# frozen_string_literal: true

require_relative "../test_helper"

class BrandDev::Test::Resources::BrandTest < BrandDev::Test::ResourceTest
  def test_retrieve_required_params
    skip("skipped: tests are disabled for the time being")

    response = @brand_dev.brand.retrieve(domain: "domain")

    assert_pattern do
      response => BrandDev::Models::BrandRetrieveResponse
    end

    assert_pattern do
      response => {
        brand: BrandDev::Models::BrandRetrieveResponse::Brand | nil,
        code: Integer | nil,
        status: String | nil
      }
    end
  end

  def test_ai_query_required_params
    skip("skipped: tests are disabled for the time being")

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
        urls_analyzed: ^(BrandDev::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end

  def test_identify_from_transaction_required_params
    skip("skipped: tests are disabled for the time being")

    response = @brand_dev.brand.identify_from_transaction(transaction_info: "transaction_info")

    assert_pattern do
      response => BrandDev::Models::BrandIdentifyFromTransactionResponse
    end

    assert_pattern do
      response => {
        brand: BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand | nil,
        code: Integer | nil,
        status: String | nil
      }
    end
  end

  def test_retrieve_by_ticker_required_params
    skip("skipped: tests are disabled for the time being")

    response = @brand_dev.brand.retrieve_by_ticker(ticker: "ticker")

    assert_pattern do
      response => BrandDev::Models::BrandRetrieveByTickerResponse
    end

    assert_pattern do
      response => {
        brand: BrandDev::Models::BrandRetrieveByTickerResponse::Brand | nil,
        code: Integer | nil,
        status: String | nil
      }
    end
  end

  def test_retrieve_naics_required_params
    skip("skipped: tests are disabled for the time being")

    response = @brand_dev.brand.retrieve_naics(input: "input")

    assert_pattern do
      response => BrandDev::Models::BrandRetrieveNaicsResponse
    end

    assert_pattern do
      response => {
        codes: ^(BrandDev::Internal::Type::ArrayOf[BrandDev::Models::BrandRetrieveNaicsResponse::Code]) | nil,
        domain: String | nil,
        status: String | nil,
        type: String | nil
      }
    end
  end

  def test_search_required_params
    skip("skipped: tests are disabled for the time being")

    response = @brand_dev.brand.search(query: "query")

    assert_pattern do
      response => ^(BrandDev::Internal::Type::ArrayOf[BrandDev::Models::BrandSearchResponseItem])
    end
  end
end
