# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#web_scrape_md
    class BrandWebScrapeMdResponse < BrandDev::Internal::Type::BaseModel
      # @!attribute markdown
      #   Page content converted to GitHub Flavored Markdown
      #
      #   @return [String]
      required :markdown, String

      # @!attribute success
      #   Indicates success
      #
      #   @return [Boolean, BrandDev::Models::BrandWebScrapeMdResponse::Success]
      required :success, enum: -> { BrandDev::Models::BrandWebScrapeMdResponse::Success }

      # @!attribute url
      #   The URL that was scraped
      #
      #   @return [String]
      required :url, String

      # @!attribute key_metadata
      #   Metadata about the API key used for the request. Included in every response
      #   whenever a valid API key is provided, even when the response status is not 200.
      #
      #   @return [BrandDev::Models::BrandWebScrapeMdResponse::KeyMetadata, nil]
      optional :key_metadata, -> { BrandDev::Models::BrandWebScrapeMdResponse::KeyMetadata }

      # @!method initialize(markdown:, success:, url:, key_metadata: nil)
      #   Some parameter documentations has been truncated, see
      #   {BrandDev::Models::BrandWebScrapeMdResponse} for more details.
      #
      #   @param markdown [String] Page content converted to GitHub Flavored Markdown
      #
      #   @param success [Boolean, BrandDev::Models::BrandWebScrapeMdResponse::Success] Indicates success
      #
      #   @param url [String] The URL that was scraped
      #
      #   @param key_metadata [BrandDev::Models::BrandWebScrapeMdResponse::KeyMetadata] Metadata about the API key used for the request. Included in every response when

      # Indicates success
      #
      # @see BrandDev::Models::BrandWebScrapeMdResponse#success
      module Success
        extend BrandDev::Internal::Type::Enum

        TRUE = true

        # @!method self.values
        #   @return [Array<Boolean>]
      end

      # @see BrandDev::Models::BrandWebScrapeMdResponse#key_metadata
      class KeyMetadata < BrandDev::Internal::Type::BaseModel
        # @!attribute credits_consumed
        #   The number of credits consumed by this request.
        #
        #   @return [Integer]
        required :credits_consumed, Integer

        # @!attribute credits_remaining
        #   The number of credits remaining for your organization after this request.
        #
        #   @return [Integer]
        required :credits_remaining, Integer

        # @!method initialize(credits_consumed:, credits_remaining:)
        #   Metadata about the API key used for the request. Included in every response
        #   whenever a valid API key is provided, even when the response status is not 200.
        #
        #   @param credits_consumed [Integer] The number of credits consumed by this request.
        #
        #   @param credits_remaining [Integer] The number of credits remaining for your organization after this request.
      end
    end
  end
end
