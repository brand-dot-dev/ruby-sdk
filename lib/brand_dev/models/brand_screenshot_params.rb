# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#screenshot
    class BrandScreenshotParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      # @!attribute domain
      #   Domain name to take screenshot of (e.g., 'example.com', 'google.com'). The
      #   domain will be automatically normalized and validated.
      #
      #   @return [String]
      required :domain, String

      # @!attribute full_screenshot
      #   Optional parameter to determine screenshot type. If 'true', takes a full page
      #   screenshot capturing all content. If 'false' or not provided, takes a viewport
      #   screenshot (standard browser view).
      #
      #   @return [Symbol, BrandDev::Models::BrandScreenshotParams::FullScreenshot, nil]
      optional :full_screenshot, enum: -> { BrandDev::BrandScreenshotParams::FullScreenshot }

      # @!method initialize(domain:, full_screenshot: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {BrandDev::Models::BrandScreenshotParams} for more details.
      #
      #   @param domain [String] Domain name to take screenshot of (e.g., 'example.com', 'google.com'). The domai
      #
      #   @param full_screenshot [Symbol, BrandDev::Models::BrandScreenshotParams::FullScreenshot] Optional parameter to determine screenshot type. If 'true', takes a full page sc
      #
      #   @param request_options [BrandDev::RequestOptions, Hash{Symbol=>Object}]

      # Optional parameter to determine screenshot type. If 'true', takes a full page
      # screenshot capturing all content. If 'false' or not provided, takes a viewport
      # screenshot (standard browser view).
      module FullScreenshot
        extend BrandDev::Internal::Type::Enum

        TRUE = :true
        FALSE = :false

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
