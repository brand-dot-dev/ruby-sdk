# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#screenshot
    class BrandScreenshotResponse < BrandDev::Internal::Type::BaseModel
      # @!attribute code
      #   HTTP status code
      #
      #   @return [Integer, nil]
      optional :code, Integer

      # @!attribute domain
      #   The normalized domain that was processed
      #
      #   @return [String, nil]
      optional :domain, String

      # @!attribute screenshot
      #   Public URL of the uploaded screenshot image
      #
      #   @return [String, nil]
      optional :screenshot, String

      # @!attribute screenshot_type
      #   Type of screenshot that was captured
      #
      #   @return [Symbol, BrandDev::Models::BrandScreenshotResponse::ScreenshotType, nil]
      optional :screenshot_type,
               enum: -> { BrandDev::Models::BrandScreenshotResponse::ScreenshotType },
               api_name: :screenshotType

      # @!attribute status
      #   Status of the response, e.g., 'ok'
      #
      #   @return [String, nil]
      optional :status, String

      # @!method initialize(code: nil, domain: nil, screenshot: nil, screenshot_type: nil, status: nil)
      #   @param code [Integer] HTTP status code
      #
      #   @param domain [String] The normalized domain that was processed
      #
      #   @param screenshot [String] Public URL of the uploaded screenshot image
      #
      #   @param screenshot_type [Symbol, BrandDev::Models::BrandScreenshotResponse::ScreenshotType] Type of screenshot that was captured
      #
      #   @param status [String] Status of the response, e.g., 'ok'

      # Type of screenshot that was captured
      #
      # @see BrandDev::Models::BrandScreenshotResponse#screenshot_type
      module ScreenshotType
        extend BrandDev::Internal::Type::Enum

        VIEWPORT = :viewport
        FULL_PAGE = :fullPage

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
