# typed: strong

module BrandDev
  module Models
    class BrandStyleguideParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(BrandDev::BrandStyleguideParams, BrandDev::Internal::AnyHash)
        end

      # Domain name to extract styleguide from (e.g., 'example.com', 'google.com'). The
      # domain will be automatically normalized and validated.
      sig { returns(String) }
      attr_accessor :domain

      # Optional parameter to prioritize screenshot capture for styleguide extraction.
      # If 'speed', optimizes for faster capture with basic quality. If 'quality',
      # optimizes for higher quality with longer wait times. Defaults to 'speed' if not
      # provided.
      sig do
        returns(
          T.nilable(BrandDev::BrandStyleguideParams::Prioritize::OrSymbol)
        )
      end
      attr_reader :prioritize

      sig do
        params(
          prioritize: BrandDev::BrandStyleguideParams::Prioritize::OrSymbol
        ).void
      end
      attr_writer :prioritize

      # Optional timeout in milliseconds for the request. If the request takes longer
      # than this value, it will be aborted with a 408 status code. Maximum allowed
      # value is 300000ms (5 minutes).
      sig { returns(T.nilable(Integer)) }
      attr_reader :timeout_ms

      sig { params(timeout_ms: Integer).void }
      attr_writer :timeout_ms

      sig do
        params(
          domain: String,
          prioritize: BrandDev::BrandStyleguideParams::Prioritize::OrSymbol,
          timeout_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Domain name to extract styleguide from (e.g., 'example.com', 'google.com'). The
        # domain will be automatically normalized and validated.
        domain:,
        # Optional parameter to prioritize screenshot capture for styleguide extraction.
        # If 'speed', optimizes for faster capture with basic quality. If 'quality',
        # optimizes for higher quality with longer wait times. Defaults to 'speed' if not
        # provided.
        prioritize: nil,
        # Optional timeout in milliseconds for the request. If the request takes longer
        # than this value, it will be aborted with a 408 status code. Maximum allowed
        # value is 300000ms (5 minutes).
        timeout_ms: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            domain: String,
            prioritize: BrandDev::BrandStyleguideParams::Prioritize::OrSymbol,
            timeout_ms: Integer,
            request_options: BrandDev::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Optional parameter to prioritize screenshot capture for styleguide extraction.
      # If 'speed', optimizes for faster capture with basic quality. If 'quality',
      # optimizes for higher quality with longer wait times. Defaults to 'speed' if not
      # provided.
      module Prioritize
        extend BrandDev::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, BrandDev::BrandStyleguideParams::Prioritize)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SPEED =
          T.let(
            :speed,
            BrandDev::BrandStyleguideParams::Prioritize::TaggedSymbol
          )
        QUALITY =
          T.let(
            :quality,
            BrandDev::BrandStyleguideParams::Prioritize::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[BrandDev::BrandStyleguideParams::Prioritize::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
