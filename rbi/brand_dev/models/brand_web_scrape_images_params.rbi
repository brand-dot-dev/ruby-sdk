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
      sig do
        returns(
          T.nilable(
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeImagesParams::Dedupe::OrSymbol
            )
          )
        )
      end
      attr_reader :dedupe

      sig do
        params(
          dedupe:
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeImagesParams::Dedupe::OrSymbol
            )
        ).void
      end
      attr_writer :dedupe

      # Optional per-image processing, sent as deep-object query params such as
      # enrichment[resolution]=true.
      sig do
        returns(T.nilable(BrandDev::BrandWebScrapeImagesParams::Enrichment))
      end
      attr_reader :enrichment

      sig do
        params(
          enrichment:
            T.nilable(BrandDev::BrandWebScrapeImagesParams::Enrichment::OrHash)
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
      attr_accessor :max_age_ms

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
      attr_accessor :wait_for_ms

      sig do
        params(
          url: String,
          dedupe:
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeImagesParams::Dedupe::OrSymbol
            ),
          enrichment:
            T.nilable(BrandDev::BrandWebScrapeImagesParams::Enrichment::OrHash),
          headers: T::Hash[Symbol, String],
          max_age_ms: T.nilable(Integer),
          tags: T::Array[String],
          timeout_ms: Integer,
          wait_for_ms: T.nilable(Integer),
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
            dedupe:
              T.any(
                T::Boolean,
                BrandDev::BrandWebScrapeImagesParams::Dedupe::OrSymbol
              ),
            enrichment:
              T.nilable(BrandDev::BrandWebScrapeImagesParams::Enrichment),
            headers: T::Hash[Symbol, String],
            max_age_ms: T.nilable(Integer),
            tags: T::Array[String],
            timeout_ms: Integer,
            wait_for_ms: T.nilable(Integer),
            request_options: BrandDev::RequestOptions
          }
        )
      end
      def to_hash
      end

      # When true, visually duplicate images are removed: every image is loaded and
      # perceptually hashed, and only the highest-resolution copy of each duplicate
      # group is kept. Images that cannot be downloaded or hashed are kept. Default:
      # false.
      module Dedupe
        extend BrandDev::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              T::Boolean,
              BrandDev::BrandWebScrapeImagesParams::Dedupe::TaggedSymbol
            )
          end

        sig do
          override.returns(
            T::Array[BrandDev::BrandWebScrapeImagesParams::Dedupe::Variants]
          )
        end
        def self.variants
        end

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, BrandDev::BrandWebScrapeImagesParams::Dedupe)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRUE =
          T.let(
            :true,
            BrandDev::BrandWebScrapeImagesParams::Dedupe::TaggedSymbol
          )
        FALSE =
          T.let(
            :false,
            BrandDev::BrandWebScrapeImagesParams::Dedupe::TaggedSymbol
          )
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
        sig do
          returns(
            T.nilable(
              T.any(
                T::Boolean,
                BrandDev::BrandWebScrapeImagesParams::Enrichment::Classification::OrSymbol
              )
            )
          )
        end
        attr_reader :classification

        sig do
          params(
            classification:
              T.any(
                T::Boolean,
                BrandDev::BrandWebScrapeImagesParams::Enrichment::Classification::OrSymbol
              )
          ).void
        end
        attr_writer :classification

        # Host materializable images on the Brand.dev CDN and return their URL and MIME
        # type.
        sig do
          returns(
            T.nilable(
              T.any(
                T::Boolean,
                BrandDev::BrandWebScrapeImagesParams::Enrichment::HostedURL::OrSymbol
              )
            )
          )
        end
        attr_reader :hosted_url

        sig do
          params(
            hosted_url:
              T.any(
                T::Boolean,
                BrandDev::BrandWebScrapeImagesParams::Enrichment::HostedURL::OrSymbol
              )
          ).void
        end
        attr_writer :hosted_url

        # Per-image enrichment timeout in milliseconds. Default: 30000. Maximum: 60000.
        sig { returns(T.nilable(Integer)) }
        attr_reader :max_time_per_ms

        sig { params(max_time_per_ms: Integer).void }
        attr_writer :max_time_per_ms

        # Measure image width and height when possible.
        sig do
          returns(
            T.nilable(
              T.any(
                T::Boolean,
                BrandDev::BrandWebScrapeImagesParams::Enrichment::Resolution::OrSymbol
              )
            )
          )
        end
        attr_reader :resolution

        sig do
          params(
            resolution:
              T.any(
                T::Boolean,
                BrandDev::BrandWebScrapeImagesParams::Enrichment::Resolution::OrSymbol
              )
          ).void
        end
        attr_writer :resolution

        # Optional per-image processing, sent as deep-object query params such as
        # enrichment[resolution]=true.
        sig do
          params(
            classification:
              T.any(
                T::Boolean,
                BrandDev::BrandWebScrapeImagesParams::Enrichment::Classification::OrSymbol
              ),
            hosted_url:
              T.any(
                T::Boolean,
                BrandDev::BrandWebScrapeImagesParams::Enrichment::HostedURL::OrSymbol
              ),
            max_time_per_ms: Integer,
            resolution:
              T.any(
                T::Boolean,
                BrandDev::BrandWebScrapeImagesParams::Enrichment::Resolution::OrSymbol
              )
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
              classification:
                T.any(
                  T::Boolean,
                  BrandDev::BrandWebScrapeImagesParams::Enrichment::Classification::OrSymbol
                ),
              hosted_url:
                T.any(
                  T::Boolean,
                  BrandDev::BrandWebScrapeImagesParams::Enrichment::HostedURL::OrSymbol
                ),
              max_time_per_ms: Integer,
              resolution:
                T.any(
                  T::Boolean,
                  BrandDev::BrandWebScrapeImagesParams::Enrichment::Resolution::OrSymbol
                )
            }
          )
        end
        def to_hash
        end

        # Classify each image by visual asset type.
        module Classification
          extend BrandDev::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                T::Boolean,
                BrandDev::BrandWebScrapeImagesParams::Enrichment::Classification::TaggedSymbol
              )
            end

          sig do
            override.returns(
              T::Array[
                BrandDev::BrandWebScrapeImagesParams::Enrichment::Classification::Variants
              ]
            )
          end
          def self.variants
          end

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                BrandDev::BrandWebScrapeImagesParams::Enrichment::Classification
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TRUE =
            T.let(
              :true,
              BrandDev::BrandWebScrapeImagesParams::Enrichment::Classification::TaggedSymbol
            )
          FALSE =
            T.let(
              :false,
              BrandDev::BrandWebScrapeImagesParams::Enrichment::Classification::TaggedSymbol
            )
        end

        # Host materializable images on the Brand.dev CDN and return their URL and MIME
        # type.
        module HostedURL
          extend BrandDev::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                T::Boolean,
                BrandDev::BrandWebScrapeImagesParams::Enrichment::HostedURL::TaggedSymbol
              )
            end

          sig do
            override.returns(
              T::Array[
                BrandDev::BrandWebScrapeImagesParams::Enrichment::HostedURL::Variants
              ]
            )
          end
          def self.variants
          end

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                BrandDev::BrandWebScrapeImagesParams::Enrichment::HostedURL
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TRUE =
            T.let(
              :true,
              BrandDev::BrandWebScrapeImagesParams::Enrichment::HostedURL::TaggedSymbol
            )
          FALSE =
            T.let(
              :false,
              BrandDev::BrandWebScrapeImagesParams::Enrichment::HostedURL::TaggedSymbol
            )
        end

        # Measure image width and height when possible.
        module Resolution
          extend BrandDev::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                T::Boolean,
                BrandDev::BrandWebScrapeImagesParams::Enrichment::Resolution::TaggedSymbol
              )
            end

          sig do
            override.returns(
              T::Array[
                BrandDev::BrandWebScrapeImagesParams::Enrichment::Resolution::Variants
              ]
            )
          end
          def self.variants
          end

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                BrandDev::BrandWebScrapeImagesParams::Enrichment::Resolution
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TRUE =
            T.let(
              :true,
              BrandDev::BrandWebScrapeImagesParams::Enrichment::Resolution::TaggedSymbol
            )
          FALSE =
            T.let(
              :false,
              BrandDev::BrandWebScrapeImagesParams::Enrichment::Resolution::TaggedSymbol
            )
        end
      end
    end
  end
end
