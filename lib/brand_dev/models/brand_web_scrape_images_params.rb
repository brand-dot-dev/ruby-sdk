# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#web_scrape_images
    class BrandWebScrapeImagesParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      # @!attribute url
      #   Page URL to inspect. Must include http:// or https://.
      #
      #   @return [String]
      required :url, String

      # @!attribute dedupe
      #   When true, visually duplicate images are removed: every image is loaded and
      #   perceptually hashed, and only the highest-resolution copy of each duplicate
      #   group is kept. Images that cannot be downloaded or hashed are kept. Default:
      #   false.
      #
      #   @return [Boolean, Symbol, BrandDev::Models::BrandWebScrapeImagesParams::Dedupe, nil]
      optional :dedupe, union: -> { BrandDev::BrandWebScrapeImagesParams::Dedupe }

      # @!attribute enrichment
      #   Optional per-image processing, sent as deep-object query params such as
      #   enrichment[resolution]=true.
      #
      #   @return [BrandDev::Models::BrandWebScrapeImagesParams::Enrichment, nil]
      optional :enrichment, -> { BrandDev::BrandWebScrapeImagesParams::Enrichment }, nil?: true

      # @!attribute headers
      #   Optional outbound HTTP headers forwarded only to the target URL, sent as
      #   deep-object query params such as headers[X-Custom]=value. When provided, caching
      #   is bypassed: the result is neither read from nor written to cache.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :headers, BrandDev::Internal::Type::HashOf[String]

      # @!attribute max_age_ms
      #   Reuse a cached result this many milliseconds old or newer. Default: 86400000 (1
      #   day). Set to 0 to bypass cache. Maximum: 2592000000 (30 days).
      #
      #   @return [Integer, nil]
      optional :max_age_ms, Integer, nil?: true

      # @!attribute tags
      #   Optional comma-separated caller-defined tags for tracking this request. Tags are
      #   recorded on the request's usage log and can be used to filter usage on the
      #   dashboard usage page. Up to 20 tags, each 1-50 characters.
      #
      #   @return [Array<String>, nil]
      optional :tags, BrandDev::Internal::Type::ArrayOf[String]

      # @!attribute timeout_ms
      #   Optional timeout in milliseconds for the request. If the request takes longer
      #   than this value, it will be aborted with a 408 status code. Maximum allowed
      #   value is 300000ms (5 minutes).
      #
      #   @return [Integer, nil]
      optional :timeout_ms, Integer

      # @!attribute wait_for_ms
      #   Optional browser wait time in milliseconds after initial page load before
      #   collecting images. Min: 0. Max: 30000 (30 seconds).
      #
      #   @return [Integer, nil]
      optional :wait_for_ms, Integer, nil?: true

      # @!method initialize(url:, dedupe: nil, enrichment: nil, headers: nil, max_age_ms: nil, tags: nil, timeout_ms: nil, wait_for_ms: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {BrandDev::Models::BrandWebScrapeImagesParams} for more details.
      #
      #   @param url [String] Page URL to inspect. Must include http:// or https://.
      #
      #   @param dedupe [Boolean, Symbol, BrandDev::Models::BrandWebScrapeImagesParams::Dedupe] When true, visually duplicate images are removed: every image is loaded and perc
      #
      #   @param enrichment [BrandDev::Models::BrandWebScrapeImagesParams::Enrichment, nil] Optional per-image processing, sent as deep-object query params such as enrichme
      #
      #   @param headers [Hash{Symbol=>String}] Optional outbound HTTP headers forwarded only to the target URL, sent as deep-ob
      #
      #   @param max_age_ms [Integer, nil] Reuse a cached result this many milliseconds old or newer. Default: 86400000 (1
      #
      #   @param tags [Array<String>] Optional comma-separated caller-defined tags for tracking this request. Tags are
      #
      #   @param timeout_ms [Integer] Optional timeout in milliseconds for the request. If the request takes longer th
      #
      #   @param wait_for_ms [Integer, nil] Optional browser wait time in milliseconds after initial page load before collec
      #
      #   @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}]

      # When true, visually duplicate images are removed: every image is loaded and
      # perceptually hashed, and only the highest-resolution copy of each duplicate
      # group is kept. Images that cannot be downloaded or hashed are kept. Default:
      # false.
      module Dedupe
        extend BrandDev::Internal::Type::Union

        variant BrandDev::Internal::Type::Boolean

        variant const: -> { BrandDev::Models::BrandWebScrapeImagesParams::Dedupe::TRUE }

        variant const: -> { BrandDev::Models::BrandWebScrapeImagesParams::Dedupe::FALSE }

        # @!method self.variants
        #   @return [Array(Boolean, Symbol)]

        define_sorbet_constant!(:Variants) do
          T.type_alias { T.any(T::Boolean, BrandDev::BrandWebScrapeImagesParams::Dedupe::TaggedSymbol) }
        end

        # @!group

        TRUE = :true
        FALSE = :false

        # @!endgroup
      end

      class Enrichment < BrandDev::Internal::Type::BaseModel
        # @!attribute classification
        #   Classify each image by visual asset type.
        #
        #   @return [Boolean, Symbol, BrandDev::Models::BrandWebScrapeImagesParams::Enrichment::Classification, nil]
        optional :classification, union: -> { BrandDev::BrandWebScrapeImagesParams::Enrichment::Classification }

        # @!attribute hosted_url
        #   Host materializable images on the Brand.dev CDN and return their URL and MIME
        #   type.
        #
        #   @return [Boolean, Symbol, BrandDev::Models::BrandWebScrapeImagesParams::Enrichment::HostedURL, nil]
        optional :hosted_url,
                 union: -> { BrandDev::BrandWebScrapeImagesParams::Enrichment::HostedURL },
                 api_name: :hostedUrl

        # @!attribute max_time_per_ms
        #   Per-image enrichment timeout in milliseconds. Default: 30000. Maximum: 60000.
        #
        #   @return [Integer, nil]
        optional :max_time_per_ms, Integer, api_name: :maxTimePerMs

        # @!attribute resolution
        #   Measure image width and height when possible.
        #
        #   @return [Boolean, Symbol, BrandDev::Models::BrandWebScrapeImagesParams::Enrichment::Resolution, nil]
        optional :resolution, union: -> { BrandDev::BrandWebScrapeImagesParams::Enrichment::Resolution }

        # @!method initialize(classification: nil, hosted_url: nil, max_time_per_ms: nil, resolution: nil)
        #   Some parameter documentations has been truncated, see
        #   {BrandDev::Models::BrandWebScrapeImagesParams::Enrichment} for more details.
        #
        #   Optional per-image processing, sent as deep-object query params such as
        #   enrichment[resolution]=true.
        #
        #   @param classification [Boolean, Symbol, BrandDev::Models::BrandWebScrapeImagesParams::Enrichment::Classification] Classify each image by visual asset type.
        #
        #   @param hosted_url [Boolean, Symbol, BrandDev::Models::BrandWebScrapeImagesParams::Enrichment::HostedURL] Host materializable images on the Brand.dev CDN and return their URL and MIME ty
        #
        #   @param max_time_per_ms [Integer] Per-image enrichment timeout in milliseconds. Default: 30000. Maximum: 60000.
        #
        #   @param resolution [Boolean, Symbol, BrandDev::Models::BrandWebScrapeImagesParams::Enrichment::Resolution] Measure image width and height when possible.

        # Classify each image by visual asset type.
        #
        # @see BrandDev::Models::BrandWebScrapeImagesParams::Enrichment#classification
        module Classification
          extend BrandDev::Internal::Type::Union

          variant BrandDev::Internal::Type::Boolean

          variant const: -> { BrandDev::Models::BrandWebScrapeImagesParams::Enrichment::Classification::TRUE }

          variant const: -> { BrandDev::Models::BrandWebScrapeImagesParams::Enrichment::Classification::FALSE }

          # @!method self.variants
          #   @return [Array(Boolean, Symbol)]

          define_sorbet_constant!(:Variants) do
            T.type_alias { T.any(T::Boolean, BrandDev::BrandWebScrapeImagesParams::Enrichment::Classification::TaggedSymbol) }
          end

          # @!group

          TRUE = :true
          FALSE = :false

          # @!endgroup
        end

        # Host materializable images on the Brand.dev CDN and return their URL and MIME
        # type.
        #
        # @see BrandDev::Models::BrandWebScrapeImagesParams::Enrichment#hosted_url
        module HostedURL
          extend BrandDev::Internal::Type::Union

          variant BrandDev::Internal::Type::Boolean

          variant const: -> { BrandDev::Models::BrandWebScrapeImagesParams::Enrichment::HostedURL::TRUE }

          variant const: -> { BrandDev::Models::BrandWebScrapeImagesParams::Enrichment::HostedURL::FALSE }

          # @!method self.variants
          #   @return [Array(Boolean, Symbol)]

          define_sorbet_constant!(:Variants) do
            T.type_alias { T.any(T::Boolean, BrandDev::BrandWebScrapeImagesParams::Enrichment::HostedURL::TaggedSymbol) }
          end

          # @!group

          TRUE = :true
          FALSE = :false

          # @!endgroup
        end

        # Measure image width and height when possible.
        #
        # @see BrandDev::Models::BrandWebScrapeImagesParams::Enrichment#resolution
        module Resolution
          extend BrandDev::Internal::Type::Union

          variant BrandDev::Internal::Type::Boolean

          variant const: -> { BrandDev::Models::BrandWebScrapeImagesParams::Enrichment::Resolution::TRUE }

          variant const: -> { BrandDev::Models::BrandWebScrapeImagesParams::Enrichment::Resolution::FALSE }

          # @!method self.variants
          #   @return [Array(Boolean, Symbol)]

          define_sorbet_constant!(:Variants) do
            T.type_alias { T.any(T::Boolean, BrandDev::BrandWebScrapeImagesParams::Enrichment::Resolution::TaggedSymbol) }
          end

          # @!group

          TRUE = :true
          FALSE = :false

          # @!endgroup
        end
      end
    end
  end
end
