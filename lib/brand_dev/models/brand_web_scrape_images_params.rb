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

      # @!attribute actions
      #   Optional browser actions executed in array order after the page loads and before
      #   content is captured. Requires a paid plan. Send a JSON array in the query
      #   parameter. Maximum: 5 actions.
      #
      #   @return [Array<BrandDev::Models::BrandWebScrapeImagesParams::Action::Wait, BrandDev::Models::BrandWebScrapeImagesParams::Action::Perform, BrandDev::Models::BrandWebScrapeImagesParams::Action::Scroll>, nil]
      optional :actions,
               -> { BrandDev::Internal::Type::ArrayOf[union: BrandDev::BrandWebScrapeImagesParams::Action] },
               nil?: true

      # @!attribute dedupe
      #   When true, visually duplicate images are removed: every image is loaded and
      #   perceptually hashed, and only the highest-resolution copy of each duplicate
      #   group is kept. Images that cannot be downloaded or hashed are kept. Default:
      #   false.
      #
      #   @return [Boolean, nil]
      optional :dedupe, BrandDev::Internal::Type::Boolean

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

      # @!method initialize(url:, actions: nil, dedupe: nil, enrichment: nil, headers: nil, max_age_ms: nil, tags: nil, timeout_ms: nil, wait_for_ms: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {BrandDev::Models::BrandWebScrapeImagesParams} for more details.
      #
      #   @param url [String] Page URL to inspect. Must include http:// or https://.
      #
      #   @param actions [Array<BrandDev::Models::BrandWebScrapeImagesParams::Action::Wait, BrandDev::Models::BrandWebScrapeImagesParams::Action::Perform, BrandDev::Models::BrandWebScrapeImagesParams::Action::Scroll>, nil] Optional browser actions executed in array order after the page loads and before
      #
      #   @param dedupe [Boolean] When true, visually duplicate images are removed: every image is loaded and perc
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

      # Browser action discriminated by `do`. Each variant exposes only its applicable
      # fields.
      module Action
        extend BrandDev::Internal::Type::Union

        discriminator :do

        # Pause for a fixed number of milliseconds before continuing to the next action.
        variant :wait, -> { BrandDev::BrandWebScrapeImagesParams::Action::Wait }

        # Resolve and perform one natural-language browser action.
        variant :perform, -> { BrandDev::BrandWebScrapeImagesParams::Action::Perform }

        # Scroll the page or a selected scrollable container, waiting adaptively for content and dimensions to settle after each iteration.
        variant :scroll, -> { BrandDev::BrandWebScrapeImagesParams::Action::Scroll }

        class Wait < BrandDev::Internal::Type::BaseModel
          # @!attribute do_
          #
          #   @return [Symbol, :wait]
          required :do_, const: :wait, api_name: :do

          # @!attribute time_ms
          #
          #   @return [Integer]
          required :time_ms, Integer, api_name: :timeMs

          # @!method initialize(time_ms:, do_: :wait)
          #   Pause for a fixed number of milliseconds before continuing to the next action.
          #
          #   @param time_ms [Integer]
          #   @param do_ [Symbol, :wait]
        end

        class Perform < BrandDev::Internal::Type::BaseModel
          # @!attribute action
          #
          #   @return [String]
          required :action, String

          # @!attribute do_
          #
          #   @return [Symbol, :perform]
          required :do_, const: :perform, api_name: :do

          # @!method initialize(action:, do_: :perform)
          #   Resolve and perform one natural-language browser action.
          #
          #   @param action [String]
          #   @param do_ [Symbol, :perform]
        end

        class Scroll < BrandDev::Internal::Type::BaseModel
          # @!attribute do_
          #
          #   @return [Symbol, :scroll]
          required :do_, const: :scroll, api_name: :do

          # @!attribute amount
          #   Pixels per scroll, one visible viewport, or the current scroll boundary.
          #   Defaults to viewport.
          #
          #   @return [Integer, Symbol, BrandDev::Models::BrandWebScrapeImagesParams::Action::Scroll::Amount, nil]
          optional :amount, union: -> { BrandDev::BrandWebScrapeImagesParams::Action::Scroll::Amount }

          # @!attribute container
          #   CSS selector for the first matching scroll container. Defaults to the page.
          #
          #   @return [String, nil]
          optional :container, String

          # @!attribute direction
          #   Direction to scroll. Defaults to down.
          #
          #   @return [Symbol, BrandDev::Models::BrandWebScrapeImagesParams::Action::Scroll::Direction, nil]
          optional :direction, enum: -> { BrandDev::BrandWebScrapeImagesParams::Action::Scroll::Direction }

          # @!attribute max_scrolls
          #   Maximum scroll iterations. Stops early when scrolling and scrollable extent stop
          #   changing. Defaults to 1.
          #
          #   @return [Integer, nil]
          optional :max_scrolls, Integer, api_name: :maxScrolls

          # @!method initialize(amount: nil, container: nil, direction: nil, max_scrolls: nil, do_: :scroll)
          #   Some parameter documentations has been truncated, see
          #   {BrandDev::Models::BrandWebScrapeImagesParams::Action::Scroll} for more details.
          #
          #   Scroll the page or a selected scrollable container, waiting adaptively for
          #   content and dimensions to settle after each iteration.
          #
          #   @param amount [Integer, Symbol, BrandDev::Models::BrandWebScrapeImagesParams::Action::Scroll::Amount] Pixels per scroll, one visible viewport, or the current scroll boundary. Default
          #
          #   @param container [String] CSS selector for the first matching scroll container. Defaults to the page.
          #
          #   @param direction [Symbol, BrandDev::Models::BrandWebScrapeImagesParams::Action::Scroll::Direction] Direction to scroll. Defaults to down.
          #
          #   @param max_scrolls [Integer] Maximum scroll iterations. Stops early when scrolling and scrollable extent stop
          #
          #   @param do_ [Symbol, :scroll]

          # Pixels per scroll, one visible viewport, or the current scroll boundary.
          # Defaults to viewport.
          #
          # @see BrandDev::Models::BrandWebScrapeImagesParams::Action::Scroll#amount
          module Amount
            extend BrandDev::Internal::Type::Union

            variant Integer

            variant const: -> { BrandDev::Models::BrandWebScrapeImagesParams::Action::Scroll::Amount::VIEWPORT }

            variant const: -> { BrandDev::Models::BrandWebScrapeImagesParams::Action::Scroll::Amount::MAX }

            # @!method self.variants
            #   @return [Array(Integer, Symbol)]

            define_sorbet_constant!(:Variants) do
              T.type_alias { T.any(Integer, BrandDev::BrandWebScrapeImagesParams::Action::Scroll::Amount::TaggedSymbol) }
            end

            # @!group

            VIEWPORT = :viewport
            MAX = :max

            # @!endgroup
          end

          # Direction to scroll. Defaults to down.
          #
          # @see BrandDev::Models::BrandWebScrapeImagesParams::Action::Scroll#direction
          module Direction
            extend BrandDev::Internal::Type::Enum

            UP = :up
            DOWN = :down
            LEFT = :left
            RIGHT = :right

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @!method self.variants
        #   @return [Array(BrandDev::Models::BrandWebScrapeImagesParams::Action::Wait, BrandDev::Models::BrandWebScrapeImagesParams::Action::Perform, BrandDev::Models::BrandWebScrapeImagesParams::Action::Scroll)]
      end

      class Enrichment < BrandDev::Internal::Type::BaseModel
        # @!attribute classification
        #   Classify each image by visual asset type.
        #
        #   @return [Boolean, nil]
        optional :classification, BrandDev::Internal::Type::Boolean

        # @!attribute hosted_url
        #   Host materializable images on the Brand.dev CDN and return their URL and MIME
        #   type.
        #
        #   @return [Boolean, nil]
        optional :hosted_url, BrandDev::Internal::Type::Boolean, api_name: :hostedUrl

        # @!attribute max_time_per_ms
        #   Per-image enrichment timeout in milliseconds. Default: 30000. Maximum: 60000.
        #
        #   @return [Integer, nil]
        optional :max_time_per_ms, Integer, api_name: :maxTimePerMs

        # @!attribute resolution
        #   Measure image width and height when possible.
        #
        #   @return [Boolean, nil]
        optional :resolution, BrandDev::Internal::Type::Boolean

        # @!method initialize(classification: nil, hosted_url: nil, max_time_per_ms: nil, resolution: nil)
        #   Some parameter documentations has been truncated, see
        #   {BrandDev::Models::BrandWebScrapeImagesParams::Enrichment} for more details.
        #
        #   Optional per-image processing, sent as deep-object query params such as
        #   enrichment[resolution]=true.
        #
        #   @param classification [Boolean] Classify each image by visual asset type.
        #
        #   @param hosted_url [Boolean] Host materializable images on the Brand.dev CDN and return their URL and MIME ty
        #
        #   @param max_time_per_ms [Integer] Per-image enrichment timeout in milliseconds. Default: 30000. Maximum: 60000.
        #
        #   @param resolution [Boolean] Measure image width and height when possible.
      end
    end
  end
end
