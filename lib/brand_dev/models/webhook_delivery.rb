# frozen_string_literal: true

module BrandDev
  module Models
    class WebhookDelivery < BrandDev::Internal::Type::BaseModel
      # @!attribute attempted_at
      #
      #   @return [Time]
      required :attempted_at, Time

      # @!attribute error
      #
      #   @return [BrandDev::Models::WebhookDelivery::Error, nil]
      required :error, -> { BrandDev::WebhookDelivery::Error }, nil?: true

      # @!attribute event
      #   The event this delivery carried. Deliveries recorded before event selection
      #   existed report change.detected.
      #
      #   @return [Symbol, BrandDev::Models::WebhookDelivery::Event]
      required :event, enum: -> { BrandDev::WebhookDelivery::Event }

      # @!attribute event_id
      #   Identifier sent in the X-Context-Id header.
      #
      #   @return [String]
      required :event_id, String

      # @!attribute http_status
      #   The endpoint's final HTTP response status, or null when no response was
      #   received.
      #
      #   @return [Integer, nil]
      required :http_status, Integer, nil?: true

      # @!attribute status
      #   Delivery outcome. delivered means any 2xx response; rejected means a non-2xx
      #   response; failed means no HTTP response was received; skipped_unsafe_url means
      #   the URL failed the public-endpoint safety check.
      #
      #   @return [Symbol, BrandDev::Models::WebhookDelivery::Status]
      required :status, enum: -> { BrandDev::WebhookDelivery::Status }

      # @!method initialize(attempted_at:, error:, event:, event_id:, http_status:, status:)
      #   Some parameter documentations has been truncated, see
      #   {BrandDev::Models::WebhookDelivery} for more details.
      #
      #   @param attempted_at [Time]
      #
      #   @param error [BrandDev::Models::WebhookDelivery::Error, nil]
      #
      #   @param event [Symbol, BrandDev::Models::WebhookDelivery::Event] The event this delivery carried. Deliveries recorded before event selection exis
      #
      #   @param event_id [String] Identifier sent in the X-Context-Id header.
      #
      #   @param http_status [Integer, nil] The endpoint's final HTTP response status, or null when no response was received
      #
      #   @param status [Symbol, BrandDev::Models::WebhookDelivery::Status] Delivery outcome. delivered means any 2xx response; rejected means a non-2xx res

      # @see BrandDev::Models::WebhookDelivery#error
      class Error < BrandDev::Internal::Type::BaseModel
        # @!attribute code
        #
        #   @return [String]
        required :code, String

        # @!attribute message
        #
        #   @return [String]
        required :message, String

        # @!method initialize(code:, message:)
        #   @param code [String]
        #   @param message [String]
      end

      # The event this delivery carried. Deliveries recorded before event selection
      # existed report change.detected.
      #
      # @see BrandDev::Models::WebhookDelivery#event
      module Event
        extend BrandDev::Internal::Type::Enum

        CHANGE_DETECTED = :"change.detected"
        RUN_COMPLETED = :"run.completed"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Delivery outcome. delivered means any 2xx response; rejected means a non-2xx
      # response; failed means no HTTP response was received; skipped_unsafe_url means
      # the URL failed the public-endpoint safety check.
      #
      # @see BrandDev::Models::WebhookDelivery#status
      module Status
        extend BrandDev::Internal::Type::Enum

        DELIVERED = :delivered
        REJECTED = :rejected
        FAILED = :failed
        SKIPPED_UNSAFE_URL = :skipped_unsafe_url

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
