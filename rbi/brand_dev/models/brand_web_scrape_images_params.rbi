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

      # Page URL to inspect. Must include http:// or https://.
      sig { returns(String) }
      attr_accessor :url

      # When true, visually duplicate images are removed: every image is loaded and
      # perceptually hashed, and only the highest-resolution copy of each duplicate
      # group is kept. Images that cannot be downloaded or hashed are kept. Default:
      # false.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :dedupe

      sig { params(dedupe: T::Boolean).void }
      attr_writer :dedupe

      # Optional per-image processing, sent as deep-object query params such as
      # enrichment[resolution]=true.
      sig do
        returns(T.nilable(BrandDev::BrandWebScrapeImagesParams::Enrichment))
      end
      attr_reader :enrichment

      sig do
        params(
          enrichment: BrandDev::BrandWebScrapeImagesParams::Enrichment::OrHash
        ).void
      end
      attr_writer :enrichment

      # Optional outbound HTTP headers forwarded only to the target URL, sent as
      # deep-object query params such as headers[X-Custom]=value. When provided, caching
      # is bypassed: the result is neither read from nor written to cache.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :headers

      sig { params(headers: T::Hash[Symbol, String]).void }
      attr_writer :headers

      # Reuse a cached result this many milliseconds old or newer. Default: 86400000 (1
      # day). Set to 0 to bypass cache. Maximum: 2592000000 (30 days).
      sig { returns(T.nilable(Integer)) }
      attr_reader :max_age_ms

      sig { params(max_age_ms: Integer).void }
      attr_writer :max_age_ms

      # Optional comma-separated caller-defined tags for tracking this request. Tags are
      # recorded on the request's usage log and can be used to filter usage on the
      # dashboard usage page. Up to 20 tags, each 1-50 characters.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :tags

      sig { params(tags: T::Array[String]).void }
      attr_writer :tags

      # Optional timeout in milliseconds for the request. If the request takes longer
      # than this value, it will be aborted with a 408 status code. Maximum allowed
      # value is 300000ms (5 minutes).
      sig { returns(T.nilable(Integer)) }
      attr_reader :timeout_ms

      sig { params(timeout_ms: Integer).void }
      attr_writer :timeout_ms

      # Optional browser wait time in milliseconds after initial page load before
      # collecting images. Min: 0. Max: 30000 (30 seconds).
      sig { returns(T.nilable(Integer)) }
      attr_reader :wait_for_ms

      sig { params(wait_for_ms: Integer).void }
      attr_writer :wait_for_ms

      sig do
        params(
          url: String,
          dedupe: T::Boolean,
          enrichment: BrandDev::BrandWebScrapeImagesParams::Enrichment::OrHash,
          headers: T::Hash[Symbol, String],
          max_age_ms: Integer,
          tags: T::Array[String],
          timeout_ms: Integer,
          wait_for_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Page URL to inspect. Must include http:// or https://.
        url:,
        # When true, visually duplicate images are removed: every image is loaded and
        # perceptually hashed, and only the highest-resolution copy of each duplicate
        # group is kept. Images that cannot be downloaded or hashed are kept. Default:
        # false.
        dedupe: nil,
        # Optional per-image processing, sent as deep-object query params such as
        # enrichment[resolution]=true.
        enrichment: nil,
        # Optional outbound HTTP headers forwarded only to the target URL, sent as
        # deep-object query params such as headers[X-Custom]=value. When provided, caching
        # is bypassed: the result is neither read from nor written to cache.
        headers: nil,
        # Reuse a cached result this many milliseconds old or newer. Default: 86400000 (1
        # day). Set to 0 to bypass cache. Maximum: 2592000000 (30 days).
        max_age_ms: nil,
        # Optional comma-separated caller-defined tags for tracking this request. Tags are
        # recorded on the request's usage log and can be used to filter usage on the
        # dashboard usage page. Up to 20 tags, each 1-50 characters.
        tags: nil,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        # Optional browser wait time in milliseconds after initial page load before
        # collecting images. Min: 0. Max: 30000 (30 seconds).
        wait_for_ms: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            url: String,
            dedupe: T::Boolean,
            enrichment: BrandDev::BrandWebScrapeImagesParams::Enrichment,
            headers: T::Hash[Symbol, String],
            max_age_ms: Integer,
            tags: T::Array[String],
            timeout_ms: Integer,
            wait_for_ms: Integer,
            request_options: BrandDev::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Enrichment < BrandDev::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              BrandDev::BrandWebScrapeImagesParams::Enrichment,
              BrandDev::Internal::AnyHash
            )
          end

        # Classify each image by visual asset type.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :classification

        sig { params(classification: T::Boolean).void }
        attr_writer :classification

        # Host materializable images on the Brand.dev CDN and return their URL and MIME
        # type.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :hosted_url

        sig { params(hosted_url: T::Boolean).void }
        attr_writer :hosted_url

        # Per-image enrichment timeout in milliseconds. Default: 30000. Maximum: 60000.
        sig { returns(T.nilable(Integer)) }
        attr_reader :max_time_per_ms

        sig { params(max_time_per_ms: Integer).void }
        attr_writer :max_time_per_ms

        # Measure image width and height when possible.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :resolution

        sig { params(resolution: T::Boolean).void }
        attr_writer :resolution

        # Optional per-image processing, sent as deep-object query params such as
        # enrichment[resolution]=true.
        sig do
          params(
            classification: T::Boolean,
            hosted_url: T::Boolean,
            max_time_per_ms: Integer,
            resolution: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # Classify each image by visual asset type.
          classification: nil,
          # Host materializable images on the Brand.dev CDN and return their URL and MIME
          # type.
          hosted_url: nil,
          # Per-image enrichment timeout in milliseconds. Default: 30000. Maximum: 60000.
          max_time_per_ms: nil,
          # Measure image width and height when possible.
          resolution: nil
        )
        end

        sig do
          override.returns(
            {
              classification: T::Boolean,
              hosted_url: T::Boolean,
              max_time_per_ms: Integer,
              resolution: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
