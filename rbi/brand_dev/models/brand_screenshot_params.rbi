# typed: strong

module BrandDev
  module Models
    class BrandScreenshotParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(BrandDev::BrandScreenshotParams, BrandDev::Internal::AnyHash)
        end

      # Domain name to take screenshot of (e.g., 'example.com', 'google.com'). The
      # domain will be automatically normalized and validated.
      sig { returns(String) }
      attr_accessor :domain

      # Optional parameter to determine screenshot type. If 'true', takes a full page
      # screenshot capturing all content. If 'false' or not provided, takes a viewport
      # screenshot (standard browser view).
      sig do
        returns(
          T.nilable(BrandDev::BrandScreenshotParams::FullScreenshot::OrSymbol)
        )
      end
      attr_reader :full_screenshot

      sig do
        params(
          full_screenshot:
            BrandDev::BrandScreenshotParams::FullScreenshot::OrSymbol
        ).void
      end
      attr_writer :full_screenshot

      # Optional parameter to specify which page type to screenshot. If provided, the
      # system will scrape the domain's links and use heuristics to find the most
      # appropriate URL for the specified page type (30 supported languages). If not
      # provided, screenshots the main domain landing page.
      sig do
        returns(T.nilable(BrandDev::BrandScreenshotParams::Page::OrSymbol))
      end
      attr_reader :page

      sig { params(page: BrandDev::BrandScreenshotParams::Page::OrSymbol).void }
      attr_writer :page

      # Optional parameter to prioritize screenshot capture. If 'speed', optimizes for
      # faster capture with basic quality. If 'quality', optimizes for higher quality
      # with longer wait times. Defaults to 'quality' if not provided.
      sig do
        returns(
          T.nilable(BrandDev::BrandScreenshotParams::Prioritize::OrSymbol)
        )
      end
      attr_reader :prioritize

      sig do
        params(
          prioritize: BrandDev::BrandScreenshotParams::Prioritize::OrSymbol
        ).void
      end
      attr_writer :prioritize

      sig do
        params(
          domain: String,
          full_screenshot:
            BrandDev::BrandScreenshotParams::FullScreenshot::OrSymbol,
          page: BrandDev::BrandScreenshotParams::Page::OrSymbol,
          prioritize: BrandDev::BrandScreenshotParams::Prioritize::OrSymbol,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Domain name to take screenshot of (e.g., 'example.com', 'google.com'). The
        # domain will be automatically normalized and validated.
        domain:,
        # Optional parameter to determine screenshot type. If 'true', takes a full page
        # screenshot capturing all content. If 'false' or not provided, takes a viewport
        # screenshot (standard browser view).
        full_screenshot: nil,
        # Optional parameter to specify which page type to screenshot. If provided, the
        # system will scrape the domain's links and use heuristics to find the most
        # appropriate URL for the specified page type (30 supported languages). If not
        # provided, screenshots the main domain landing page.
        page: nil,
        # Optional parameter to prioritize screenshot capture. If 'speed', optimizes for
        # faster capture with basic quality. If 'quality', optimizes for higher quality
        # with longer wait times. Defaults to 'quality' if not provided.
        prioritize: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            domain: String,
            full_screenshot:
              BrandDev::BrandScreenshotParams::FullScreenshot::OrSymbol,
            page: BrandDev::BrandScreenshotParams::Page::OrSymbol,
            prioritize: BrandDev::BrandScreenshotParams::Prioritize::OrSymbol,
            request_options: BrandDev::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Optional parameter to determine screenshot type. If 'true', takes a full page
      # screenshot capturing all content. If 'false' or not provided, takes a viewport
      # screenshot (standard browser view).
      module FullScreenshot
        extend BrandDev::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, BrandDev::BrandScreenshotParams::FullScreenshot)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRUE =
          T.let(
            :true,
            BrandDev::BrandScreenshotParams::FullScreenshot::TaggedSymbol
          )
        FALSE =
          T.let(
            :false,
            BrandDev::BrandScreenshotParams::FullScreenshot::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              BrandDev::BrandScreenshotParams::FullScreenshot::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Optional parameter to specify which page type to screenshot. If provided, the
      # system will scrape the domain's links and use heuristics to find the most
      # appropriate URL for the specified page type (30 supported languages). If not
      # provided, screenshots the main domain landing page.
      module Page
        extend BrandDev::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, BrandDev::BrandScreenshotParams::Page) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LOGIN =
          T.let(:login, BrandDev::BrandScreenshotParams::Page::TaggedSymbol)
        SIGNUP =
          T.let(:signup, BrandDev::BrandScreenshotParams::Page::TaggedSymbol)
        BLOG = T.let(:blog, BrandDev::BrandScreenshotParams::Page::TaggedSymbol)
        CAREERS =
          T.let(:careers, BrandDev::BrandScreenshotParams::Page::TaggedSymbol)
        PRICING =
          T.let(:pricing, BrandDev::BrandScreenshotParams::Page::TaggedSymbol)
        TERMS =
          T.let(:terms, BrandDev::BrandScreenshotParams::Page::TaggedSymbol)
        PRIVACY =
          T.let(:privacy, BrandDev::BrandScreenshotParams::Page::TaggedSymbol)
        CONTACT =
          T.let(:contact, BrandDev::BrandScreenshotParams::Page::TaggedSymbol)

        sig do
          override.returns(
            T::Array[BrandDev::BrandScreenshotParams::Page::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Optional parameter to prioritize screenshot capture. If 'speed', optimizes for
      # faster capture with basic quality. If 'quality', optimizes for higher quality
      # with longer wait times. Defaults to 'quality' if not provided.
      module Prioritize
        extend BrandDev::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, BrandDev::BrandScreenshotParams::Prioritize)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SPEED =
          T.let(
            :speed,
            BrandDev::BrandScreenshotParams::Prioritize::TaggedSymbol
          )
        QUALITY =
          T.let(
            :quality,
            BrandDev::BrandScreenshotParams::Prioritize::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[BrandDev::BrandScreenshotParams::Prioritize::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
