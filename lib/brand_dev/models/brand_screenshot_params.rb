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

      # @!attribute page
      #   Optional parameter to specify which page type to screenshot. If provided, the
      #   system will scrape the domain's links and use heuristics to find the most
      #   appropriate URL for the specified page type (30 supported languages). If not
      #   provided, screenshots the main domain landing page.
      #
      #   @return [Symbol, BrandDev::Models::BrandScreenshotParams::Page, nil]
      optional :page, enum: -> { BrandDev::BrandScreenshotParams::Page }

      # @!attribute prioritize
      #   Optional parameter to prioritize screenshot capture. If 'speed', optimizes for
      #   faster capture with basic quality. If 'quality', optimizes for higher quality
      #   with longer wait times. Defaults to 'quality' if not provided.
      #
      #   @return [Symbol, BrandDev::Models::BrandScreenshotParams::Prioritize, nil]
      optional :prioritize, enum: -> { BrandDev::BrandScreenshotParams::Prioritize }

      # @!method initialize(domain:, full_screenshot: nil, page: nil, prioritize: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {BrandDev::Models::BrandScreenshotParams} for more details.
      #
      #   @param domain [String] Domain name to take screenshot of (e.g., 'example.com', 'google.com'). The domai
      #
      #   @param full_screenshot [Symbol, BrandDev::Models::BrandScreenshotParams::FullScreenshot] Optional parameter to determine screenshot type. If 'true', takes a full page sc
      #
      #   @param page [Symbol, BrandDev::Models::BrandScreenshotParams::Page] Optional parameter to specify which page type to screenshot. If provided, the sy
      #
      #   @param prioritize [Symbol, BrandDev::Models::BrandScreenshotParams::Prioritize] Optional parameter to prioritize screenshot capture. If 'speed', optimizes for f
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

      # Optional parameter to specify which page type to screenshot. If provided, the
      # system will scrape the domain's links and use heuristics to find the most
      # appropriate URL for the specified page type (30 supported languages). If not
      # provided, screenshots the main domain landing page.
      module Page
        extend BrandDev::Internal::Type::Enum

        LOGIN = :login
        SIGNUP = :signup
        BLOG = :blog
        CAREERS = :careers
        PRICING = :pricing
        TERMS = :terms
        PRIVACY = :privacy
        CONTACT = :contact

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Optional parameter to prioritize screenshot capture. If 'speed', optimizes for
      # faster capture with basic quality. If 'quality', optimizes for higher quality
      # with longer wait times. Defaults to 'quality' if not provided.
      module Prioritize
        extend BrandDev::Internal::Type::Enum

        SPEED = :speed
        QUALITY = :quality

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
