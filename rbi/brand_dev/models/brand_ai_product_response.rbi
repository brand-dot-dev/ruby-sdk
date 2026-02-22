# typed: strong

module BrandDev
  module Models
    class BrandAIProductResponse < BrandDev::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            BrandDev::Models::BrandAIProductResponse,
            BrandDev::Internal::AnyHash
          )
        end

      # Whether the given URL is a product detail page
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_product_page

      sig { params(is_product_page: T::Boolean).void }
      attr_writer :is_product_page

      # The detected ecommerce platform, or null if not a product page
      sig do
        returns(
          T.nilable(
            BrandDev::Models::BrandAIProductResponse::Platform::TaggedSymbol
          )
        )
      end
      attr_accessor :platform

      # The extracted product data, or null if not a product page
      sig do
        returns(T.nilable(BrandDev::Models::BrandAIProductResponse::Product))
      end
      attr_reader :product

      sig do
        params(
          product:
            T.nilable(BrandDev::Models::BrandAIProductResponse::Product::OrHash)
        ).void
      end
      attr_writer :product

      sig do
        params(
          is_product_page: T::Boolean,
          platform:
            T.nilable(
              BrandDev::Models::BrandAIProductResponse::Platform::OrSymbol
            ),
          product:
            T.nilable(BrandDev::Models::BrandAIProductResponse::Product::OrHash)
        ).returns(T.attached_class)
      end
      def self.new(
        # Whether the given URL is a product detail page
        is_product_page: nil,
        # The detected ecommerce platform, or null if not a product page
        platform: nil,
        # The extracted product data, or null if not a product page
        product: nil
      )
      end

      sig do
        override.returns(
          {
            is_product_page: T::Boolean,
            platform:
              T.nilable(
                BrandDev::Models::BrandAIProductResponse::Platform::TaggedSymbol
              ),
            product:
              T.nilable(BrandDev::Models::BrandAIProductResponse::Product)
          }
        )
      end
      def to_hash
      end

      # The detected ecommerce platform, or null if not a product page
      module Platform
        extend BrandDev::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, BrandDev::Models::BrandAIProductResponse::Platform)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AMAZON =
          T.let(
            :amazon,
            BrandDev::Models::BrandAIProductResponse::Platform::TaggedSymbol
          )
        TIKTOK_SHOP =
          T.let(
            :tiktok_shop,
            BrandDev::Models::BrandAIProductResponse::Platform::TaggedSymbol
          )
        ETSY =
          T.let(
            :etsy,
            BrandDev::Models::BrandAIProductResponse::Platform::TaggedSymbol
          )
        GENERIC =
          T.let(
            :generic,
            BrandDev::Models::BrandAIProductResponse::Platform::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              BrandDev::Models::BrandAIProductResponse::Platform::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Product < BrandDev::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              BrandDev::Models::BrandAIProductResponse::Product,
              BrandDev::Internal::AnyHash
            )
          end

        # Description of the product
        sig { returns(String) }
        attr_accessor :description

        # List of product features
        sig { returns(T::Array[String]) }
        attr_accessor :features

        # URLs to product images on the page (up to 7)
        sig { returns(T::Array[String]) }
        attr_accessor :images

        # Name of the product
        sig { returns(String) }
        attr_accessor :name

        # Tags associated with the product
        sig { returns(T::Array[String]) }
        attr_accessor :tags

        # Target audience for the product (array of strings)
        sig { returns(T::Array[String]) }
        attr_accessor :target_audience

        # Billing frequency for the product
        sig do
          returns(
            T.nilable(
              BrandDev::Models::BrandAIProductResponse::Product::BillingFrequency::TaggedSymbol
            )
          )
        end
        attr_accessor :billing_frequency

        # Category of the product
        sig { returns(T.nilable(String)) }
        attr_accessor :category

        # Currency code for the price (e.g., USD, EUR)
        sig { returns(T.nilable(String)) }
        attr_accessor :currency

        # URL to the product image
        sig { returns(T.nilable(String)) }
        attr_accessor :image_url

        # Price of the product
        sig { returns(T.nilable(Float)) }
        attr_accessor :price

        # Pricing model for the product
        sig do
          returns(
            T.nilable(
              BrandDev::Models::BrandAIProductResponse::Product::PricingModel::TaggedSymbol
            )
          )
        end
        attr_accessor :pricing_model

        # URL to the product page
        sig { returns(T.nilable(String)) }
        attr_accessor :url

        # The extracted product data, or null if not a product page
        sig do
          params(
            description: String,
            features: T::Array[String],
            images: T::Array[String],
            name: String,
            tags: T::Array[String],
            target_audience: T::Array[String],
            billing_frequency:
              T.nilable(
                BrandDev::Models::BrandAIProductResponse::Product::BillingFrequency::OrSymbol
              ),
            category: T.nilable(String),
            currency: T.nilable(String),
            image_url: T.nilable(String),
            price: T.nilable(Float),
            pricing_model:
              T.nilable(
                BrandDev::Models::BrandAIProductResponse::Product::PricingModel::OrSymbol
              ),
            url: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Description of the product
          description:,
          # List of product features
          features:,
          # URLs to product images on the page (up to 7)
          images:,
          # Name of the product
          name:,
          # Tags associated with the product
          tags:,
          # Target audience for the product (array of strings)
          target_audience:,
          # Billing frequency for the product
          billing_frequency: nil,
          # Category of the product
          category: nil,
          # Currency code for the price (e.g., USD, EUR)
          currency: nil,
          # URL to the product image
          image_url: nil,
          # Price of the product
          price: nil,
          # Pricing model for the product
          pricing_model: nil,
          # URL to the product page
          url: nil
        )
        end

        sig do
          override.returns(
            {
              description: String,
              features: T::Array[String],
              images: T::Array[String],
              name: String,
              tags: T::Array[String],
              target_audience: T::Array[String],
              billing_frequency:
                T.nilable(
                  BrandDev::Models::BrandAIProductResponse::Product::BillingFrequency::TaggedSymbol
                ),
              category: T.nilable(String),
              currency: T.nilable(String),
              image_url: T.nilable(String),
              price: T.nilable(Float),
              pricing_model:
                T.nilable(
                  BrandDev::Models::BrandAIProductResponse::Product::PricingModel::TaggedSymbol
                ),
              url: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        # Billing frequency for the product
        module BillingFrequency
          extend BrandDev::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                BrandDev::Models::BrandAIProductResponse::Product::BillingFrequency
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MONTHLY =
            T.let(
              :monthly,
              BrandDev::Models::BrandAIProductResponse::Product::BillingFrequency::TaggedSymbol
            )
          YEARLY =
            T.let(
              :yearly,
              BrandDev::Models::BrandAIProductResponse::Product::BillingFrequency::TaggedSymbol
            )
          ONE_TIME =
            T.let(
              :one_time,
              BrandDev::Models::BrandAIProductResponse::Product::BillingFrequency::TaggedSymbol
            )
          USAGE_BASED =
            T.let(
              :usage_based,
              BrandDev::Models::BrandAIProductResponse::Product::BillingFrequency::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                BrandDev::Models::BrandAIProductResponse::Product::BillingFrequency::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Pricing model for the product
        module PricingModel
          extend BrandDev::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                BrandDev::Models::BrandAIProductResponse::Product::PricingModel
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PER_SEAT =
            T.let(
              :per_seat,
              BrandDev::Models::BrandAIProductResponse::Product::PricingModel::TaggedSymbol
            )
          FLAT =
            T.let(
              :flat,
              BrandDev::Models::BrandAIProductResponse::Product::PricingModel::TaggedSymbol
            )
          TIERED =
            T.let(
              :tiered,
              BrandDev::Models::BrandAIProductResponse::Product::PricingModel::TaggedSymbol
            )
          FREEMIUM =
            T.let(
              :freemium,
              BrandDev::Models::BrandAIProductResponse::Product::PricingModel::TaggedSymbol
            )
          CUSTOM =
            T.let(
              :custom,
              BrandDev::Models::BrandAIProductResponse::Product::PricingModel::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                BrandDev::Models::BrandAIProductResponse::Product::PricingModel::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
