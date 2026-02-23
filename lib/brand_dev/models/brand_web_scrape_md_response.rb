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

      # @!method initialize(markdown:, success:, url:)
      #   @param markdown [String] Page content converted to GitHub Flavored Markdown
      #
      #   @param success [Boolean, BrandDev::Models::BrandWebScrapeMdResponse::Success] Indicates success
      #
      #   @param url [String] The URL that was scraped

      # Indicates success
      #
      # @see BrandDev::Models::BrandWebScrapeMdResponse#success
      module Success
        extend BrandDev::Internal::Type::Enum

        TRUE = true

        # @!method self.values
        #   @return [Array<Boolean>]
      end
    end
  end
end
