# typed: strong

module BrandDev
  module Models
    class BrandWebScrapeMdParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(BrandDev::BrandWebScrapeMdParams, BrandDev::Internal::AnyHash)
        end

      # Full URL to scrape and convert to markdown (must include http:// or https://
      # protocol)
      sig { returns(String) }
      attr_accessor :url

      # Include image references in Markdown output
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_images

      sig { params(include_images: T::Boolean).void }
      attr_writer :include_images

      # Preserve hyperlinks in Markdown output
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_links

      sig { params(include_links: T::Boolean).void }
      attr_writer :include_links

      sig do
        params(
          url: String,
          include_images: T::Boolean,
          include_links: T::Boolean,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Full URL to scrape and convert to markdown (must include http:// or https://
        # protocol)
        url:,
        # Include image references in Markdown output
        include_images: nil,
        # Preserve hyperlinks in Markdown output
        include_links: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            url: String,
            include_images: T::Boolean,
            include_links: T::Boolean,
            request_options: BrandDev::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
