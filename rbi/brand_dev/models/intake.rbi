# typed: strong

module BrandDev
  module Models
    class Intake < BrandDev::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(BrandDev::Intake, BrandDev::Internal::AnyHash) }

      # URLs dropped before reserving because another entry resolved to the same page.
      # Non-zero for sitemap crawls too, whose sitemaps routinely list a page more than
      # once.
      sig { returns(Integer) }
      attr_accessor :duplicates

      # URLs from your list rejected as unusable; the same ones are itemised in
      # `invalid_urls` at submission. Null for a crawl — a crawl that resolves no usable
      # page is rejected outright with a 400 rather than accepted with an empty list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :invalid

      # Pages credits were reserved for. Everything else — progress, the refund, the
      # completion percentage — is measured against this.
      sig { returns(Integer) }
      attr_accessor :reserved

      # Whether `reserved` is an upper bound the batch may finish under. True only for a
      # crawl that follows links, whose reachable page count is unknowable until it
      # runs. False for a scrape and for a sitemap crawl, where `reserved` is an exact
      # page count.
      sig { returns(T::Boolean) }
      attr_accessor :reserved_is_ceiling

      # URLs in the list you sent, before validation and de-duplication. Null for a
      # crawl, which is given a source rather than a list.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :submitted

      # What submission took in, and what it charged for.
      sig do
        params(
          duplicates: Integer,
          invalid: T.nilable(Integer),
          reserved: Integer,
          reserved_is_ceiling: T::Boolean,
          submitted: T.nilable(Integer)
        ).returns(T.attached_class)
      end
      def self.new(
        # URLs dropped before reserving because another entry resolved to the same page.
        # Non-zero for sitemap crawls too, whose sitemaps routinely list a page more than
        # once.
        duplicates:,
        # URLs from your list rejected as unusable; the same ones are itemised in
        # `invalid_urls` at submission. Null for a crawl — a crawl that resolves no usable
        # page is rejected outright with a 400 rather than accepted with an empty list.
        invalid:,
        # Pages credits were reserved for. Everything else — progress, the refund, the
        # completion percentage — is measured against this.
        reserved:,
        # Whether `reserved` is an upper bound the batch may finish under. True only for a
        # crawl that follows links, whose reachable page count is unknowable until it
        # runs. False for a scrape and for a sitemap crawl, where `reserved` is an exact
        # page count.
        reserved_is_ceiling:,
        # URLs in the list you sent, before validation and de-duplication. Null for a
        # crawl, which is given a source rather than a list.
        submitted:
      )
      end

      sig do
        override.returns(
          {
            duplicates: Integer,
            invalid: T.nilable(Integer),
            reserved: Integer,
            reserved_is_ceiling: T::Boolean,
            submitted: T.nilable(Integer)
          }
        )
      end
      def to_hash
      end
    end
  end
end
