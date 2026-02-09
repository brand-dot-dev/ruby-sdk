# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#ai_product
    class BrandAIProductResponse < BrandDev::Internal::Type::BaseModel
      # @!attribute is_product_page
      #   Whether the given URL is a product detail page
      #
      #   @return [Boolean, nil]
      optional :is_product_page, BrandDev::Internal::Type::Boolean

      # @!attribute platform
      #   The detected ecommerce platform, or null if not a product page
      #
      #   @return [Symbol, BrandDev::Models::BrandAIProductResponse::Platform, nil]
      optional :platform, enum: -> { BrandDev::Models::BrandAIProductResponse::Platform }, nil?: true

      # @!attribute product
      #   The extracted product data, or null if not a product page
      #
      #   @return [BrandDev::Models::BrandAIProductResponse::Product, nil]
      optional :product, -> { BrandDev::Models::BrandAIProductResponse::Product }, nil?: true

      # @!method initialize(is_product_page: nil, platform: nil, product: nil)
      #   @param is_product_page [Boolean] Whether the given URL is a product detail page
      #
      #   @param platform [Symbol, BrandDev::Models::BrandAIProductResponse::Platform, nil] The detected ecommerce platform, or null if not a product page
      #
      #   @param product [BrandDev::Models::BrandAIProductResponse::Product, nil] The extracted product data, or null if not a product page

      # The detected ecommerce platform, or null if not a product page
      #
      # @see BrandDev::Models::BrandAIProductResponse#platform
      module Platform
        extend BrandDev::Internal::Type::Enum

        AMAZON = :amazon
        TIKTOK_SHOP = :tiktok_shop
        ETSY = :etsy
        GENERIC = :generic

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see BrandDev::Models::BrandAIProductResponse#product
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

        # @!attribute name
        #   Name of the product
        #
        #   @return [String]
        required :name, String

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

        # @!attribute billing_frequency
        #   Billing frequency for the product
        #
        #   @return [Symbol, BrandDev::Models::BrandAIProductResponse::Product::BillingFrequency, nil]
        optional :billing_frequency,
                 enum: -> { BrandDev::Models::BrandAIProductResponse::Product::BillingFrequency },
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
        #   @return [Symbol, BrandDev::Models::BrandAIProductResponse::Product::PricingModel, nil]
        optional :pricing_model,
                 enum: -> { BrandDev::Models::BrandAIProductResponse::Product::PricingModel },
                 nil?: true

        # @!attribute url
        #   URL to the product page
        #
        #   @return [String, nil]
        optional :url, String, nil?: true

        # @!method initialize(description:, features:, name:, tags:, target_audience:, billing_frequency: nil, category: nil, currency: nil, image_url: nil, price: nil, pricing_model: nil, url: nil)
        #   The extracted product data, or null if not a product page
        #
        #   @param description [String] Description of the product
        #
        #   @param features [Array<String>] List of product features
        #
        #   @param name [String] Name of the product
        #
        #   @param tags [Array<String>] Tags associated with the product
        #
        #   @param target_audience [Array<String>] Target audience for the product (array of strings)
        #
        #   @param billing_frequency [Symbol, BrandDev::Models::BrandAIProductResponse::Product::BillingFrequency, nil] Billing frequency for the product
        #
        #   @param category [String, nil] Category of the product
        #
        #   @param currency [String, nil] Currency code for the price (e.g., USD, EUR)
        #
        #   @param image_url [String, nil] URL to the product image
        #
        #   @param price [Float, nil] Price of the product
        #
        #   @param pricing_model [Symbol, BrandDev::Models::BrandAIProductResponse::Product::PricingModel, nil] Pricing model for the product
        #
        #   @param url [String, nil] URL to the product page

        # Billing frequency for the product
        #
        # @see BrandDev::Models::BrandAIProductResponse::Product#billing_frequency
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
        # @see BrandDev::Models::BrandAIProductResponse::Product#pricing_model
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
