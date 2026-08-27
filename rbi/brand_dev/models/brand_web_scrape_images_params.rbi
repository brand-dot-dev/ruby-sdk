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

      # Optional browser actions executed in array order after the page loads and before
      # content is captured. Requires a paid plan. Send a JSON array in the query
      # parameter. Maximum: 5 actions.
      sig do
        returns(
          T.nilable(
            T::Array[
              T.any(
                BrandDev::BrandWebScrapeImagesParams::Action::Wait,
                BrandDev::BrandWebScrapeImagesParams::Action::Perform,
                BrandDev::BrandWebScrapeImagesParams::Action::Scroll
              )
            ]
          )
        )
      end
      attr_accessor :actions

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
          actions:
            T.nilable(
              T::Array[
                T.any(
                  BrandDev::BrandWebScrapeImagesParams::Action::Wait::OrHash,
                  BrandDev::BrandWebScrapeImagesParams::Action::Perform::OrHash,
                  BrandDev::BrandWebScrapeImagesParams::Action::Scroll::OrHash
                )
              ]
            ),
          dedupe: T::Boolean,
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
        # Optional browser actions executed in array order after the page loads and before
        # content is captured. Requires a paid plan. Send a JSON array in the query
        # parameter. Maximum: 5 actions.
        actions: nil,
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
            actions:
              T.nilable(
                T::Array[
                  T.any(
                    BrandDev::BrandWebScrapeImagesParams::Action::Wait,
                    BrandDev::BrandWebScrapeImagesParams::Action::Perform,
                    BrandDev::BrandWebScrapeImagesParams::Action::Scroll
                  )
                ]
              ),
            dedupe: T::Boolean,
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

      # Browser action discriminated by `do`. Each variant exposes only its applicable
      # fields.
      module Action
        extend BrandDev::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              BrandDev::BrandWebScrapeImagesParams::Action::Wait,
              BrandDev::BrandWebScrapeImagesParams::Action::Perform,
              BrandDev::BrandWebScrapeImagesParams::Action::Scroll
            )
          end

        class Wait < BrandDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                BrandDev::BrandWebScrapeImagesParams::Action::Wait,
                BrandDev::Internal::AnyHash
              )
            end

          sig { returns(Symbol) }
          attr_accessor :do_

          sig { returns(Integer) }
          attr_accessor :time_ms

          # Pause for a fixed number of milliseconds before continuing to the next action.
          sig do
            params(time_ms: Integer, do_: Symbol).returns(T.attached_class)
          end
          def self.new(time_ms:, do_: :wait)
          end

          sig { override.returns({ do_: Symbol, time_ms: Integer }) }
          def to_hash
          end
        end

        class Perform < BrandDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                BrandDev::BrandWebScrapeImagesParams::Action::Perform,
                BrandDev::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :action

          sig { returns(Symbol) }
          attr_accessor :do_

          # Resolve and perform one natural-language browser action.
          sig { params(action: String, do_: Symbol).returns(T.attached_class) }
          def self.new(action:, do_: :perform)
          end

          sig { override.returns({ action: String, do_: Symbol }) }
          def to_hash
          end
        end

        class Scroll < BrandDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                BrandDev::BrandWebScrapeImagesParams::Action::Scroll,
                BrandDev::Internal::AnyHash
              )
            end

          sig { returns(Symbol) }
          attr_accessor :do_

          # Pixels per scroll, one visible viewport, or the current scroll boundary.
          # Defaults to viewport.
          sig do
            returns(
              T.nilable(
                T.any(
                  Integer,
                  BrandDev::BrandWebScrapeImagesParams::Action::Scroll::Amount::OrSymbol
                )
              )
            )
          end
          attr_reader :amount

          sig do
            params(
              amount:
                T.any(
                  Integer,
                  BrandDev::BrandWebScrapeImagesParams::Action::Scroll::Amount::OrSymbol
                )
            ).void
          end
          attr_writer :amount

          # CSS selector for the first matching scroll container. Defaults to the page.
          sig { returns(T.nilable(String)) }
          attr_reader :container

          sig { params(container: String).void }
          attr_writer :container

          # Direction to scroll. Defaults to down.
          sig do
            returns(
              T.nilable(
                BrandDev::BrandWebScrapeImagesParams::Action::Scroll::Direction::OrSymbol
              )
            )
          end
          attr_reader :direction

          sig do
            params(
              direction:
                BrandDev::BrandWebScrapeImagesParams::Action::Scroll::Direction::OrSymbol
            ).void
          end
          attr_writer :direction

          # Maximum scroll iterations. Stops early when scrolling and scrollable extent stop
          # changing. Defaults to 1.
          sig { returns(T.nilable(Integer)) }
          attr_reader :max_scrolls

          sig { params(max_scrolls: Integer).void }
          attr_writer :max_scrolls

          # Scroll the page or a selected scrollable container, waiting adaptively for
          # content and dimensions to settle after each iteration.
          sig do
            params(
              amount:
                T.any(
                  Integer,
                  BrandDev::BrandWebScrapeImagesParams::Action::Scroll::Amount::OrSymbol
                ),
              container: String,
              direction:
                BrandDev::BrandWebScrapeImagesParams::Action::Scroll::Direction::OrSymbol,
              max_scrolls: Integer,
              do_: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Pixels per scroll, one visible viewport, or the current scroll boundary.
            # Defaults to viewport.
            amount: nil,
            # CSS selector for the first matching scroll container. Defaults to the page.
            container: nil,
            # Direction to scroll. Defaults to down.
            direction: nil,
            # Maximum scroll iterations. Stops early when scrolling and scrollable extent stop
            # changing. Defaults to 1.
            max_scrolls: nil,
            do_: :scroll
          )
          end

          sig do
            override.returns(
              {
                do_: Symbol,
                amount:
                  T.any(
                    Integer,
                    BrandDev::BrandWebScrapeImagesParams::Action::Scroll::Amount::OrSymbol
                  ),
                container: String,
                direction:
                  BrandDev::BrandWebScrapeImagesParams::Action::Scroll::Direction::OrSymbol,
                max_scrolls: Integer
              }
            )
          end
          def to_hash
          end

          # Pixels per scroll, one visible viewport, or the current scroll boundary.
          # Defaults to viewport.
          module Amount
            extend BrandDev::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  Integer,
                  BrandDev::BrandWebScrapeImagesParams::Action::Scroll::Amount::TaggedSymbol
                )
              end

            sig do
              override.returns(
                T::Array[
                  BrandDev::BrandWebScrapeImagesParams::Action::Scroll::Amount::Variants
                ]
              )
            end
            def self.variants
            end

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  BrandDev::BrandWebScrapeImagesParams::Action::Scroll::Amount
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            VIEWPORT =
              T.let(
                :viewport,
                BrandDev::BrandWebScrapeImagesParams::Action::Scroll::Amount::TaggedSymbol
              )
            MAX =
              T.let(
                :max,
                BrandDev::BrandWebScrapeImagesParams::Action::Scroll::Amount::TaggedSymbol
              )
          end

          # Direction to scroll. Defaults to down.
          module Direction
            extend BrandDev::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  BrandDev::BrandWebScrapeImagesParams::Action::Scroll::Direction
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            UP =
              T.let(
                :up,
                BrandDev::BrandWebScrapeImagesParams::Action::Scroll::Direction::TaggedSymbol
              )
            DOWN =
              T.let(
                :down,
                BrandDev::BrandWebScrapeImagesParams::Action::Scroll::Direction::TaggedSymbol
              )
            LEFT =
              T.let(
                :left,
                BrandDev::BrandWebScrapeImagesParams::Action::Scroll::Direction::TaggedSymbol
              )
            RIGHT =
              T.let(
                :right,
                BrandDev::BrandWebScrapeImagesParams::Action::Scroll::Direction::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  BrandDev::BrandWebScrapeImagesParams::Action::Scroll::Direction::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        sig do
          override.returns(
            T::Array[BrandDev::BrandWebScrapeImagesParams::Action::Variants]
          )
        end
        def self.variants
        end
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
