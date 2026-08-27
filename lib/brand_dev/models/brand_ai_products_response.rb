# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#ai_products
    class BrandAIProductsResponse < BrandDev::Internal::Type::BaseModel
      # @!attribute cache_metadata
      #   Cache outcome for this response. Composite responses are hits only when every
      #   cache-controlled fetch contributing to the output was a hit; age_ms is the
      #   oldest contributing hit.
      #
      #   @return [BrandDev::Models::BrandAIProductsResponse::CacheMetadata]
      required :cache_metadata, -> { BrandDev::Models::BrandAIProductsResponse::CacheMetadata }

      # @!attribute key_metadata
      #   Metadata about the API key used for the request. Included in every response
      #   whenever a valid API key is provided, even when the response status is not 200.
      #
      #   @return [BrandDev::Models::BrandAIProductsResponse::KeyMetadata, nil]
      optional :key_metadata, -> { BrandDev::Models::BrandAIProductsResponse::KeyMetadata }

      # @!attribute products
      #   Array of products extracted from the website
      #
      #   @return [Array<BrandDev::Models::BrandAIProductsResponse::Product>, nil]
      optional :products,
               -> { BrandDev::Internal::Type::ArrayOf[BrandDev::Models::BrandAIProductsResponse::Product] }

      # @!method initialize(cache_metadata:, key_metadata: nil, products: nil)
      #   Some parameter documentations has been truncated, see
      #   {BrandDev::Models::BrandAIProductsResponse} for more details.
      #
      #   @param cache_metadata [BrandDev::Models::BrandAIProductsResponse::CacheMetadata] Cache outcome for this response. Composite responses are hits only when every ca
      #
      #   @param key_metadata [BrandDev::Models::BrandAIProductsResponse::KeyMetadata] Metadata about the API key used for the request. Included in every response when
      #
      #   @param products [Array<BrandDev::Models::BrandAIProductsResponse::Product>] Array of products extracted from the website

      # @see BrandDev::Models::BrandAIProductsResponse#cache_metadata
      class CacheMetadata < BrandDev::Internal::Type::BaseModel
        # @!attribute age_ms
        #   Age of the cached data in milliseconds. Zero for miss and zdr responses.
        #
        #   @return [Integer]
        required :age_ms, Integer

        # @!attribute status
        #   Whether the response was served from cache, required fresh work, or honored
        #   zero-data-retention cache bypass.
        #
        #   @return [Symbol, BrandDev::Models::BrandAIProductsResponse::CacheMetadata::Status]
        required :status, enum: -> { BrandDev::Models::BrandAIProductsResponse::CacheMetadata::Status }

        # @!method initialize(age_ms:, status:)
        #   Some parameter documentations has been truncated, see
        #   {BrandDev::Models::BrandAIProductsResponse::CacheMetadata} for more details.
        #
        #   Cache outcome for this response. Composite responses are hits only when every
        #   cache-controlled fetch contributing to the output was a hit; age_ms is the
        #   oldest contributing hit.
        #
        #   @param age_ms [Integer] Age of the cached data in milliseconds. Zero for miss and zdr responses.
        #
        #   @param status [Symbol, BrandDev::Models::BrandAIProductsResponse::CacheMetadata::Status] Whether the response was served from cache, required fresh work, or honored zero

        # Whether the response was served from cache, required fresh work, or honored
        # zero-data-retention cache bypass.
        #
        # @see BrandDev::Models::BrandAIProductsResponse::CacheMetadata#status
        module Status
          extend BrandDev::Internal::Type::Enum

          HIT = :hit
          MISS = :miss
          ZDR = :zdr

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see BrandDev::Models::BrandAIProductsResponse#key_metadata
      class KeyMetadata < BrandDev::Internal::Type::BaseModel
        # @!attribute credits_consumed
        #   The number of credits consumed by this request.
        #
        #   @return [Integer]
        required :credits_consumed, Integer

        # @!attribute credits_remaining
        #   The number of credits remaining for your organization after this request.
        #
        #   @return [Integer]
        required :credits_remaining, Integer

        # @!method initialize(credits_consumed:, credits_remaining:)
        #   Metadata about the API key used for the request. Included in every response
        #   whenever a valid API key is provided, even when the response status is not 200.
        #
        #   @param credits_consumed [Integer] The number of credits consumed by this request.
        #
        #   @param credits_remaining [Integer] The number of credits remaining for your organization after this request.
      end

      class Product < BrandDev::Internal::Type::BaseModel
        # @!attribute description
        #   Description of the product
        #
        #   @return [String]
        required :description, String

        # @!attribute features
        #   List of product features
        #
        #   @return [Array<String>]
        required :features, BrandDev::Internal::Type::ArrayOf[String]

        # @!attribute images
        #   URLs to product images on the page (up to 7)
        #
        #   @return [Array<String>]
        required :images, BrandDev::Internal::Type::ArrayOf[String]

        # @!attribute name
        #   Name of the product
        #
        #   @return [String]
        required :name, String

        # @!attribute sku
        #   Stock Keeping Unit (product identifier). Null if no identifier is found.
        #
        #   @return [String, nil]
        required :sku, String, nil?: true

        # @!attribute tags
        #   Tags associated with the product
        #
        #   @return [Array<String>]
        required :tags, BrandDev::Internal::Type::ArrayOf[String]

        # @!attribute target_audience
        #   Target audience for the product (array of strings)
        #
        #   @return [Array<String>]
        required :target_audience, BrandDev::Internal::Type::ArrayOf[String]

        # @!attribute availability
        #   Normalized stock or ordering availability
        #
        #   @return [Symbol, BrandDev::Models::BrandAIProductsResponse::Product::Availability, nil]
        optional :availability,
                 enum: -> { BrandDev::Models::BrandAIProductsResponse::Product::Availability },
                 nil?: true

        # @!attribute billing_frequency
        #   Billing frequency for the product
        #
        #   @return [Symbol, BrandDev::Models::BrandAIProductsResponse::Product::BillingFrequency, nil]
        optional :billing_frequency,
                 enum: -> { BrandDev::Models::BrandAIProductsResponse::Product::BillingFrequency },
                 nil?: true

        # @!attribute category
        #   Category of the product
        #
        #   @return [String, nil]
        optional :category, String, nil?: true

        # @!attribute currency
        #   Currency code for the price (e.g., USD, EUR)
        #
        #   @return [String, nil]
        optional :currency, String, nil?: true

        # @!attribute dimensions
        #   Dimension statements shown for the product, preserving labels, values, and units
        #
        #   @return [Array<String>, nil]
        optional :dimensions, BrandDev::Internal::Type::ArrayOf[String]

        # @!attribute image_url
        #   URL to the product image
        #
        #   @return [String, nil]
        optional :image_url, String, nil?: true

        # @!attribute price
        #   Price of the product
        #
        #   @return [Float, nil]
        optional :price, Float, nil?: true

        # @!attribute pricing_model
        #   Pricing model for the product
        #
        #   @return [Symbol, BrandDev::Models::BrandAIProductsResponse::Product::PricingModel, nil]
        optional :pricing_model,
                 enum: -> { BrandDev::Models::BrandAIProductsResponse::Product::PricingModel },
                 nil?: true

        # @!attribute regular_price
        #   Original or regular price before a displayed discount
        #
        #   @return [Float, nil]
        optional :regular_price, Float, nil?: true

        # @!attribute url
        #   URL to the product page
        #
        #   @return [String, nil]
        optional :url, String, nil?: true

        # @!method initialize(description:, features:, images:, name:, sku:, tags:, target_audience:, availability: nil, billing_frequency: nil, category: nil, currency: nil, dimensions: nil, image_url: nil, price: nil, pricing_model: nil, regular_price: nil, url: nil)
        #   Some parameter documentations has been truncated, see
        #   {BrandDev::Models::BrandAIProductsResponse::Product} for more details.
        #
        #   @param description [String] Description of the product
        #
        #   @param features [Array<String>] List of product features
        #
        #   @param images [Array<String>] URLs to product images on the page (up to 7)
        #
        #   @param name [String] Name of the product
        #
        #   @param sku [String, nil] Stock Keeping Unit (product identifier). Null if no identifier is found.
        #
        #   @param tags [Array<String>] Tags associated with the product
        #
        #   @param target_audience [Array<String>] Target audience for the product (array of strings)
        #
        #   @param availability [Symbol, BrandDev::Models::BrandAIProductsResponse::Product::Availability, nil] Normalized stock or ordering availability
        #
        #   @param billing_frequency [Symbol, BrandDev::Models::BrandAIProductsResponse::Product::BillingFrequency, nil] Billing frequency for the product
        #
        #   @param category [String, nil] Category of the product
        #
        #   @param currency [String, nil] Currency code for the price (e.g., USD, EUR)
        #
        #   @param dimensions [Array<String>] Dimension statements shown for the product, preserving labels, values, and units
        #
        #   @param image_url [String, nil] URL to the product image
        #
        #   @param price [Float, nil] Price of the product
        #
        #   @param pricing_model [Symbol, BrandDev::Models::BrandAIProductsResponse::Product::PricingModel, nil] Pricing model for the product
        #
        #   @param regular_price [Float, nil] Original or regular price before a displayed discount
        #
        #   @param url [String, nil] URL to the product page

        # Normalized stock or ordering availability
        #
        # @see BrandDev::Models::BrandAIProductsResponse::Product#availability
        module Availability
          extend BrandDev::Internal::Type::Enum

          IN_STOCK = :in_stock
          OUT_OF_STOCK = :out_of_stock
          LIMITED_AVAILABILITY = :limited_availability
          PREORDER = :preorder
          BACKORDER = :backorder
          MADE_TO_ORDER = :made_to_order
          DISCONTINUED = :discontinued

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Billing frequency for the product
        #
        # @see BrandDev::Models::BrandAIProductsResponse::Product#billing_frequency
        module BillingFrequency
          extend BrandDev::Internal::Type::Enum

          MONTHLY = :monthly
          YEARLY = :yearly
          ONE_TIME = :one_time
          USAGE_BASED = :usage_based

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Pricing model for the product
        #
        # @see BrandDev::Models::BrandAIProductsResponse::Product#pricing_model
        module PricingModel
          extend BrandDev::Internal::Type::Enum

          PER_SEAT = :per_seat
          FLAT = :flat
          TIERED = :tiered
          FREEMIUM = :freemium
          CUSTOM = :custom

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
