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

      sig do
        params(
          data_to_extract:
            T::Array[BrandDev::BrandAIQueryParams::DataToExtract::OrHash],
          domain: String,
          specific_pages: BrandDev::BrandAIQueryParams::SpecificPages::OrHash,
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

        sig do
          params(
            datapoint_description: String,
            datapoint_example: String,
            datapoint_name: String,
            datapoint_type:
              BrandDev::BrandAIQueryParams::DataToExtract::DatapointType::OrSymbol
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
          datapoint_type:
        )
        end

        sig do
          override.returns(
            {
              datapoint_description: String,
              datapoint_example: String,
              datapoint_name: String,
              datapoint_type:
                BrandDev::BrandAIQueryParams::DataToExtract::DatapointType::OrSymbol
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
