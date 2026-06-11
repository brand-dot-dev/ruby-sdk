# typed: strong

module BrandDev
  module Models
    class BrandAIProductsResponse < BrandDev::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            BrandDev::Models::BrandAIProductsResponse,
            BrandDev::Internal::AnyHash
          )
        end

      # Metadata about the API key used for the request. Included in every response
      # whenever a valid API key is provided, even when the response status is not 200.
      sig do
        returns(
          T.nilable(BrandDev::Models::BrandAIProductsResponse::KeyMetadata)
        )
      end
      attr_reader :key_metadata

      sig do
        params(
          key_metadata:
            BrandDev::Models::BrandAIProductsResponse::KeyMetadata::OrHash
        ).void
      end
      attr_writer :key_metadata

      # Array of products extracted from the website
      sig do
        returns(
          T.nilable(
            T::Array[BrandDev::Models::BrandAIProductsResponse::Product]
          )
        )
      end
      attr_reader :products

      sig do
        params(
          products:
            T::Array[BrandDev::Models::BrandAIProductsResponse::Product::OrHash]
        ).void
      end
      attr_writer :products

      sig do
        params(
          key_metadata:
            BrandDev::Models::BrandAIProductsResponse::KeyMetadata::OrHash,
          products:
            T::Array[BrandDev::Models::BrandAIProductsResponse::Product::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        # Metadata about the API key used for the request. Included in every response
        # whenever a valid API key is provided, even when the response status is not 200.
        key_metadata: nil,
        # Array of products extracted from the website
        products: nil
      )
      end

      sig do
        override.returns(
          {
            key_metadata:
              BrandDev::Models::BrandAIProductsResponse::KeyMetadata,
            products:
              T::Array[BrandDev::Models::BrandAIProductsResponse::Product]
          }
        )
      end
      def to_hash
      end

      class KeyMetadata < BrandDev::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              BrandDev::Models::BrandAIProductsResponse::KeyMetadata,
              BrandDev::Internal::AnyHash
            )
          end

        # The number of credits consumed by this request.
        sig { returns(Integer) }
        attr_accessor :credits_consumed

        # The number of credits remaining for your organization after this request.
        sig { returns(Integer) }
        attr_accessor :credits_remaining

        # Metadata about the API key used for the request. Included in every response
        # whenever a valid API key is provided, even when the response status is not 200.
        sig do
          params(credits_consumed: Integer, credits_remaining: Integer).returns(
            T.attached_class
          )
        end
        def self.new(
          # The number of credits consumed by this request.
          credits_consumed:,
          # The number of credits remaining for your organization after this request.
          credits_remaining:
        )
        end

        sig do
          override.returns(
            { credits_consumed: Integer, credits_remaining: Integer }
          )
        end
        def to_hash
        end
      end

      class Product < BrandDev::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              BrandDev::Models::BrandAIProductsResponse::Product,
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

        # Stock Keeping Unit (product identifier). Null if no identifier is found.
        sig { returns(T.nilable(String)) }
        attr_accessor :sku

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
              BrandDev::Models::BrandAIProductsResponse::Product::BillingFrequency::TaggedSymbol
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
              BrandDev::Models::BrandAIProductsResponse::Product::PricingModel::TaggedSymbol
            )
          )
        end
        attr_accessor :pricing_model

        # URL to the product page
        sig { returns(T.nilable(String)) }
        attr_accessor :url

        sig do
          params(
            description: String,
            features: T::Array[String],
            images: T::Array[String],
            name: String,
            sku: T.nilable(String),
            tags: T::Array[String],
            target_audience: T::Array[String],
            billing_frequency:
              T.nilable(
                BrandDev::Models::BrandAIProductsResponse::Product::BillingFrequency::OrSymbol
              ),
            category: T.nilable(String),
            currency: T.nilable(String),
            image_url: T.nilable(String),
            price: T.nilable(Float),
            pricing_model:
              T.nilable(
                BrandDev::Models::BrandAIProductsResponse::Product::PricingModel::OrSymbol
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
          # Stock Keeping Unit (product identifier). Null if no identifier is found.
          sku:,
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
              sku: T.nilable(String),
              tags: T::Array[String],
              target_audience: T::Array[String],
              billing_frequency:
                T.nilable(
                  BrandDev::Models::BrandAIProductsResponse::Product::BillingFrequency::TaggedSymbol
                ),
              category: T.nilable(String),
              currency: T.nilable(String),
              image_url: T.nilable(String),
              price: T.nilable(Float),
              pricing_model:
                T.nilable(
                  BrandDev::Models::BrandAIProductsResponse::Product::PricingModel::TaggedSymbol
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
                BrandDev::Models::BrandAIProductsResponse::Product::BillingFrequency
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MONTHLY =
            T.let(
              :monthly,
              BrandDev::Models::BrandAIProductsResponse::Product::BillingFrequency::TaggedSymbol
            )
          YEARLY =
            T.let(
              :yearly,
              BrandDev::Models::BrandAIProductsResponse::Product::BillingFrequency::TaggedSymbol
            )
          ONE_TIME =
            T.let(
              :one_time,
              BrandDev::Models::BrandAIProductsResponse::Product::BillingFrequency::TaggedSymbol
            )
          USAGE_BASED =
            T.let(
              :usage_based,
              BrandDev::Models::BrandAIProductsResponse::Product::BillingFrequency::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                BrandDev::Models::BrandAIProductsResponse::Product::BillingFrequency::TaggedSymbol
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
                BrandDev::Models::BrandAIProductsResponse::Product::PricingModel
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PER_SEAT =
            T.let(
              :per_seat,
              BrandDev::Models::BrandAIProductsResponse::Product::PricingModel::TaggedSymbol
            )
          FLAT =
            T.let(
              :flat,
              BrandDev::Models::BrandAIProductsResponse::Product::PricingModel::TaggedSymbol
            )
          TIERED =
            T.let(
              :tiered,
              BrandDev::Models::BrandAIProductsResponse::Product::PricingModel::TaggedSymbol
            )
          FREEMIUM =
            T.let(
              :freemium,
              BrandDev::Models::BrandAIProductsResponse::Product::PricingModel::TaggedSymbol
            )
          CUSTOM =
            T.let(
              :custom,
              BrandDev::Models::BrandAIProductsResponse::Product::PricingModel::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                BrandDev::Models::BrandAIProductsResponse::Product::PricingModel::TaggedSymbol
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
