# frozen_string_literal: true

module BrandDev
  module Models
    class Intake < BrandDev::Internal::Type::BaseModel
      # @!attribute duplicates
      #   URLs dropped before reserving because another entry resolved to the same page.
      #   Non-zero for sitemap crawls too, whose sitemaps routinely list a page more than
      #   once.
      #
      #   @return [Integer]
      required :duplicates, Integer

      # @!attribute invalid
      #   URLs from your list rejected as unusable; the same ones are itemised in
      #   `invalid_urls` at submission. Null for a crawl — a crawl that resolves no usable
      #   page is rejected outright with a 400 rather than accepted with an empty list.
      #
      #   @return [Integer, nil]
      required :invalid, Integer, nil?: true

      # @!attribute reserved
      #   Pages credits were reserved for. Everything else — progress, the refund, the
      #   completion percentage — is measured against this.
      #
      #   @return [Integer]
      required :reserved, Integer

      # @!attribute reserved_is_ceiling
      #   Whether `reserved` is an upper bound the batch may finish under. True only for a
      #   crawl that follows links, whose reachable page count is unknowable until it
      #   runs. False for a scrape and for a sitemap crawl, where `reserved` is an exact
      #   page count.
      #
      #   @return [Boolean]
      required :reserved_is_ceiling, BrandDev::Internal::Type::Boolean

      # @!attribute submitted
      #   URLs in the list you sent, before validation and de-duplication. Null for a
      #   crawl, which is given a source rather than a list.
      #
      #   @return [Integer, nil]
      required :submitted, Integer, nil?: true

      # @!method initialize(duplicates:, invalid:, reserved:, reserved_is_ceiling:, submitted:)
      #   Some parameter documentations has been truncated, see {BrandDev::Models::Intake}
      #   for more details.
      #
      #   What submission took in, and what it charged for.
      #
      #   @param duplicates [Integer] URLs dropped before reserving because another entry resolved to the same page. N
      #
      #   @param invalid [Integer, nil] URLs from your list rejected as unusable; the same ones are itemised in `invalid
      #
      #   @param reserved [Integer] Pages credits were reserved for. Everything else — progress, the refund, the com
      #
      #   @param reserved_is_ceiling [Boolean] Whether `reserved` is an upper bound the batch may finish under. True only for a
      #
      #   @param submitted [Integer, nil] URLs in the list you sent, before validation and de-duplication. Null for a craw
    end
  end
end
