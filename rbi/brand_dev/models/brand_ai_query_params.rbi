# typed: strong

module BrandDev
  module Models
    class BrandAIQueryParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(BrandDev::BrandAIQueryParams, BrandDev::Internal::AnyHash)
        end

      # Array of data points to extract from the website
      sig { returns(T::Array[BrandDev::BrandAIQueryParams::DataToExtract]) }
      attr_accessor :data_to_extract

      # The domain name to analyze
      sig { returns(String) }
      attr_accessor :domain

      # Optional object specifying which pages to analyze
      sig { returns(T.nilable(BrandDev::BrandAIQueryParams::SpecificPages)) }
      attr_reader :specific_pages

      sig do
        params(
          specific_pages: BrandDev::BrandAIQueryParams::SpecificPages::OrHash
        ).void
      end
      attr_writer :specific_pages

      # Optional timeout in milliseconds for the request. If the request takes longer
      # than this value, it will be aborted with a 408 status code. Maximum allowed
      # value is 300000ms (5 minutes).
      sig { returns(T.nilable(Integer)) }
      attr_reader :timeout_ms

      sig { params(timeout_ms: Integer).void }
      attr_writer :timeout_ms

      sig do
        params(
          data_to_extract:
            T::Array[BrandDev::BrandAIQueryParams::DataToExtract::OrHash],
          domain: String,
          specific_pages: BrandDev::BrandAIQueryParams::SpecificPages::OrHash,
          timeout_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Array of data points to extract from the website
        data_to_extract:,
        # The domain name to analyze
        domain:,
        # Optional object specifying which pages to analyze
        specific_pages: nil,
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
            data_to_extract:
              T::Array[BrandDev::BrandAIQueryParams::DataToExtract],
            domain: String,
            specific_pages: BrandDev::BrandAIQueryParams::SpecificPages,
            timeout_ms: Integer,
            request_options: BrandDev::RequestOptions
          }
        )
      end
      def to_hash
      end

      class DataToExtract < BrandDev::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              BrandDev::BrandAIQueryParams::DataToExtract,
              BrandDev::Internal::AnyHash
            )
          end

        # Description of what to extract
        sig { returns(String) }
        attr_accessor :datapoint_description

        # Example of the expected value
        sig { returns(String) }
        attr_accessor :datapoint_example

        # Name of the data point to extract
        sig { returns(String) }
        attr_accessor :datapoint_name

        # Type of the data point
        sig do
          returns(
            BrandDev::BrandAIQueryParams::DataToExtract::DatapointType::OrSymbol
          )
        end
        attr_accessor :datapoint_type

        # Type of items in the list when datapoint_type is 'list'. Defaults to 'string'.
        # Use 'object' to extract an array of objects matching a schema.
        sig do
          returns(
            T.nilable(
              BrandDev::BrandAIQueryParams::DataToExtract::DatapointListType::OrSymbol
            )
          )
        end
        attr_reader :datapoint_list_type

        sig do
          params(
            datapoint_list_type:
              BrandDev::BrandAIQueryParams::DataToExtract::DatapointListType::OrSymbol
          ).void
        end
        attr_writer :datapoint_list_type

        # Schema definition for objects when datapoint_list_type is 'object'. Provide a
        # map of field names to their scalar types.
        sig do
          returns(
            T.nilable(
              T::Hash[
                Symbol,
                BrandDev::BrandAIQueryParams::DataToExtract::DatapointObjectSchema::OrSymbol
              ]
            )
          )
        end
        attr_reader :datapoint_object_schema

        sig do
          params(
            datapoint_object_schema:
              T::Hash[
                Symbol,
                BrandDev::BrandAIQueryParams::DataToExtract::DatapointObjectSchema::OrSymbol
              ]
          ).void
        end
        attr_writer :datapoint_object_schema

        sig do
          params(
            datapoint_description: String,
            datapoint_example: String,
            datapoint_name: String,
            datapoint_type:
              BrandDev::BrandAIQueryParams::DataToExtract::DatapointType::OrSymbol,
            datapoint_list_type:
              BrandDev::BrandAIQueryParams::DataToExtract::DatapointListType::OrSymbol,
            datapoint_object_schema:
              T::Hash[
                Symbol,
                BrandDev::BrandAIQueryParams::DataToExtract::DatapointObjectSchema::OrSymbol
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # Description of what to extract
          datapoint_description:,
          # Example of the expected value
          datapoint_example:,
          # Name of the data point to extract
          datapoint_name:,
          # Type of the data point
          datapoint_type:,
          # Type of items in the list when datapoint_type is 'list'. Defaults to 'string'.
          # Use 'object' to extract an array of objects matching a schema.
          datapoint_list_type: nil,
          # Schema definition for objects when datapoint_list_type is 'object'. Provide a
          # map of field names to their scalar types.
          datapoint_object_schema: nil
        )
        end

        sig do
          override.returns(
            {
              datapoint_description: String,
              datapoint_example: String,
              datapoint_name: String,
              datapoint_type:
                BrandDev::BrandAIQueryParams::DataToExtract::DatapointType::OrSymbol,
              datapoint_list_type:
                BrandDev::BrandAIQueryParams::DataToExtract::DatapointListType::OrSymbol,
              datapoint_object_schema:
                T::Hash[
                  Symbol,
                  BrandDev::BrandAIQueryParams::DataToExtract::DatapointObjectSchema::OrSymbol
                ]
            }
          )
        end
        def to_hash
        end

        # Type of the data point
        module DatapointType
          extend BrandDev::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                BrandDev::BrandAIQueryParams::DataToExtract::DatapointType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TEXT =
            T.let(
              :text,
              BrandDev::BrandAIQueryParams::DataToExtract::DatapointType::TaggedSymbol
            )
          NUMBER =
            T.let(
              :number,
              BrandDev::BrandAIQueryParams::DataToExtract::DatapointType::TaggedSymbol
            )
          DATE =
            T.let(
              :date,
              BrandDev::BrandAIQueryParams::DataToExtract::DatapointType::TaggedSymbol
            )
          BOOLEAN =
            T.let(
              :boolean,
              BrandDev::BrandAIQueryParams::DataToExtract::DatapointType::TaggedSymbol
            )
          LIST =
            T.let(
              :list,
              BrandDev::BrandAIQueryParams::DataToExtract::DatapointType::TaggedSymbol
            )
          URL =
            T.let(
              :url,
              BrandDev::BrandAIQueryParams::DataToExtract::DatapointType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                BrandDev::BrandAIQueryParams::DataToExtract::DatapointType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Type of items in the list when datapoint_type is 'list'. Defaults to 'string'.
        # Use 'object' to extract an array of objects matching a schema.
        module DatapointListType
          extend BrandDev::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                BrandDev::BrandAIQueryParams::DataToExtract::DatapointListType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STRING =
            T.let(
              :string,
              BrandDev::BrandAIQueryParams::DataToExtract::DatapointListType::TaggedSymbol
            )
          TEXT =
            T.let(
              :text,
              BrandDev::BrandAIQueryParams::DataToExtract::DatapointListType::TaggedSymbol
            )
          NUMBER =
            T.let(
              :number,
              BrandDev::BrandAIQueryParams::DataToExtract::DatapointListType::TaggedSymbol
            )
          DATE =
            T.let(
              :date,
              BrandDev::BrandAIQueryParams::DataToExtract::DatapointListType::TaggedSymbol
            )
          BOOLEAN =
            T.let(
              :boolean,
              BrandDev::BrandAIQueryParams::DataToExtract::DatapointListType::TaggedSymbol
            )
          LIST =
            T.let(
              :list,
              BrandDev::BrandAIQueryParams::DataToExtract::DatapointListType::TaggedSymbol
            )
          URL =
            T.let(
              :url,
              BrandDev::BrandAIQueryParams::DataToExtract::DatapointListType::TaggedSymbol
            )
          OBJECT =
            T.let(
              :object,
              BrandDev::BrandAIQueryParams::DataToExtract::DatapointListType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                BrandDev::BrandAIQueryParams::DataToExtract::DatapointListType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module DatapointObjectSchema
          extend BrandDev::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                BrandDev::BrandAIQueryParams::DataToExtract::DatapointObjectSchema
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STRING =
            T.let(
              :string,
              BrandDev::BrandAIQueryParams::DataToExtract::DatapointObjectSchema::TaggedSymbol
            )
          NUMBER =
            T.let(
              :number,
              BrandDev::BrandAIQueryParams::DataToExtract::DatapointObjectSchema::TaggedSymbol
            )
          DATE =
            T.let(
              :date,
              BrandDev::BrandAIQueryParams::DataToExtract::DatapointObjectSchema::TaggedSymbol
            )
          BOOLEAN =
            T.let(
              :boolean,
              BrandDev::BrandAIQueryParams::DataToExtract::DatapointObjectSchema::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                BrandDev::BrandAIQueryParams::DataToExtract::DatapointObjectSchema::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class SpecificPages < BrandDev::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              BrandDev::BrandAIQueryParams::SpecificPages,
              BrandDev::Internal::AnyHash
            )
          end

        # Whether to analyze the about us page
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :about_us

        sig { params(about_us: T::Boolean).void }
        attr_writer :about_us

        # Whether to analyze the blog
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :blog

        sig { params(blog: T::Boolean).void }
        attr_writer :blog

        # Whether to analyze the careers page
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :careers

        sig { params(careers: T::Boolean).void }
        attr_writer :careers

        # Whether to analyze the contact us page
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :contact_us

        sig { params(contact_us: T::Boolean).void }
        attr_writer :contact_us

        # Whether to analyze the FAQ page
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :faq

        sig { params(faq: T::Boolean).void }
        attr_writer :faq

        # Whether to analyze the home page
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :home_page

        sig { params(home_page: T::Boolean).void }
        attr_writer :home_page

        # Whether to analyze the pricing page
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :pricing

        sig { params(pricing: T::Boolean).void }
        attr_writer :pricing

        # Whether to analyze the privacy policy page
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :privacy_policy

        sig { params(privacy_policy: T::Boolean).void }
        attr_writer :privacy_policy

        # Whether to analyze the terms and conditions page
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :terms_and_conditions

        sig { params(terms_and_conditions: T::Boolean).void }
        attr_writer :terms_and_conditions

        # Optional object specifying which pages to analyze
        sig do
          params(
            about_us: T::Boolean,
            blog: T::Boolean,
            careers: T::Boolean,
            contact_us: T::Boolean,
            faq: T::Boolean,
            home_page: T::Boolean,
            pricing: T::Boolean,
            privacy_policy: T::Boolean,
            terms_and_conditions: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # Whether to analyze the about us page
          about_us: nil,
          # Whether to analyze the blog
          blog: nil,
          # Whether to analyze the careers page
          careers: nil,
          # Whether to analyze the contact us page
          contact_us: nil,
          # Whether to analyze the FAQ page
          faq: nil,
          # Whether to analyze the home page
          home_page: nil,
          # Whether to analyze the pricing page
          pricing: nil,
          # Whether to analyze the privacy policy page
          privacy_policy: nil,
          # Whether to analyze the terms and conditions page
          terms_and_conditions: nil
        )
        end

        sig do
          override.returns(
            {
              about_us: T::Boolean,
              blog: T::Boolean,
              careers: T::Boolean,
              contact_us: T::Boolean,
              faq: T::Boolean,
              home_page: T::Boolean,
              pricing: T::Boolean,
              privacy_policy: T::Boolean,
              terms_and_conditions: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
