# typed: strong

module BrandDev
  module Models
    class BrandWebScrapeImagesParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            BrandDev::BrandWebScrapeImagesParams,
            BrandDev::Internal::AnyHash
          )
        end

      # Full URL to scrape images from (must include http:// or https:// protocol)
      sig { returns(String) }
      attr_accessor :url

      sig do
        params(
          url: String,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Full URL to scrape images from (must include http:// or https:// protocol)
        url:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { url: String, request_options: BrandDev::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
