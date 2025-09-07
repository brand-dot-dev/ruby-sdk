# typed: strong

module BrandDev
  module Models
    class BrandIdentifyFromTransactionResponse < BrandDev::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            BrandDev::Models::BrandIdentifyFromTransactionResponse,
            BrandDev::Internal::AnyHash
          )
        end

      # Detailed brand information
      sig do
        returns(
          T.nilable(
            BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand
          )
        )
      end
      attr_reader :brand

      sig do
        params(
          brand:
            BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::OrHash
        ).void
      end
      attr_writer :brand

      # HTTP status code
      sig { returns(T.nilable(Integer)) }
      attr_reader :code

      sig { params(code: Integer).void }
      attr_writer :code

      # Status of the response, e.g., 'ok'
      sig { returns(T.nilable(String)) }
      attr_reader :status

      sig { params(status: String).void }
      attr_writer :status

      sig do
        params(
          brand:
            BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::OrHash,
          code: Integer,
          status: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Detailed brand information
        brand: nil,
        # HTTP status code
        code: nil,
        # Status of the response, e.g., 'ok'
        status: nil
      )
      end

      sig do
        override.returns(
          {
            brand:
              BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand,
            code: Integer,
            status: String
          }
        )
      end
      def to_hash
      end

      class Brand < BrandDev::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand,
              BrandDev::Internal::AnyHash
            )
          end

        # Physical address of the brand
        sig do
          returns(
            T.nilable(
              BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Address
            )
          )
        end
        attr_reader :address

        sig do
          params(
            address:
              BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Address::OrHash
          ).void
        end
        attr_writer :address

        # An array of backdrop images for the brand
        sig do
          returns(
            T.nilable(
              T::Array[
                BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Backdrop
              ]
            )
          )
        end
        attr_reader :backdrops

        sig do
          params(
            backdrops:
              T::Array[
                BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Backdrop::OrHash
              ]
          ).void
        end
        attr_writer :backdrops

        # An array of brand colors
        sig do
          returns(
            T.nilable(
              T::Array[
                BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Color
              ]
            )
          )
        end
        attr_reader :colors

        sig do
          params(
            colors:
              T::Array[
                BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Color::OrHash
              ]
          ).void
        end
        attr_writer :colors

        # A brief description of the brand
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # The domain name of the brand
        sig { returns(T.nilable(String)) }
        attr_reader :domain

        sig { params(domain: String).void }
        attr_writer :domain

        # Company email address
        sig { returns(T.nilable(String)) }
        attr_reader :email

        sig { params(email: String).void }
        attr_writer :email

        # Industry classification information for the brand
        sig do
          returns(
            T.nilable(
              BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries
            )
          )
        end
        attr_reader :industries

        sig do
          params(
            industries:
              BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::OrHash
          ).void
        end
        attr_writer :industries

        # Indicates whether the brand content is not safe for work (NSFW)
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_nsfw

        sig { params(is_nsfw: T::Boolean).void }
        attr_writer :is_nsfw

        # Important website links for the brand
        sig do
          returns(
            T.nilable(
              BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Links
            )
          )
        end
        attr_reader :links

        sig do
          params(
            links:
              BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Links::OrHash
          ).void
        end
        attr_writer :links

        # An array of logos associated with the brand
        sig do
          returns(
            T.nilable(
              T::Array[
                BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo
              ]
            )
          )
        end
        attr_reader :logos

        sig do
          params(
            logos:
              T::Array[
                BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::OrHash
              ]
          ).void
        end
        attr_writer :logos

        # Company phone number
        sig { returns(T.nilable(String)) }
        attr_reader :phone

        sig { params(phone: String).void }
        attr_writer :phone

        # The brand's slogan
        sig { returns(T.nilable(String)) }
        attr_reader :slogan

        sig { params(slogan: String).void }
        attr_writer :slogan

        # An array of social media links for the brand
        sig do
          returns(
            T.nilable(
              T::Array[
                BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Social
              ]
            )
          )
        end
        attr_reader :socials

        sig do
          params(
            socials:
              T::Array[
                BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Social::OrHash
              ]
          ).void
        end
        attr_writer :socials

        # Stock market information for this brand (will be null if not a publicly traded
        # company)
        sig do
          returns(
            T.nilable(
              BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Stock
            )
          )
        end
        attr_reader :stock

        sig do
          params(
            stock:
              BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Stock::OrHash
          ).void
        end
        attr_writer :stock

        # The title or name of the brand
        sig { returns(T.nilable(String)) }
        attr_reader :title

        sig { params(title: String).void }
        attr_writer :title

        # Detailed brand information
        sig do
          params(
            address:
              BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Address::OrHash,
            backdrops:
              T::Array[
                BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Backdrop::OrHash
              ],
            colors:
              T::Array[
                BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Color::OrHash
              ],
            description: String,
            domain: String,
            email: String,
            industries:
              BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::OrHash,
            is_nsfw: T::Boolean,
            links:
              BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Links::OrHash,
            logos:
              T::Array[
                BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::OrHash
              ],
            phone: String,
            slogan: String,
            socials:
              T::Array[
                BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Social::OrHash
              ],
            stock:
              BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Stock::OrHash,
            title: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Physical address of the brand
          address: nil,
          # An array of backdrop images for the brand
          backdrops: nil,
          # An array of brand colors
          colors: nil,
          # A brief description of the brand
          description: nil,
          # The domain name of the brand
          domain: nil,
          # Company email address
          email: nil,
          # Industry classification information for the brand
          industries: nil,
          # Indicates whether the brand content is not safe for work (NSFW)
          is_nsfw: nil,
          # Important website links for the brand
          links: nil,
          # An array of logos associated with the brand
          logos: nil,
          # Company phone number
          phone: nil,
          # The brand's slogan
          slogan: nil,
          # An array of social media links for the brand
          socials: nil,
          # Stock market information for this brand (will be null if not a publicly traded
          # company)
          stock: nil,
          # The title or name of the brand
          title: nil
        )
        end

        sig do
          override.returns(
            {
              address:
                BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Address,
              backdrops:
                T::Array[
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Backdrop
                ],
              colors:
                T::Array[
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Color
                ],
              description: String,
              domain: String,
              email: String,
              industries:
                BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries,
              is_nsfw: T::Boolean,
              links:
                BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Links,
              logos:
                T::Array[
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo
                ],
              phone: String,
              slogan: String,
              socials:
                T::Array[
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Social
                ],
              stock:
                BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Stock,
              title: String
            }
          )
        end
        def to_hash
        end

        class Address < BrandDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Address,
                BrandDev::Internal::AnyHash
              )
            end

          # City name
          sig { returns(T.nilable(String)) }
          attr_reader :city

          sig { params(city: String).void }
          attr_writer :city

          # Country name
          sig { returns(T.nilable(String)) }
          attr_reader :country

          sig { params(country: String).void }
          attr_writer :country

          # Country code
          sig { returns(T.nilable(String)) }
          attr_reader :country_code

          sig { params(country_code: String).void }
          attr_writer :country_code

          # Postal or ZIP code
          sig { returns(T.nilable(String)) }
          attr_reader :postal_code

          sig { params(postal_code: String).void }
          attr_writer :postal_code

          # State or province code
          sig { returns(T.nilable(String)) }
          attr_reader :state_code

          sig { params(state_code: String).void }
          attr_writer :state_code

          # State or province name
          sig { returns(T.nilable(String)) }
          attr_reader :state_province

          sig { params(state_province: String).void }
          attr_writer :state_province

          # Street address
          sig { returns(T.nilable(String)) }
          attr_reader :street

          sig { params(street: String).void }
          attr_writer :street

          # Physical address of the brand
          sig do
            params(
              city: String,
              country: String,
              country_code: String,
              postal_code: String,
              state_code: String,
              state_province: String,
              street: String
            ).returns(T.attached_class)
          end
          def self.new(
            # City name
            city: nil,
            # Country name
            country: nil,
            # Country code
            country_code: nil,
            # Postal or ZIP code
            postal_code: nil,
            # State or province code
            state_code: nil,
            # State or province name
            state_province: nil,
            # Street address
            street: nil
          )
          end

          sig do
            override.returns(
              {
                city: String,
                country: String,
                country_code: String,
                postal_code: String,
                state_code: String,
                state_province: String,
                street: String
              }
            )
          end
          def to_hash
          end
        end

        class Backdrop < BrandDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Backdrop,
                BrandDev::Internal::AnyHash
              )
            end

          # Array of colors in the backdrop image
          sig do
            returns(
              T.nilable(
                T::Array[
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Backdrop::Color
                ]
              )
            )
          end
          attr_reader :colors

          sig do
            params(
              colors:
                T::Array[
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Backdrop::Color::OrHash
                ]
            ).void
          end
          attr_writer :colors

          # Resolution of the backdrop image
          sig do
            returns(
              T.nilable(
                BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Backdrop::Resolution
              )
            )
          end
          attr_reader :resolution

          sig do
            params(
              resolution:
                BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Backdrop::Resolution::OrHash
            ).void
          end
          attr_writer :resolution

          # URL of the backdrop image
          sig { returns(T.nilable(String)) }
          attr_reader :url

          sig { params(url: String).void }
          attr_writer :url

          sig do
            params(
              colors:
                T::Array[
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Backdrop::Color::OrHash
                ],
              resolution:
                BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Backdrop::Resolution::OrHash,
              url: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Array of colors in the backdrop image
            colors: nil,
            # Resolution of the backdrop image
            resolution: nil,
            # URL of the backdrop image
            url: nil
          )
          end

          sig do
            override.returns(
              {
                colors:
                  T::Array[
                    BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Backdrop::Color
                  ],
                resolution:
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Backdrop::Resolution,
                url: String
              }
            )
          end
          def to_hash
          end

          class Color < BrandDev::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Backdrop::Color,
                  BrandDev::Internal::AnyHash
                )
              end

            # Color in hexadecimal format
            sig { returns(T.nilable(String)) }
            attr_reader :hex

            sig { params(hex: String).void }
            attr_writer :hex

            # Name of the color
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig { params(hex: String, name: String).returns(T.attached_class) }
            def self.new(
              # Color in hexadecimal format
              hex: nil,
              # Name of the color
              name: nil
            )
            end

            sig { override.returns({ hex: String, name: String }) }
            def to_hash
            end
          end

          class Resolution < BrandDev::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Backdrop::Resolution,
                  BrandDev::Internal::AnyHash
                )
              end

            # Aspect ratio of the image (width/height)
            sig { returns(T.nilable(Float)) }
            attr_reader :aspect_ratio

            sig { params(aspect_ratio: Float).void }
            attr_writer :aspect_ratio

            # Height of the image in pixels
            sig { returns(T.nilable(Integer)) }
            attr_reader :height

            sig { params(height: Integer).void }
            attr_writer :height

            # Width of the image in pixels
            sig { returns(T.nilable(Integer)) }
            attr_reader :width

            sig { params(width: Integer).void }
            attr_writer :width

            # Resolution of the backdrop image
            sig do
              params(
                aspect_ratio: Float,
                height: Integer,
                width: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              # Aspect ratio of the image (width/height)
              aspect_ratio: nil,
              # Height of the image in pixels
              height: nil,
              # Width of the image in pixels
              width: nil
            )
            end

            sig do
              override.returns(
                { aspect_ratio: Float, height: Integer, width: Integer }
              )
            end
            def to_hash
            end
          end
        end

        class Color < BrandDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Color,
                BrandDev::Internal::AnyHash
              )
            end

          # Color in hexadecimal format
          sig { returns(T.nilable(String)) }
          attr_reader :hex

          sig { params(hex: String).void }
          attr_writer :hex

          # Name of the color
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig { params(hex: String, name: String).returns(T.attached_class) }
          def self.new(
            # Color in hexadecimal format
            hex: nil,
            # Name of the color
            name: nil
          )
          end

          sig { override.returns({ hex: String, name: String }) }
          def to_hash
          end
        end

        class Industries < BrandDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries,
                BrandDev::Internal::AnyHash
              )
            end

          # Easy Industry Classification - array of industry and subindustry pairs
          sig do
            returns(
              T.nilable(
                T::Array[
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic
                ]
              )
            )
          end
          attr_reader :eic

          sig do
            params(
              eic:
                T::Array[
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::OrHash
                ]
            ).void
          end
          attr_writer :eic

          # Industry classification information for the brand
          sig do
            params(
              eic:
                T::Array[
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Easy Industry Classification - array of industry and subindustry pairs
            eic: nil
          )
          end

          sig do
            override.returns(
              {
                eic:
                  T::Array[
                    BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic
                  ]
              }
            )
          end
          def to_hash
          end

          class Eic < BrandDev::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic,
                  BrandDev::Internal::AnyHash
                )
              end

            # Industry classification enum
            sig do
              returns(
                BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Industry::TaggedSymbol
              )
            end
            attr_accessor :industry

            # Subindustry classification enum
            sig do
              returns(
                BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
              )
            end
            attr_accessor :subindustry

            sig do
              params(
                industry:
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Industry::OrSymbol,
                subindustry:
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Industry classification enum
              industry:,
              # Subindustry classification enum
              subindustry:
            )
            end

            sig do
              override.returns(
                {
                  industry:
                    BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Industry::TaggedSymbol,
                  subindustry:
                    BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                }
              )
            end
            def to_hash
            end

            # Industry classification enum
            module Industry
              extend BrandDev::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Industry
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              AEROSPACE_DEFENSE =
                T.let(
                  :"Aerospace & Defense",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              TECHNOLOGY =
                T.let(
                  :Technology,
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              FINANCE =
                T.let(
                  :Finance,
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              HEALTHCARE =
                T.let(
                  :Healthcare,
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              RETAIL_E_COMMERCE =
                T.let(
                  :"Retail & E-commerce",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              ENTERTAINMENT =
                T.let(
                  :Entertainment,
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              EDUCATION =
                T.let(
                  :Education,
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              GOVERNMENT_NONPROFIT =
                T.let(
                  :"Government & Nonprofit",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              INDUSTRIAL_ENERGY =
                T.let(
                  :"Industrial & Energy",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              AUTOMOTIVE_TRANSPORTATION =
                T.let(
                  :"Automotive & Transportation",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              LIFESTYLE_LEISURE =
                T.let(
                  :"Lifestyle & Leisure",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              LUXURY_FASHION =
                T.let(
                  :"Luxury & Fashion",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              NEWS_MEDIA =
                T.let(
                  :"News & Media",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              SPORTS =
                T.let(
                  :Sports,
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              REAL_ESTATE_PROP_TECH =
                T.let(
                  :"Real Estate & PropTech",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              LEGAL_COMPLIANCE =
                T.let(
                  :"Legal & Compliance",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              TELECOMMUNICATIONS =
                T.let(
                  :Telecommunications,
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              AGRICULTURE_FOOD =
                T.let(
                  :"Agriculture & Food",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              PROFESSIONAL_SERVICES_AGENCIES =
                T.let(
                  :"Professional Services & Agencies",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              CHEMICALS_MATERIALS =
                T.let(
                  :"Chemicals & Materials",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              LOGISTICS_SUPPLY_CHAIN =
                T.let(
                  :"Logistics & Supply Chain",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              HOSPITALITY_TOURISM =
                T.let(
                  :"Hospitality & Tourism",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              CONSTRUCTION_BUILT_ENVIRONMENT =
                T.let(
                  :"Construction & Built Environment",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )
              CONSUMER_PACKAGED_GOODS_CPG =
                T.let(
                  :"Consumer Packaged Goods (CPG)",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Industry::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Subindustry classification enum
            module Subindustry
              extend BrandDev::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              DEFENSE_SYSTEMS_MILITARY_HARDWARE =
                T.let(
                  :"Defense Systems & Military Hardware",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              AEROSPACE_MANUFACTURING =
                T.let(
                  :"Aerospace Manufacturing",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              AVIONICS_NAVIGATION_TECHNOLOGY =
                T.let(
                  :"Avionics & Navigation Technology",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              SUBSEA_NAVAL_DEFENSE_SYSTEMS =
                T.let(
                  :"Subsea & Naval Defense Systems",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              SPACE_SATELLITE_TECHNOLOGY =
                T.let(
                  :"Space & Satellite Technology",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              DEFENSE_IT_SYSTEMS_INTEGRATION =
                T.let(
                  :"Defense IT & Systems Integration",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              SOFTWARE_B2_B =
                T.let(
                  :"Software (B2B)",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              SOFTWARE_B2_C =
                T.let(
                  :"Software (B2C)",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CLOUD_INFRASTRUCTURE_DEV_OPS =
                T.let(
                  :"Cloud Infrastructure & DevOps",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CYBERSECURITY =
                T.let(
                  :Cybersecurity,
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              ARTIFICIAL_INTELLIGENCE_MACHINE_LEARNING =
                T.let(
                  :"Artificial Intelligence & Machine Learning",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              DATA_INFRASTRUCTURE_ANALYTICS =
                T.let(
                  :"Data Infrastructure & Analytics",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              HARDWARE_SEMICONDUCTORS =
                T.let(
                  :"Hardware & Semiconductors",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              FINTECH_INFRASTRUCTURE =
                T.let(
                  :"Fintech Infrastructure",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              E_COMMERCE_MARKETPLACE_PLATFORMS =
                T.let(
                  :"eCommerce & Marketplace Platforms",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              DEVELOPER_TOOLS_APIS =
                T.let(
                  :"Developer Tools & APIs",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              WEB3_BLOCKCHAIN =
                T.let(
                  :"Web3 & Blockchain",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              XR_SPATIAL_COMPUTING =
                T.let(
                  :"XR & Spatial Computing",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              BANKING_LENDING =
                T.let(
                  :"Banking & Lending",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              INVESTMENT_MANAGEMENT_WEALTH_TECH =
                T.let(
                  :"Investment Management & WealthTech",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              INSURANCE_INSUR_TECH =
                T.let(
                  :"Insurance & InsurTech",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              PAYMENTS_MONEY_MOVEMENT =
                T.let(
                  :"Payments & Money Movement",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              ACCOUNTING_TAX_FINANCIAL_PLANNING_TOOLS =
                T.let(
                  :"Accounting, Tax & Financial Planning Tools",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CAPITAL_MARKETS_TRADING_PLATFORMS =
                T.let(
                  :"Capital Markets & Trading Platforms",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              FINANCIAL_INFRASTRUCTURE_APIS =
                T.let(
                  :"Financial Infrastructure & APIs",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CREDIT_SCORING_RISK_MANAGEMENT =
                T.let(
                  :"Credit Scoring & Risk Management",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CRYPTOCURRENCY_DIGITAL_ASSETS =
                T.let(
                  :"Cryptocurrency & Digital Assets",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              BNPL_ALTERNATIVE_FINANCING =
                T.let(
                  :"BNPL & Alternative Financing",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              HEALTHCARE_PROVIDERS_SERVICES =
                T.let(
                  :"Healthcare Providers & Services",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              PHARMACEUTICALS_DRUG_DEVELOPMENT =
                T.let(
                  :"Pharmaceuticals & Drug Development",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              MEDICAL_DEVICES_DIAGNOSTICS =
                T.let(
                  :"Medical Devices & Diagnostics",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              BIOTECHNOLOGY_GENOMICS =
                T.let(
                  :"Biotechnology & Genomics",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              DIGITAL_HEALTH_TELEMEDICINE =
                T.let(
                  :"Digital Health & Telemedicine",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              HEALTH_INSURANCE_BENEFITS_TECH =
                T.let(
                  :"Health Insurance & Benefits Tech",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CLINICAL_TRIALS_RESEARCH_PLATFORMS =
                T.let(
                  :"Clinical Trials & Research Platforms",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              MENTAL_HEALTH_WELLNESS =
                T.let(
                  :"Mental Health & Wellness",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              HEALTHCARE_IT_EHR_SYSTEMS =
                T.let(
                  :"Healthcare IT & EHR Systems",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CONSUMER_HEALTH_WELLNESS_PRODUCTS =
                T.let(
                  :"Consumer Health & Wellness Products",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              ONLINE_MARKETPLACES =
                T.let(
                  :"Online Marketplaces",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              DIRECT_TO_CONSUMER_DTC_BRANDS =
                T.let(
                  :"Direct-to-Consumer (DTC) Brands",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              RETAIL_TECH_POINT_OF_SALE_SYSTEMS =
                T.let(
                  :"Retail Tech & Point-of-Sale Systems",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              OMNICHANNEL_IN_STORE_RETAIL =
                T.let(
                  :"Omnichannel & In-Store Retail",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              E_COMMERCE_ENABLEMENT_INFRASTRUCTURE =
                T.let(
                  :"E-commerce Enablement & Infrastructure",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              SUBSCRIPTION_MEMBERSHIP_COMMERCE =
                T.let(
                  :"Subscription & Membership Commerce",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              SOCIAL_COMMERCE_INFLUENCER_PLATFORMS =
                T.let(
                  :"Social Commerce & Influencer Platforms",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              FASHION_APPAREL_RETAIL =
                T.let(
                  :"Fashion & Apparel Retail",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              FOOD_BEVERAGE_GROCERY_E_COMMERCE =
                T.let(
                  :"Food, Beverage & Grocery E-commerce",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              STREAMING_PLATFORMS_VIDEO_MUSIC_AUDIO =
                T.let(
                  :"Streaming Platforms (Video, Music, Audio)",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              GAMING_INTERACTIVE_ENTERTAINMENT =
                T.let(
                  :"Gaming & Interactive Entertainment",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CREATOR_ECONOMY_INFLUENCER_PLATFORMS =
                T.let(
                  :"Creator Economy & Influencer Platforms",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              ADVERTISING_ADTECH_MEDIA_BUYING =
                T.let(
                  :"Advertising, Adtech & Media Buying",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              FILM_TV_PRODUCTION_STUDIOS =
                T.let(
                  :"Film, TV & Production Studios",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              EVENTS_VENUES_LIVE_ENTERTAINMENT =
                T.let(
                  :"Events, Venues & Live Entertainment",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              VIRTUAL_WORLDS_METAVERSE_EXPERIENCES =
                T.let(
                  :"Virtual Worlds & Metaverse Experiences",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              K_12_EDUCATION_PLATFORMS_TOOLS =
                T.let(
                  :"K-12 Education Platforms & Tools",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              HIGHER_EDUCATION_UNIVERSITY_TECH =
                T.let(
                  :"Higher Education & University Tech",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              ONLINE_LEARNING_MOO_CS =
                T.let(
                  :"Online Learning & MOOCs",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              TEST_PREP_CERTIFICATION =
                T.let(
                  :"Test Prep & Certification",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CORPORATE_TRAINING_UPSKILLING =
                T.let(
                  :"Corporate Training & Upskilling",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              TUTORING_SUPPLEMENTAL_LEARNING =
                T.let(
                  :"Tutoring & Supplemental Learning",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              EDUCATION_MANAGEMENT_SYSTEMS_LMS_SIS =
                T.let(
                  :"Education Management Systems (LMS/SIS)",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              LANGUAGE_LEARNING =
                T.let(
                  :"Language Learning",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CREATOR_LED_COHORT_BASED_COURSES =
                T.let(
                  :"Creator-Led & Cohort-Based Courses",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              SPECIAL_EDUCATION_ACCESSIBILITY_TOOLS =
                T.let(
                  :"Special Education & Accessibility Tools",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              GOVERNMENT_TECHNOLOGY_DIGITAL_SERVICES =
                T.let(
                  :"Government Technology & Digital Services",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CIVIC_ENGAGEMENT_POLICY_PLATFORMS =
                T.let(
                  :"Civic Engagement & Policy Platforms",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              INTERNATIONAL_DEVELOPMENT_HUMANITARIAN_AID =
                T.let(
                  :"International Development & Humanitarian Aid",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              PHILANTHROPY_GRANTMAKING =
                T.let(
                  :"Philanthropy & Grantmaking",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              NONPROFIT_OPERATIONS_FUNDRAISING_TOOLS =
                T.let(
                  :"Nonprofit Operations & Fundraising Tools",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              PUBLIC_HEALTH_SOCIAL_SERVICES =
                T.let(
                  :"Public Health & Social Services",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              EDUCATION_YOUTH_DEVELOPMENT_PROGRAMS =
                T.let(
                  :"Education & Youth Development Programs",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              ENVIRONMENTAL_CLIMATE_ACTION_ORGANIZATIONS =
                T.let(
                  :"Environmental & Climate Action Organizations",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              LEGAL_AID_SOCIAL_JUSTICE_ADVOCACY =
                T.let(
                  :"Legal Aid & Social Justice Advocacy",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              MUNICIPAL_INFRASTRUCTURE_SERVICES =
                T.let(
                  :"Municipal & Infrastructure Services",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              MANUFACTURING_INDUSTRIAL_AUTOMATION =
                T.let(
                  :"Manufacturing & Industrial Automation",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              ENERGY_PRODUCTION_OIL_GAS_NUCLEAR =
                T.let(
                  :"Energy Production (Oil, Gas, Nuclear)",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              RENEWABLE_ENERGY_CLEANTECH =
                T.let(
                  :"Renewable Energy & Cleantech",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              UTILITIES_GRID_INFRASTRUCTURE =
                T.let(
                  :"Utilities & Grid Infrastructure",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              INDUSTRIAL_IO_T_MONITORING_SYSTEMS =
                T.let(
                  :"Industrial IoT & Monitoring Systems",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CONSTRUCTION_HEAVY_EQUIPMENT =
                T.let(
                  :"Construction & Heavy Equipment",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              MINING_NATURAL_RESOURCES =
                T.let(
                  :"Mining & Natural Resources",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              ENVIRONMENTAL_ENGINEERING_SUSTAINABILITY =
                T.let(
                  :"Environmental Engineering & Sustainability",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              ENERGY_STORAGE_BATTERY_TECHNOLOGY =
                T.let(
                  :"Energy Storage & Battery Technology",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              AUTOMOTIVE_OE_MS_VEHICLE_MANUFACTURING =
                T.let(
                  :"Automotive OEMs & Vehicle Manufacturing",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              ELECTRIC_VEHICLES_E_VS_CHARGING_INFRASTRUCTURE =
                T.let(
                  :"Electric Vehicles (EVs) & Charging Infrastructure",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              MOBILITY_AS_A_SERVICE_MAA_S =
                T.let(
                  :"Mobility-as-a-Service (MaaS)",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              FLEET_MANAGEMENT =
                T.let(
                  :"Fleet Management",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              PUBLIC_TRANSIT_URBAN_MOBILITY =
                T.let(
                  :"Public Transit & Urban Mobility",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              AUTONOMOUS_VEHICLES_ADAS =
                T.let(
                  :"Autonomous Vehicles & ADAS",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              AFTERMARKET_PARTS_SERVICES =
                T.let(
                  :"Aftermarket Parts & Services",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              TELEMATICS_VEHICLE_CONNECTIVITY =
                T.let(
                  :"Telematics & Vehicle Connectivity",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              AVIATION_AEROSPACE_TRANSPORT =
                T.let(
                  :"Aviation & Aerospace Transport",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              MARITIME_SHIPPING =
                T.let(
                  :"Maritime Shipping",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              FITNESS_WELLNESS =
                T.let(
                  :"Fitness & Wellness",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              BEAUTY_PERSONAL_CARE =
                T.let(
                  :"Beauty & Personal Care",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              HOME_LIVING =
                T.let(
                  :"Home & Living",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              DATING_RELATIONSHIPS =
                T.let(
                  :"Dating & Relationships",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              HOBBIES_CRAFTS_DIY =
                T.let(
                  :"Hobbies, Crafts & DIY",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              OUTDOOR_RECREATIONAL_GEAR =
                T.let(
                  :"Outdoor & Recreational Gear",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              EVENTS_EXPERIENCES_TICKETING_PLATFORMS =
                T.let(
                  :"Events, Experiences & Ticketing Platforms",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              DESIGNER_LUXURY_APPAREL =
                T.let(
                  :"Designer & Luxury Apparel",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              ACCESSORIES_JEWELRY_WATCHES =
                T.let(
                  :"Accessories, Jewelry & Watches",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              FOOTWEAR_LEATHER_GOODS =
                T.let(
                  :"Footwear & Leather Goods",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              BEAUTY_FRAGRANCE_SKINCARE =
                T.let(
                  :"Beauty, Fragrance & Skincare",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              FASHION_MARKETPLACES_RETAIL_PLATFORMS =
                T.let(
                  :"Fashion Marketplaces & Retail Platforms",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              SUSTAINABLE_ETHICAL_FASHION =
                T.let(
                  :"Sustainable & Ethical Fashion",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              RESALE_VINTAGE_CIRCULAR_FASHION =
                T.let(
                  :"Resale, Vintage & Circular Fashion",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              FASHION_TECH_VIRTUAL_TRY_ONS =
                T.let(
                  :"Fashion Tech & Virtual Try-Ons",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              STREETWEAR_EMERGING_LUXURY =
                T.let(
                  :"Streetwear & Emerging Luxury",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              COUTURE_MADE_TO_MEASURE =
                T.let(
                  :"Couture & Made-to-Measure",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              NEWS_PUBLISHING_JOURNALISM =
                T.let(
                  :"News Publishing & Journalism",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              DIGITAL_MEDIA_CONTENT_PLATFORMS =
                T.let(
                  :"Digital Media & Content Platforms",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              BROADCASTING_TV_RADIO =
                T.let(
                  :"Broadcasting (TV & Radio)",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              PODCASTING_AUDIO_MEDIA =
                T.let(
                  :"Podcasting & Audio Media",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              NEWS_AGGREGATORS_CURATION_TOOLS =
                T.let(
                  :"News Aggregators & Curation Tools",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              INDEPENDENT_CREATOR_LED_MEDIA =
                T.let(
                  :"Independent & Creator-Led Media",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              NEWSLETTERS_SUBSTACK_STYLE_PLATFORMS =
                T.let(
                  :"Newsletters & Substack-Style Platforms",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              POLITICAL_INVESTIGATIVE_MEDIA =
                T.let(
                  :"Political & Investigative Media",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              TRADE_NICHE_PUBLICATIONS =
                T.let(
                  :"Trade & Niche Publications",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              MEDIA_MONITORING_ANALYTICS =
                T.let(
                  :"Media Monitoring & Analytics",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              PROFESSIONAL_TEAMS_LEAGUES =
                T.let(
                  :"Professional Teams & Leagues",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              SPORTS_MEDIA_BROADCASTING =
                T.let(
                  :"Sports Media & Broadcasting",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              SPORTS_BETTING_FANTASY_SPORTS =
                T.let(
                  :"Sports Betting & Fantasy Sports",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              FITNESS_ATHLETIC_TRAINING_PLATFORMS =
                T.let(
                  :"Fitness & Athletic Training Platforms",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              SPORTSWEAR_EQUIPMENT =
                T.let(
                  :"Sportswear & Equipment",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              ESPORTS_COMPETITIVE_GAMING =
                T.let(
                  :"Esports & Competitive Gaming",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              SPORTS_VENUES_EVENT_MANAGEMENT =
                T.let(
                  :"Sports Venues & Event Management",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              ATHLETE_MANAGEMENT_TALENT_AGENCIES =
                T.let(
                  :"Athlete Management & Talent Agencies",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              SPORTS_TECH_PERFORMANCE_ANALYTICS =
                T.let(
                  :"Sports Tech & Performance Analytics",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              YOUTH_AMATEUR_COLLEGIATE_SPORTS =
                T.let(
                  :"Youth, Amateur & Collegiate Sports",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              REAL_ESTATE_MARKETPLACES =
                T.let(
                  :"Real Estate Marketplaces",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              PROPERTY_MANAGEMENT_SOFTWARE =
                T.let(
                  :"Property Management Software",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              RENTAL_PLATFORMS =
                T.let(
                  :"Rental Platforms",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              MORTGAGE_LENDING_TECH =
                T.let(
                  :"Mortgage & Lending Tech",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              REAL_ESTATE_INVESTMENT_PLATFORMS =
                T.let(
                  :"Real Estate Investment Platforms",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              LAW_FIRMS_LEGAL_SERVICES =
                T.let(
                  :"Law Firms & Legal Services",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              LEGAL_TECH_AUTOMATION =
                T.let(
                  :"Legal Tech & Automation",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              REGULATORY_COMPLIANCE =
                T.let(
                  :"Regulatory Compliance",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              E_DISCOVERY_LITIGATION_TOOLS =
                T.let(
                  :"E-Discovery & Litigation Tools",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CONTRACT_MANAGEMENT =
                T.let(
                  :"Contract Management",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              GOVERNANCE_RISK_COMPLIANCE_GRC =
                T.let(
                  :"Governance, Risk & Compliance (GRC)",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              IP_TRADEMARK_MANAGEMENT =
                T.let(
                  :"IP & Trademark Management",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              LEGAL_RESEARCH_INTELLIGENCE =
                T.let(
                  :"Legal Research & Intelligence",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              COMPLIANCE_TRAINING_CERTIFICATION =
                T.let(
                  :"Compliance Training & Certification",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              WHISTLEBLOWER_ETHICS_REPORTING =
                T.let(
                  :"Whistleblower & Ethics Reporting",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              MOBILE_WIRELESS_NETWORKS_3_G_4_G_5_G =
                T.let(
                  :"Mobile & Wireless Networks (3G/4G/5G)",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              BROADBAND_FIBER_INTERNET =
                T.let(
                  :"Broadband & Fiber Internet",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              SATELLITE_SPACE_BASED_COMMUNICATIONS =
                T.let(
                  :"Satellite & Space-Based Communications",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              NETWORK_EQUIPMENT_INFRASTRUCTURE =
                T.let(
                  :"Network Equipment & Infrastructure",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              TELECOM_BILLING_OSS_BSS_SYSTEMS =
                T.let(
                  :"Telecom Billing & OSS/BSS Systems",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              VO_IP_UNIFIED_COMMUNICATIONS =
                T.let(
                  :"VoIP & Unified Communications",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              INTERNET_SERVICE_PROVIDERS_IS_PS =
                T.let(
                  :"Internet Service Providers (ISPs)",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              EDGE_COMPUTING_NETWORK_VIRTUALIZATION =
                T.let(
                  :"Edge Computing & Network Virtualization",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              IO_T_CONNECTIVITY_PLATFORMS =
                T.let(
                  :"IoT Connectivity Platforms",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              PRECISION_AGRICULTURE_AG_TECH =
                T.let(
                  :"Precision Agriculture & AgTech",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CROP_LIVESTOCK_PRODUCTION =
                T.let(
                  :"Crop & Livestock Production",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              FOOD_BEVERAGE_MANUFACTURING_PROCESSING =
                T.let(
                  :"Food & Beverage Manufacturing & Processing",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              FOOD_DISTRIBUTION =
                T.let(
                  :"Food Distribution",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              RESTAURANTS_FOOD_SERVICE =
                T.let(
                  :"Restaurants & Food Service",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              AGRICULTURAL_INPUTS_EQUIPMENT =
                T.let(
                  :"Agricultural Inputs & Equipment",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              SUSTAINABLE_REGENERATIVE_AGRICULTURE =
                T.let(
                  :"Sustainable & Regenerative Agriculture",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              SEAFOOD_AQUACULTURE =
                T.let(
                  :"Seafood & Aquaculture",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              MANAGEMENT_CONSULTING =
                T.let(
                  :"Management Consulting",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              MARKETING_ADVERTISING_AGENCIES =
                T.let(
                  :"Marketing & Advertising Agencies",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              DESIGN_BRANDING_CREATIVE_STUDIOS =
                T.let(
                  :"Design, Branding & Creative Studios",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              IT_SERVICES_MANAGED_SERVICES =
                T.let(
                  :"IT Services & Managed Services",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              STAFFING_RECRUITING_TALENT =
                T.let(
                  :"Staffing, Recruiting & Talent",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              ACCOUNTING_TAX_FIRMS =
                T.let(
                  :"Accounting & Tax Firms",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              PUBLIC_RELATIONS_COMMUNICATIONS =
                T.let(
                  :"Public Relations & Communications",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              BUSINESS_PROCESS_OUTSOURCING_BPO =
                T.let(
                  :"Business Process Outsourcing (BPO)",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              PROFESSIONAL_TRAINING_COACHING =
                T.let(
                  :"Professional Training & Coaching",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              SPECIALTY_CHEMICALS =
                T.let(
                  :"Specialty Chemicals",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              COMMODITY_PETROCHEMICALS =
                T.let(
                  :"Commodity & Petrochemicals",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              POLYMERS_PLASTICS_RUBBER =
                T.let(
                  :"Polymers, Plastics & Rubber",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              COATINGS_ADHESIVES_SEALANTS =
                T.let(
                  :"Coatings, Adhesives & Sealants",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              INDUSTRIAL_GASES =
                T.let(
                  :"Industrial Gases",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              ADVANCED_MATERIALS_COMPOSITES =
                T.let(
                  :"Advanced Materials & Composites",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              BATTERY_MATERIALS_ENERGY_STORAGE =
                T.let(
                  :"Battery Materials & Energy Storage",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              ELECTRONIC_MATERIALS_SEMICONDUCTOR_CHEMICALS =
                T.let(
                  :"Electronic Materials & Semiconductor Chemicals",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              AGROCHEMICALS_FERTILIZERS =
                T.let(
                  :"Agrochemicals & Fertilizers",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              FREIGHT_TRANSPORTATION_TECH =
                T.let(
                  :"Freight & Transportation Tech",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              LAST_MILE_DELIVERY =
                T.let(
                  :"Last-Mile Delivery",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              WAREHOUSE_AUTOMATION =
                T.let(
                  :"Warehouse Automation",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              SUPPLY_CHAIN_VISIBILITY_PLATFORMS =
                T.let(
                  :"Supply Chain Visibility Platforms",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              LOGISTICS_MARKETPLACES =
                T.let(
                  :"Logistics Marketplaces",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              SHIPPING_FREIGHT_FORWARDING =
                T.let(
                  :"Shipping & Freight Forwarding",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              COLD_CHAIN_LOGISTICS =
                T.let(
                  :"Cold Chain Logistics",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              REVERSE_LOGISTICS_RETURNS =
                T.let(
                  :"Reverse Logistics & Returns",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CROSS_BORDER_TRADE_TECH =
                T.let(
                  :"Cross-Border Trade Tech",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              TRANSPORTATION_MANAGEMENT_SYSTEMS_TMS =
                T.let(
                  :"Transportation Management Systems (TMS)",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              HOTELS_ACCOMMODATION =
                T.let(
                  :"Hotels & Accommodation",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              VACATION_RENTALS_SHORT_TERM_STAYS =
                T.let(
                  :"Vacation Rentals & Short-Term Stays",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              RESTAURANT_TECH_MANAGEMENT =
                T.let(
                  :"Restaurant Tech & Management",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              TRAVEL_BOOKING_PLATFORMS =
                T.let(
                  :"Travel Booking Platforms",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              TOURISM_EXPERIENCES_ACTIVITIES =
                T.let(
                  :"Tourism Experiences & Activities",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CRUISE_LINES_MARINE_TOURISM =
                T.let(
                  :"Cruise Lines & Marine Tourism",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              HOSPITALITY_MANAGEMENT_SYSTEMS =
                T.let(
                  :"Hospitality Management Systems",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              EVENT_VENUE_MANAGEMENT =
                T.let(
                  :"Event & Venue Management",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CORPORATE_TRAVEL_MANAGEMENT =
                T.let(
                  :"Corporate Travel Management",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              TRAVEL_INSURANCE_PROTECTION =
                T.let(
                  :"Travel Insurance & Protection",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CONSTRUCTION_MANAGEMENT_SOFTWARE =
                T.let(
                  :"Construction Management Software",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              BIM_CAD_DESIGN_TOOLS =
                T.let(
                  :"BIM/CAD & Design Tools",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CONSTRUCTION_MARKETPLACES =
                T.let(
                  :"Construction Marketplaces",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              EQUIPMENT_RENTAL_MANAGEMENT =
                T.let(
                  :"Equipment Rental & Management",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              BUILDING_MATERIALS_PROCUREMENT =
                T.let(
                  :"Building Materials & Procurement",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CONSTRUCTION_WORKFORCE_MANAGEMENT =
                T.let(
                  :"Construction Workforce Management",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              PROJECT_ESTIMATION_BIDDING =
                T.let(
                  :"Project Estimation & Bidding",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              MODULAR_PREFAB_CONSTRUCTION =
                T.let(
                  :"Modular & Prefab Construction",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CONSTRUCTION_SAFETY_COMPLIANCE =
                T.let(
                  :"Construction Safety & Compliance",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              SMART_BUILDING_TECHNOLOGY =
                T.let(
                  :"Smart Building Technology",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              FOOD_BEVERAGE_CPG =
                T.let(
                  :"Food & Beverage CPG",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              HOME_PERSONAL_CARE_CPG =
                T.let(
                  :"Home & Personal Care CPG",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CPG_ANALYTICS_INSIGHTS =
                T.let(
                  :"CPG Analytics & Insights",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              DIRECT_TO_CONSUMER_CPG_BRANDS =
                T.let(
                  :"Direct-to-Consumer CPG Brands",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CPG_SUPPLY_CHAIN_DISTRIBUTION =
                T.let(
                  :"CPG Supply Chain & Distribution",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              PRIVATE_LABEL_MANUFACTURING =
                T.let(
                  :"Private Label Manufacturing",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              CPG_RETAIL_INTELLIGENCE =
                T.let(
                  :"CPG Retail Intelligence",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              SUSTAINABLE_CPG_PACKAGING =
                T.let(
                  :"Sustainable CPG & Packaging",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              BEAUTY_COSMETICS_CPG =
                T.let(
                  :"Beauty & Cosmetics CPG",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )
              HEALTH_WELLNESS_CPG =
                T.let(
                  :"Health & Wellness CPG",
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Industries::Eic::Subindustry::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        class Links < BrandDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Links,
                BrandDev::Internal::AnyHash
              )
            end

          # URL to the brand's blog or news page
          sig { returns(T.nilable(String)) }
          attr_accessor :blog

          # URL to the brand's careers or job opportunities page
          sig { returns(T.nilable(String)) }
          attr_accessor :careers

          # URL to the brand's contact or contact us page
          sig { returns(T.nilable(String)) }
          attr_accessor :contact

          # URL to the brand's pricing or plans page
          sig { returns(T.nilable(String)) }
          attr_accessor :pricing

          # URL to the brand's privacy policy page
          sig { returns(T.nilable(String)) }
          attr_accessor :privacy

          # URL to the brand's terms of service or terms and conditions page
          sig { returns(T.nilable(String)) }
          attr_accessor :terms

          # Important website links for the brand
          sig do
            params(
              blog: T.nilable(String),
              careers: T.nilable(String),
              contact: T.nilable(String),
              pricing: T.nilable(String),
              privacy: T.nilable(String),
              terms: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # URL to the brand's blog or news page
            blog: nil,
            # URL to the brand's careers or job opportunities page
            careers: nil,
            # URL to the brand's contact or contact us page
            contact: nil,
            # URL to the brand's pricing or plans page
            pricing: nil,
            # URL to the brand's privacy policy page
            privacy: nil,
            # URL to the brand's terms of service or terms and conditions page
            terms: nil
          )
          end

          sig do
            override.returns(
              {
                blog: T.nilable(String),
                careers: T.nilable(String),
                contact: T.nilable(String),
                pricing: T.nilable(String),
                privacy: T.nilable(String),
                terms: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        class Logo < BrandDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo,
                BrandDev::Internal::AnyHash
              )
            end

          # Array of colors in the logo
          sig do
            returns(
              T.nilable(
                T::Array[
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Color
                ]
              )
            )
          end
          attr_reader :colors

          sig do
            params(
              colors:
                T::Array[
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Color::OrHash
                ]
            ).void
          end
          attr_writer :colors

          # Indicates when this logo is best used: 'light' = best for light mode, 'dark' =
          # best for dark mode, 'has_opaque_background' = can be used for either as image
          # has its own background
          sig do
            returns(
              T.nilable(
                BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Mode::TaggedSymbol
              )
            )
          end
          attr_reader :mode

          sig do
            params(
              mode:
                BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Mode::OrSymbol
            ).void
          end
          attr_writer :mode

          # Resolution of the logo image
          sig do
            returns(
              T.nilable(
                BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Resolution
              )
            )
          end
          attr_reader :resolution

          sig do
            params(
              resolution:
                BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Resolution::OrHash
            ).void
          end
          attr_writer :resolution

          # Type of the logo based on resolution (e.g., 'icon', 'logo')
          sig do
            returns(
              T.nilable(
                BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Type::TaggedSymbol
              )
            )
          end
          attr_reader :type

          sig do
            params(
              type:
                BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Type::OrSymbol
            ).void
          end
          attr_writer :type

          # CDN hosted url of the logo (ready for display)
          sig { returns(T.nilable(String)) }
          attr_reader :url

          sig { params(url: String).void }
          attr_writer :url

          sig do
            params(
              colors:
                T::Array[
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Color::OrHash
                ],
              mode:
                BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Mode::OrSymbol,
              resolution:
                BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Resolution::OrHash,
              type:
                BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Type::OrSymbol,
              url: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Array of colors in the logo
            colors: nil,
            # Indicates when this logo is best used: 'light' = best for light mode, 'dark' =
            # best for dark mode, 'has_opaque_background' = can be used for either as image
            # has its own background
            mode: nil,
            # Resolution of the logo image
            resolution: nil,
            # Type of the logo based on resolution (e.g., 'icon', 'logo')
            type: nil,
            # CDN hosted url of the logo (ready for display)
            url: nil
          )
          end

          sig do
            override.returns(
              {
                colors:
                  T::Array[
                    BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Color
                  ],
                mode:
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Mode::TaggedSymbol,
                resolution:
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Resolution,
                type:
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Type::TaggedSymbol,
                url: String
              }
            )
          end
          def to_hash
          end

          class Color < BrandDev::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Color,
                  BrandDev::Internal::AnyHash
                )
              end

            # Color in hexadecimal format
            sig { returns(T.nilable(String)) }
            attr_reader :hex

            sig { params(hex: String).void }
            attr_writer :hex

            # Name of the color
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig { params(hex: String, name: String).returns(T.attached_class) }
            def self.new(
              # Color in hexadecimal format
              hex: nil,
              # Name of the color
              name: nil
            )
            end

            sig { override.returns({ hex: String, name: String }) }
            def to_hash
            end
          end

          # Indicates when this logo is best used: 'light' = best for light mode, 'dark' =
          # best for dark mode, 'has_opaque_background' = can be used for either as image
          # has its own background
          module Mode
            extend BrandDev::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Mode
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            LIGHT =
              T.let(
                :light,
                BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Mode::TaggedSymbol
              )
            DARK =
              T.let(
                :dark,
                BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Mode::TaggedSymbol
              )
            HAS_OPAQUE_BACKGROUND =
              T.let(
                :has_opaque_background,
                BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Mode::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Mode::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Resolution < BrandDev::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Resolution,
                  BrandDev::Internal::AnyHash
                )
              end

            # Aspect ratio of the image (width/height)
            sig { returns(T.nilable(Float)) }
            attr_reader :aspect_ratio

            sig { params(aspect_ratio: Float).void }
            attr_writer :aspect_ratio

            # Height of the image in pixels
            sig { returns(T.nilable(Integer)) }
            attr_reader :height

            sig { params(height: Integer).void }
            attr_writer :height

            # Width of the image in pixels
            sig { returns(T.nilable(Integer)) }
            attr_reader :width

            sig { params(width: Integer).void }
            attr_writer :width

            # Resolution of the logo image
            sig do
              params(
                aspect_ratio: Float,
                height: Integer,
                width: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              # Aspect ratio of the image (width/height)
              aspect_ratio: nil,
              # Height of the image in pixels
              height: nil,
              # Width of the image in pixels
              width: nil
            )
            end

            sig do
              override.returns(
                { aspect_ratio: Float, height: Integer, width: Integer }
              )
            end
            def to_hash
            end
          end

          # Type of the logo based on resolution (e.g., 'icon', 'logo')
          module Type
            extend BrandDev::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ICON =
              T.let(
                :icon,
                BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Type::TaggedSymbol
              )
            LOGO =
              T.let(
                :logo,
                BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Logo::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Social < BrandDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Social,
                BrandDev::Internal::AnyHash
              )
            end

          # Type of social media, e.g., 'facebook', 'twitter'
          sig { returns(T.nilable(String)) }
          attr_reader :type

          sig { params(type: String).void }
          attr_writer :type

          # URL of the social media page
          sig { returns(T.nilable(String)) }
          attr_reader :url

          sig { params(url: String).void }
          attr_writer :url

          sig { params(type: String, url: String).returns(T.attached_class) }
          def self.new(
            # Type of social media, e.g., 'facebook', 'twitter'
            type: nil,
            # URL of the social media page
            url: nil
          )
          end

          sig { override.returns({ type: String, url: String }) }
          def to_hash
          end
        end

        class Stock < BrandDev::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                BrandDev::Models::BrandIdentifyFromTransactionResponse::Brand::Stock,
                BrandDev::Internal::AnyHash
              )
            end

          # Stock exchange name
          sig { returns(T.nilable(String)) }
          attr_reader :exchange

          sig { params(exchange: String).void }
          attr_writer :exchange

          # Stock ticker symbol
          sig { returns(T.nilable(String)) }
          attr_reader :ticker

          sig { params(ticker: String).void }
          attr_writer :ticker

          # Stock market information for this brand (will be null if not a publicly traded
          # company)
          sig do
            params(exchange: String, ticker: String).returns(T.attached_class)
          end
          def self.new(
            # Stock exchange name
            exchange: nil,
            # Stock ticker symbol
            ticker: nil
          )
          end

          sig { override.returns({ exchange: String, ticker: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
