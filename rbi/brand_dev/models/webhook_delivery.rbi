# typed: strong

module BrandDev
  module Models
    class WebhookDelivery < BrandDev::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(BrandDev::WebhookDelivery, BrandDev::Internal::AnyHash)
        end

      sig { returns(Time) }
      attr_accessor :attempted_at

      sig { returns(T.nilable(BrandDev::WebhookDelivery::Error)) }
      attr_reader :error

      sig do
        params(error: T.nilable(BrandDev::WebhookDelivery::Error::OrHash)).void
      end
      attr_writer :error

      # The event this delivery carried. Deliveries recorded before event selection
      # existed report change.detected.
      sig { returns(BrandDev::WebhookDelivery::Event::OrSymbol) }
      attr_accessor :event

      # Identifier sent in the X-Context-Id header.
      sig { returns(String) }
      attr_accessor :event_id

      # The endpoint's final HTTP response status, or null when no response was
      # received.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :http_status

      # Delivery outcome. delivered means any 2xx response; rejected means a non-2xx
      # response; failed means no HTTP response was received; skipped_unsafe_url means
      # the URL failed the public-endpoint safety check.
      sig { returns(BrandDev::WebhookDelivery::Status::OrSymbol) }
      attr_accessor :status

      sig do
        params(
          attempted_at: Time,
          error: T.nilable(BrandDev::WebhookDelivery::Error::OrHash),
          event: BrandDev::WebhookDelivery::Event::OrSymbol,
          event_id: String,
          http_status: T.nilable(Integer),
          status: BrandDev::WebhookDelivery::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        attempted_at:,
        error:,
        # The event this delivery carried. Deliveries recorded before event selection
        # existed report change.detected.
        event:,
        # Identifier sent in the X-Context-Id header.
        event_id:,
        # The endpoint's final HTTP response status, or null when no response was
        # received.
        http_status:,
        # Delivery outcome. delivered means any 2xx response; rejected means a non-2xx
        # response; failed means no HTTP response was received; skipped_unsafe_url means
        # the URL failed the public-endpoint safety check.
        status:
      )
      end

      sig do
        override.returns(
          {
            attempted_at: Time,
            error: T.nilable(BrandDev::WebhookDelivery::Error),
            event: BrandDev::WebhookDelivery::Event::OrSymbol,
            event_id: String,
            http_status: T.nilable(Integer),
            status: BrandDev::WebhookDelivery::Status::OrSymbol
          }
        )
      end
      def to_hash
      end

      class Error < BrandDev::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(BrandDev::WebhookDelivery::Error, BrandDev::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :code

        sig { returns(String) }
        attr_accessor :message

        sig { params(code: String, message: String).returns(T.attached_class) }
        def self.new(code:, message:)
        end

        sig { override.returns({ code: String, message: String }) }
        def to_hash
        end
      end

      # The event this delivery carried. Deliveries recorded before event selection
      # existed report change.detected.
      module Event
        extend BrandDev::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, BrandDev::WebhookDelivery::Event) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CHANGE_DETECTED =
          T.let(
            :"change.detected",
            BrandDev::WebhookDelivery::Event::TaggedSymbol
          )
        RUN_COMPLETED =
          T.let(
            :"run.completed",
            BrandDev::WebhookDelivery::Event::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[BrandDev::WebhookDelivery::Event::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Delivery outcome. delivered means any 2xx response; rejected means a non-2xx
      # response; failed means no HTTP response was received; skipped_unsafe_url means
      # the URL failed the public-endpoint safety check.
      module Status
        extend BrandDev::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, BrandDev::WebhookDelivery::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DELIVERED =
          T.let(:delivered, BrandDev::WebhookDelivery::Status::TaggedSymbol)
        REJECTED =
          T.let(:rejected, BrandDev::WebhookDelivery::Status::TaggedSymbol)
        FAILED = T.let(:failed, BrandDev::WebhookDelivery::Status::TaggedSymbol)
        SKIPPED_UNSAFE_URL =
          T.let(
            :skipped_unsafe_url,
            BrandDev::WebhookDelivery::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[BrandDev::WebhookDelivery::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
