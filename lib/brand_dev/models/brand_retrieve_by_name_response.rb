# frozen_string_literal: true

module BrandDev
  module Models
    # @see BrandDev::Resources::Brand#retrieve_by_name
    class BrandRetrieveByNameResponse < BrandDev::Internal::Type::BaseModel
      # @!attribute brand
      #   Detailed brand information
      #
      #   @return [BrandDev::Models::BrandRetrieveByNameResponse::Brand, nil]
      optional :brand, -> { BrandDev::Models::BrandRetrieveByNameResponse::Brand }

      # @!attribute code
      #   HTTP status code
      #
      #   @return [Integer, nil]
      optional :code, Integer

      # @!attribute status
      #   Status of the response, e.g., 'ok'
      #
      #   @return [String, nil]
      optional :status, String

      # @!method initialize(brand: nil, code: nil, status: nil)
      #   @param brand [BrandDev::Models::BrandRetrieveByNameResponse::Brand] Detailed brand information
      #
      #   @param code [Integer] HTTP status code
      #
      #   @param status [String] Status of the response, e.g., 'ok'

      # @see BrandDev::Models::BrandRetrieveByNameResponse#brand
      class Brand < BrandDev::Internal::Type::BaseModel
        # @!attribute address
        #   Physical address of the brand
        #
        #   @return [BrandDev::Models::BrandRetrieveByNameResponse::Brand::Address, nil]
        optional :address, -> { BrandDev::Models::BrandRetrieveByNameResponse::Brand::Address }

        # @!attribute backdrops
        #   An array of backdrop images for the brand
        #
        #   @return [Array<BrandDev::Models::BrandRetrieveByNameResponse::Brand::Backdrop>, nil]
        optional :backdrops,
                 -> { BrandDev::Internal::Type::ArrayOf[BrandDev::Models::BrandRetrieveByNameResponse::Brand::Backdrop] }

        # @!attribute colors
        #   An array of brand colors
        #
        #   @return [Array<BrandDev::Models::BrandRetrieveByNameResponse::Brand::Color>, nil]
        optional :colors,
                 -> { BrandDev::Internal::Type::ArrayOf[BrandDev::Models::BrandRetrieveByNameResponse::Brand::Color] }

        # @!attribute description
        #   A brief description of the brand
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute domain
        #   The domain name of the brand
        #
        #   @return [String, nil]
        optional :domain, String

        # @!attribute email
        #   Company email address
        #
        #   @return [String, nil]
        optional :email, String

        # @!attribute industries
        #   Industry classification information for the brand
        #
        #   @return [BrandDev::Models::BrandRetrieveByNameResponse::Brand::Industries, nil]
        optional :industries, -> { BrandDev::Models::BrandRetrieveByNameResponse::Brand::Industries }

        # @!attribute is_nsfw
        #   Indicates whether the brand content is not safe for work (NSFW)
        #
        #   @return [Boolean, nil]
        optional :is_nsfw, BrandDev::Internal::Type::Boolean

        # @!attribute links
        #   Important website links for the brand
        #
        #   @return [BrandDev::Models::BrandRetrieveByNameResponse::Brand::Links, nil]
        optional :links, -> { BrandDev::Models::BrandRetrieveByNameResponse::Brand::Links }

        # @!attribute logos
        #   An array of logos associated with the brand
        #
        #   @return [Array<BrandDev::Models::BrandRetrieveByNameResponse::Brand::Logo>, nil]
        optional :logos,
                 -> { BrandDev::Internal::Type::ArrayOf[BrandDev::Models::BrandRetrieveByNameResponse::Brand::Logo] }

        # @!attribute phone
        #   Company phone number
        #
        #   @return [String, nil]
        optional :phone, String

        # @!attribute slogan
        #   The brand's slogan
        #
        #   @return [String, nil]
        optional :slogan, String

        # @!attribute socials
        #   An array of social media links for the brand
        #
        #   @return [Array<BrandDev::Models::BrandRetrieveByNameResponse::Brand::Social>, nil]
        optional :socials,
                 -> { BrandDev::Internal::Type::ArrayOf[BrandDev::Models::BrandRetrieveByNameResponse::Brand::Social] }

        # @!attribute stock
        #   Stock market information for this brand (will be null if not a publicly traded
        #   company)
        #
        #   @return [BrandDev::Models::BrandRetrieveByNameResponse::Brand::Stock, nil]
        optional :stock, -> { BrandDev::Models::BrandRetrieveByNameResponse::Brand::Stock }

        # @!attribute title
        #   The title or name of the brand
        #
        #   @return [String, nil]
        optional :title, String

        # @!method initialize(address: nil, backdrops: nil, colors: nil, description: nil, domain: nil, email: nil, industries: nil, is_nsfw: nil, links: nil, logos: nil, phone: nil, slogan: nil, socials: nil, stock: nil, title: nil)
        #   Some parameter documentations has been truncated, see
        #   {BrandDev::Models::BrandRetrieveByNameResponse::Brand} for more details.
        #
        #   Detailed brand information
        #
        #   @param address [BrandDev::Models::BrandRetrieveByNameResponse::Brand::Address] Physical address of the brand
        #
        #   @param backdrops [Array<BrandDev::Models::BrandRetrieveByNameResponse::Brand::Backdrop>] An array of backdrop images for the brand
        #
        #   @param colors [Array<BrandDev::Models::BrandRetrieveByNameResponse::Brand::Color>] An array of brand colors
        #
        #   @param description [String] A brief description of the brand
        #
        #   @param domain [String] The domain name of the brand
        #
        #   @param email [String] Company email address
        #
        #   @param industries [BrandDev::Models::BrandRetrieveByNameResponse::Brand::Industries] Industry classification information for the brand
        #
        #   @param is_nsfw [Boolean] Indicates whether the brand content is not safe for work (NSFW)
        #
        #   @param links [BrandDev::Models::BrandRetrieveByNameResponse::Brand::Links] Important website links for the brand
        #
        #   @param logos [Array<BrandDev::Models::BrandRetrieveByNameResponse::Brand::Logo>] An array of logos associated with the brand
        #
        #   @param phone [String] Company phone number
        #
        #   @param slogan [String] The brand's slogan
        #
        #   @param socials [Array<BrandDev::Models::BrandRetrieveByNameResponse::Brand::Social>] An array of social media links for the brand
        #
        #   @param stock [BrandDev::Models::BrandRetrieveByNameResponse::Brand::Stock] Stock market information for this brand (will be null if not a publicly traded c
        #
        #   @param title [String] The title or name of the brand

        # @see BrandDev::Models::BrandRetrieveByNameResponse::Brand#address
        class Address < BrandDev::Internal::Type::BaseModel
          # @!attribute city
          #   City name
          #
          #   @return [String, nil]
          optional :city, String

          # @!attribute country
          #   Country name
          #
          #   @return [String, nil]
          optional :country, String

          # @!attribute country_code
          #   Country code
          #
          #   @return [String, nil]
          optional :country_code, String

          # @!attribute postal_code
          #   Postal or ZIP code
          #
          #   @return [String, nil]
          optional :postal_code, String

          # @!attribute state_code
          #   State or province code
          #
          #   @return [String, nil]
          optional :state_code, String

          # @!attribute state_province
          #   State or province name
          #
          #   @return [String, nil]
          optional :state_province, String

          # @!attribute street
          #   Street address
          #
          #   @return [String, nil]
          optional :street, String

          # @!method initialize(city: nil, country: nil, country_code: nil, postal_code: nil, state_code: nil, state_province: nil, street: nil)
          #   Physical address of the brand
          #
          #   @param city [String] City name
          #
          #   @param country [String] Country name
          #
          #   @param country_code [String] Country code
          #
          #   @param postal_code [String] Postal or ZIP code
          #
          #   @param state_code [String] State or province code
          #
          #   @param state_province [String] State or province name
          #
          #   @param street [String] Street address
        end

        class Backdrop < BrandDev::Internal::Type::BaseModel
          # @!attribute colors
          #   Array of colors in the backdrop image
          #
          #   @return [Array<BrandDev::Models::BrandRetrieveByNameResponse::Brand::Backdrop::Color>, nil]
          optional :colors,
                   -> { BrandDev::Internal::Type::ArrayOf[BrandDev::Models::BrandRetrieveByNameResponse::Brand::Backdrop::Color] }

          # @!attribute resolution
          #   Resolution of the backdrop image
          #
          #   @return [BrandDev::Models::BrandRetrieveByNameResponse::Brand::Backdrop::Resolution, nil]
          optional :resolution, -> { BrandDev::Models::BrandRetrieveByNameResponse::Brand::Backdrop::Resolution }

          # @!attribute url
          #   URL of the backdrop image
          #
          #   @return [String, nil]
          optional :url, String

          # @!method initialize(colors: nil, resolution: nil, url: nil)
          #   @param colors [Array<BrandDev::Models::BrandRetrieveByNameResponse::Brand::Backdrop::Color>] Array of colors in the backdrop image
          #
          #   @param resolution [BrandDev::Models::BrandRetrieveByNameResponse::Brand::Backdrop::Resolution] Resolution of the backdrop image
          #
          #   @param url [String] URL of the backdrop image

          class Color < BrandDev::Internal::Type::BaseModel
            # @!attribute hex
            #   Color in hexadecimal format
            #
            #   @return [String, nil]
            optional :hex, String

            # @!attribute name
            #   Name of the color
            #
            #   @return [String, nil]
            optional :name, String

            # @!method initialize(hex: nil, name: nil)
            #   @param hex [String] Color in hexadecimal format
            #
            #   @param name [String] Name of the color
          end

          # @see BrandDev::Models::BrandRetrieveByNameResponse::Brand::Backdrop#resolution
          class Resolution < BrandDev::Internal::Type::BaseModel
            # @!attribute aspect_ratio
            #   Aspect ratio of the image (width/height)
            #
            #   @return [Float, nil]
            optional :aspect_ratio, Float

            # @!attribute height
            #   Height of the image in pixels
            #
            #   @return [Integer, nil]
            optional :height, Integer

            # @!attribute width
            #   Width of the image in pixels
            #
            #   @return [Integer, nil]
            optional :width, Integer

            # @!method initialize(aspect_ratio: nil, height: nil, width: nil)
            #   Resolution of the backdrop image
            #
            #   @param aspect_ratio [Float] Aspect ratio of the image (width/height)
            #
            #   @param height [Integer] Height of the image in pixels
            #
            #   @param width [Integer] Width of the image in pixels
          end
        end

        class Color < BrandDev::Internal::Type::BaseModel
          # @!attribute hex
          #   Color in hexadecimal format
          #
          #   @return [String, nil]
          optional :hex, String

          # @!attribute name
          #   Name of the color
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(hex: nil, name: nil)
          #   @param hex [String] Color in hexadecimal format
          #
          #   @param name [String] Name of the color
        end

        # @see BrandDev::Models::BrandRetrieveByNameResponse::Brand#industries
        class Industries < BrandDev::Internal::Type::BaseModel
          # @!attribute eic
          #   Easy Industry Classification - array of industry and subindustry pairs
          #
          #   @return [Array<BrandDev::Models::BrandRetrieveByNameResponse::Brand::Industries::Eic>, nil]
          optional :eic,
                   -> { BrandDev::Internal::Type::ArrayOf[BrandDev::Models::BrandRetrieveByNameResponse::Brand::Industries::Eic] }

          # @!method initialize(eic: nil)
          #   Industry classification information for the brand
          #
          #   @param eic [Array<BrandDev::Models::BrandRetrieveByNameResponse::Brand::Industries::Eic>] Easy Industry Classification - array of industry and subindustry pairs

          class Eic < BrandDev::Internal::Type::BaseModel
            # @!attribute industry
            #   Industry classification enum
            #
            #   @return [Symbol, BrandDev::Models::BrandRetrieveByNameResponse::Brand::Industries::Eic::Industry]
            required :industry,
                     enum: -> { BrandDev::Models::BrandRetrieveByNameResponse::Brand::Industries::Eic::Industry }

            # @!attribute subindustry
            #   Subindustry classification enum
            #
            #   @return [Symbol, BrandDev::Models::BrandRetrieveByNameResponse::Brand::Industries::Eic::Subindustry]
            required :subindustry,
                     enum: -> { BrandDev::Models::BrandRetrieveByNameResponse::Brand::Industries::Eic::Subindustry }

            # @!method initialize(industry:, subindustry:)
            #   @param industry [Symbol, BrandDev::Models::BrandRetrieveByNameResponse::Brand::Industries::Eic::Industry] Industry classification enum
            #
            #   @param subindustry [Symbol, BrandDev::Models::BrandRetrieveByNameResponse::Brand::Industries::Eic::Subindustry] Subindustry classification enum

            # Industry classification enum
            #
            # @see BrandDev::Models::BrandRetrieveByNameResponse::Brand::Industries::Eic#industry
            module Industry
              extend BrandDev::Internal::Type::Enum

              AEROSPACE_DEFENSE = :"Aerospace & Defense"
              TECHNOLOGY = :Technology
              FINANCE = :Finance
              HEALTHCARE = :Healthcare
              RETAIL_E_COMMERCE = :"Retail & E-commerce"
              ENTERTAINMENT = :Entertainment
              EDUCATION = :Education
              GOVERNMENT_NONPROFIT = :"Government & Nonprofit"
              INDUSTRIAL_ENERGY = :"Industrial & Energy"
              AUTOMOTIVE_TRANSPORTATION = :"Automotive & Transportation"
              LIFESTYLE_LEISURE = :"Lifestyle & Leisure"
              LUXURY_FASHION = :"Luxury & Fashion"
              NEWS_MEDIA = :"News & Media"
              SPORTS = :Sports
              REAL_ESTATE_PROP_TECH = :"Real Estate & PropTech"
              LEGAL_COMPLIANCE = :"Legal & Compliance"
              TELECOMMUNICATIONS = :Telecommunications
              AGRICULTURE_FOOD = :"Agriculture & Food"
              PROFESSIONAL_SERVICES_AGENCIES = :"Professional Services & Agencies"
              CHEMICALS_MATERIALS = :"Chemicals & Materials"
              LOGISTICS_SUPPLY_CHAIN = :"Logistics & Supply Chain"
              HOSPITALITY_TOURISM = :"Hospitality & Tourism"
              CONSTRUCTION_BUILT_ENVIRONMENT = :"Construction & Built Environment"
              CONSUMER_PACKAGED_GOODS_CPG = :"Consumer Packaged Goods (CPG)"

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Subindustry classification enum
            #
            # @see BrandDev::Models::BrandRetrieveByNameResponse::Brand::Industries::Eic#subindustry
            module Subindustry
              extend BrandDev::Internal::Type::Enum

              DEFENSE_SYSTEMS_MILITARY_HARDWARE = :"Defense Systems & Military Hardware"
              AEROSPACE_MANUFACTURING = :"Aerospace Manufacturing"
              AVIONICS_NAVIGATION_TECHNOLOGY = :"Avionics & Navigation Technology"
              SUBSEA_NAVAL_DEFENSE_SYSTEMS = :"Subsea & Naval Defense Systems"
              SPACE_SATELLITE_TECHNOLOGY = :"Space & Satellite Technology"
              DEFENSE_IT_SYSTEMS_INTEGRATION = :"Defense IT & Systems Integration"
              SOFTWARE_B2_B = :"Software (B2B)"
              SOFTWARE_B2_C = :"Software (B2C)"
              CLOUD_INFRASTRUCTURE_DEV_OPS = :"Cloud Infrastructure & DevOps"
              CYBERSECURITY = :Cybersecurity
              ARTIFICIAL_INTELLIGENCE_MACHINE_LEARNING = :"Artificial Intelligence & Machine Learning"
              DATA_INFRASTRUCTURE_ANALYTICS = :"Data Infrastructure & Analytics"
              HARDWARE_SEMICONDUCTORS = :"Hardware & Semiconductors"
              FINTECH_INFRASTRUCTURE = :"Fintech Infrastructure"
              E_COMMERCE_MARKETPLACE_PLATFORMS = :"eCommerce & Marketplace Platforms"
              DEVELOPER_TOOLS_APIS = :"Developer Tools & APIs"
              WEB3_BLOCKCHAIN = :"Web3 & Blockchain"
              XR_SPATIAL_COMPUTING = :"XR & Spatial Computing"
              BANKING_LENDING = :"Banking & Lending"
              INVESTMENT_MANAGEMENT_WEALTH_TECH = :"Investment Management & WealthTech"
              INSURANCE_INSUR_TECH = :"Insurance & InsurTech"
              PAYMENTS_MONEY_MOVEMENT = :"Payments & Money Movement"
              ACCOUNTING_TAX_FINANCIAL_PLANNING_TOOLS = :"Accounting, Tax & Financial Planning Tools"
              CAPITAL_MARKETS_TRADING_PLATFORMS = :"Capital Markets & Trading Platforms"
              FINANCIAL_INFRASTRUCTURE_APIS = :"Financial Infrastructure & APIs"
              CREDIT_SCORING_RISK_MANAGEMENT = :"Credit Scoring & Risk Management"
              CRYPTOCURRENCY_DIGITAL_ASSETS = :"Cryptocurrency & Digital Assets"
              BNPL_ALTERNATIVE_FINANCING = :"BNPL & Alternative Financing"
              HEALTHCARE_PROVIDERS_SERVICES = :"Healthcare Providers & Services"
              PHARMACEUTICALS_DRUG_DEVELOPMENT = :"Pharmaceuticals & Drug Development"
              MEDICAL_DEVICES_DIAGNOSTICS = :"Medical Devices & Diagnostics"
              BIOTECHNOLOGY_GENOMICS = :"Biotechnology & Genomics"
              DIGITAL_HEALTH_TELEMEDICINE = :"Digital Health & Telemedicine"
              HEALTH_INSURANCE_BENEFITS_TECH = :"Health Insurance & Benefits Tech"
              CLINICAL_TRIALS_RESEARCH_PLATFORMS = :"Clinical Trials & Research Platforms"
              MENTAL_HEALTH_WELLNESS = :"Mental Health & Wellness"
              HEALTHCARE_IT_EHR_SYSTEMS = :"Healthcare IT & EHR Systems"
              CONSUMER_HEALTH_WELLNESS_PRODUCTS = :"Consumer Health & Wellness Products"
              ONLINE_MARKETPLACES = :"Online Marketplaces"
              DIRECT_TO_CONSUMER_DTC_BRANDS = :"Direct-to-Consumer (DTC) Brands"
              RETAIL_TECH_POINT_OF_SALE_SYSTEMS = :"Retail Tech & Point-of-Sale Systems"
              OMNICHANNEL_IN_STORE_RETAIL = :"Omnichannel & In-Store Retail"
              E_COMMERCE_ENABLEMENT_INFRASTRUCTURE = :"E-commerce Enablement & Infrastructure"
              SUBSCRIPTION_MEMBERSHIP_COMMERCE = :"Subscription & Membership Commerce"
              SOCIAL_COMMERCE_INFLUENCER_PLATFORMS = :"Social Commerce & Influencer Platforms"
              FASHION_APPAREL_RETAIL = :"Fashion & Apparel Retail"
              FOOD_BEVERAGE_GROCERY_E_COMMERCE = :"Food, Beverage & Grocery E-commerce"
              STREAMING_PLATFORMS_VIDEO_MUSIC_AUDIO = :"Streaming Platforms (Video, Music, Audio)"
              GAMING_INTERACTIVE_ENTERTAINMENT = :"Gaming & Interactive Entertainment"
              CREATOR_ECONOMY_INFLUENCER_PLATFORMS = :"Creator Economy & Influencer Platforms"
              ADVERTISING_ADTECH_MEDIA_BUYING = :"Advertising, Adtech & Media Buying"
              FILM_TV_PRODUCTION_STUDIOS = :"Film, TV & Production Studios"
              EVENTS_VENUES_LIVE_ENTERTAINMENT = :"Events, Venues & Live Entertainment"
              VIRTUAL_WORLDS_METAVERSE_EXPERIENCES = :"Virtual Worlds & Metaverse Experiences"
              K_12_EDUCATION_PLATFORMS_TOOLS = :"K-12 Education Platforms & Tools"
              HIGHER_EDUCATION_UNIVERSITY_TECH = :"Higher Education & University Tech"
              ONLINE_LEARNING_MOO_CS = :"Online Learning & MOOCs"
              TEST_PREP_CERTIFICATION = :"Test Prep & Certification"
              CORPORATE_TRAINING_UPSKILLING = :"Corporate Training & Upskilling"
              TUTORING_SUPPLEMENTAL_LEARNING = :"Tutoring & Supplemental Learning"
              EDUCATION_MANAGEMENT_SYSTEMS_LMS_SIS = :"Education Management Systems (LMS/SIS)"
              LANGUAGE_LEARNING = :"Language Learning"
              CREATOR_LED_COHORT_BASED_COURSES = :"Creator-Led & Cohort-Based Courses"
              SPECIAL_EDUCATION_ACCESSIBILITY_TOOLS = :"Special Education & Accessibility Tools"
              GOVERNMENT_TECHNOLOGY_DIGITAL_SERVICES = :"Government Technology & Digital Services"
              CIVIC_ENGAGEMENT_POLICY_PLATFORMS = :"Civic Engagement & Policy Platforms"
              INTERNATIONAL_DEVELOPMENT_HUMANITARIAN_AID = :"International Development & Humanitarian Aid"
              PHILANTHROPY_GRANTMAKING = :"Philanthropy & Grantmaking"
              NONPROFIT_OPERATIONS_FUNDRAISING_TOOLS = :"Nonprofit Operations & Fundraising Tools"
              PUBLIC_HEALTH_SOCIAL_SERVICES = :"Public Health & Social Services"
              EDUCATION_YOUTH_DEVELOPMENT_PROGRAMS = :"Education & Youth Development Programs"
              ENVIRONMENTAL_CLIMATE_ACTION_ORGANIZATIONS = :"Environmental & Climate Action Organizations"
              LEGAL_AID_SOCIAL_JUSTICE_ADVOCACY = :"Legal Aid & Social Justice Advocacy"
              MUNICIPAL_INFRASTRUCTURE_SERVICES = :"Municipal & Infrastructure Services"
              MANUFACTURING_INDUSTRIAL_AUTOMATION = :"Manufacturing & Industrial Automation"
              ENERGY_PRODUCTION_OIL_GAS_NUCLEAR = :"Energy Production (Oil, Gas, Nuclear)"
              RENEWABLE_ENERGY_CLEANTECH = :"Renewable Energy & Cleantech"
              UTILITIES_GRID_INFRASTRUCTURE = :"Utilities & Grid Infrastructure"
              INDUSTRIAL_IO_T_MONITORING_SYSTEMS = :"Industrial IoT & Monitoring Systems"
              CONSTRUCTION_HEAVY_EQUIPMENT = :"Construction & Heavy Equipment"
              MINING_NATURAL_RESOURCES = :"Mining & Natural Resources"
              ENVIRONMENTAL_ENGINEERING_SUSTAINABILITY = :"Environmental Engineering & Sustainability"
              ENERGY_STORAGE_BATTERY_TECHNOLOGY = :"Energy Storage & Battery Technology"
              AUTOMOTIVE_OE_MS_VEHICLE_MANUFACTURING = :"Automotive OEMs & Vehicle Manufacturing"
              ELECTRIC_VEHICLES_E_VS_CHARGING_INFRASTRUCTURE = :"Electric Vehicles (EVs) & Charging Infrastructure"
              MOBILITY_AS_A_SERVICE_MAA_S = :"Mobility-as-a-Service (MaaS)"
              FLEET_MANAGEMENT = :"Fleet Management"
              PUBLIC_TRANSIT_URBAN_MOBILITY = :"Public Transit & Urban Mobility"
              AUTONOMOUS_VEHICLES_ADAS = :"Autonomous Vehicles & ADAS"
              AFTERMARKET_PARTS_SERVICES = :"Aftermarket Parts & Services"
              TELEMATICS_VEHICLE_CONNECTIVITY = :"Telematics & Vehicle Connectivity"
              AVIATION_AEROSPACE_TRANSPORT = :"Aviation & Aerospace Transport"
              MARITIME_SHIPPING = :"Maritime Shipping"
              FITNESS_WELLNESS = :"Fitness & Wellness"
              BEAUTY_PERSONAL_CARE = :"Beauty & Personal Care"
              HOME_LIVING = :"Home & Living"
              DATING_RELATIONSHIPS = :"Dating & Relationships"
              HOBBIES_CRAFTS_DIY = :"Hobbies, Crafts & DIY"
              OUTDOOR_RECREATIONAL_GEAR = :"Outdoor & Recreational Gear"
              EVENTS_EXPERIENCES_TICKETING_PLATFORMS = :"Events, Experiences & Ticketing Platforms"
              DESIGNER_LUXURY_APPAREL = :"Designer & Luxury Apparel"
              ACCESSORIES_JEWELRY_WATCHES = :"Accessories, Jewelry & Watches"
              FOOTWEAR_LEATHER_GOODS = :"Footwear & Leather Goods"
              BEAUTY_FRAGRANCE_SKINCARE = :"Beauty, Fragrance & Skincare"
              FASHION_MARKETPLACES_RETAIL_PLATFORMS = :"Fashion Marketplaces & Retail Platforms"
              SUSTAINABLE_ETHICAL_FASHION = :"Sustainable & Ethical Fashion"
              RESALE_VINTAGE_CIRCULAR_FASHION = :"Resale, Vintage & Circular Fashion"
              FASHION_TECH_VIRTUAL_TRY_ONS = :"Fashion Tech & Virtual Try-Ons"
              STREETWEAR_EMERGING_LUXURY = :"Streetwear & Emerging Luxury"
              COUTURE_MADE_TO_MEASURE = :"Couture & Made-to-Measure"
              NEWS_PUBLISHING_JOURNALISM = :"News Publishing & Journalism"
              DIGITAL_MEDIA_CONTENT_PLATFORMS = :"Digital Media & Content Platforms"
              BROADCASTING_TV_RADIO = :"Broadcasting (TV & Radio)"
              PODCASTING_AUDIO_MEDIA = :"Podcasting & Audio Media"
              NEWS_AGGREGATORS_CURATION_TOOLS = :"News Aggregators & Curation Tools"
              INDEPENDENT_CREATOR_LED_MEDIA = :"Independent & Creator-Led Media"
              NEWSLETTERS_SUBSTACK_STYLE_PLATFORMS = :"Newsletters & Substack-Style Platforms"
              POLITICAL_INVESTIGATIVE_MEDIA = :"Political & Investigative Media"
              TRADE_NICHE_PUBLICATIONS = :"Trade & Niche Publications"
              MEDIA_MONITORING_ANALYTICS = :"Media Monitoring & Analytics"
              PROFESSIONAL_TEAMS_LEAGUES = :"Professional Teams & Leagues"
              SPORTS_MEDIA_BROADCASTING = :"Sports Media & Broadcasting"
              SPORTS_BETTING_FANTASY_SPORTS = :"Sports Betting & Fantasy Sports"
              FITNESS_ATHLETIC_TRAINING_PLATFORMS = :"Fitness & Athletic Training Platforms"
              SPORTSWEAR_EQUIPMENT = :"Sportswear & Equipment"
              ESPORTS_COMPETITIVE_GAMING = :"Esports & Competitive Gaming"
              SPORTS_VENUES_EVENT_MANAGEMENT = :"Sports Venues & Event Management"
              ATHLETE_MANAGEMENT_TALENT_AGENCIES = :"Athlete Management & Talent Agencies"
              SPORTS_TECH_PERFORMANCE_ANALYTICS = :"Sports Tech & Performance Analytics"
              YOUTH_AMATEUR_COLLEGIATE_SPORTS = :"Youth, Amateur & Collegiate Sports"
              REAL_ESTATE_MARKETPLACES = :"Real Estate Marketplaces"
              PROPERTY_MANAGEMENT_SOFTWARE = :"Property Management Software"
              RENTAL_PLATFORMS = :"Rental Platforms"
              MORTGAGE_LENDING_TECH = :"Mortgage & Lending Tech"
              REAL_ESTATE_INVESTMENT_PLATFORMS = :"Real Estate Investment Platforms"
              LAW_FIRMS_LEGAL_SERVICES = :"Law Firms & Legal Services"
              LEGAL_TECH_AUTOMATION = :"Legal Tech & Automation"
              REGULATORY_COMPLIANCE = :"Regulatory Compliance"
              E_DISCOVERY_LITIGATION_TOOLS = :"E-Discovery & Litigation Tools"
              CONTRACT_MANAGEMENT = :"Contract Management"
              GOVERNANCE_RISK_COMPLIANCE_GRC = :"Governance, Risk & Compliance (GRC)"
              IP_TRADEMARK_MANAGEMENT = :"IP & Trademark Management"
              LEGAL_RESEARCH_INTELLIGENCE = :"Legal Research & Intelligence"
              COMPLIANCE_TRAINING_CERTIFICATION = :"Compliance Training & Certification"
              WHISTLEBLOWER_ETHICS_REPORTING = :"Whistleblower & Ethics Reporting"
              MOBILE_WIRELESS_NETWORKS_3_G_4_G_5_G = :"Mobile & Wireless Networks (3G/4G/5G)"
              BROADBAND_FIBER_INTERNET = :"Broadband & Fiber Internet"
              SATELLITE_SPACE_BASED_COMMUNICATIONS = :"Satellite & Space-Based Communications"
              NETWORK_EQUIPMENT_INFRASTRUCTURE = :"Network Equipment & Infrastructure"
              TELECOM_BILLING_OSS_BSS_SYSTEMS = :"Telecom Billing & OSS/BSS Systems"
              VO_IP_UNIFIED_COMMUNICATIONS = :"VoIP & Unified Communications"
              INTERNET_SERVICE_PROVIDERS_IS_PS = :"Internet Service Providers (ISPs)"
              EDGE_COMPUTING_NETWORK_VIRTUALIZATION = :"Edge Computing & Network Virtualization"
              IO_T_CONNECTIVITY_PLATFORMS = :"IoT Connectivity Platforms"
              PRECISION_AGRICULTURE_AG_TECH = :"Precision Agriculture & AgTech"
              CROP_LIVESTOCK_PRODUCTION = :"Crop & Livestock Production"
              FOOD_BEVERAGE_MANUFACTURING_PROCESSING = :"Food & Beverage Manufacturing & Processing"
              FOOD_DISTRIBUTION = :"Food Distribution"
              RESTAURANTS_FOOD_SERVICE = :"Restaurants & Food Service"
              AGRICULTURAL_INPUTS_EQUIPMENT = :"Agricultural Inputs & Equipment"
              SUSTAINABLE_REGENERATIVE_AGRICULTURE = :"Sustainable & Regenerative Agriculture"
              SEAFOOD_AQUACULTURE = :"Seafood & Aquaculture"
              MANAGEMENT_CONSULTING = :"Management Consulting"
              MARKETING_ADVERTISING_AGENCIES = :"Marketing & Advertising Agencies"
              DESIGN_BRANDING_CREATIVE_STUDIOS = :"Design, Branding & Creative Studios"
              IT_SERVICES_MANAGED_SERVICES = :"IT Services & Managed Services"
              STAFFING_RECRUITING_TALENT = :"Staffing, Recruiting & Talent"
              ACCOUNTING_TAX_FIRMS = :"Accounting & Tax Firms"
              PUBLIC_RELATIONS_COMMUNICATIONS = :"Public Relations & Communications"
              BUSINESS_PROCESS_OUTSOURCING_BPO = :"Business Process Outsourcing (BPO)"
              PROFESSIONAL_TRAINING_COACHING = :"Professional Training & Coaching"
              SPECIALTY_CHEMICALS = :"Specialty Chemicals"
              COMMODITY_PETROCHEMICALS = :"Commodity & Petrochemicals"
              POLYMERS_PLASTICS_RUBBER = :"Polymers, Plastics & Rubber"
              COATINGS_ADHESIVES_SEALANTS = :"Coatings, Adhesives & Sealants"
              INDUSTRIAL_GASES = :"Industrial Gases"
              ADVANCED_MATERIALS_COMPOSITES = :"Advanced Materials & Composites"
              BATTERY_MATERIALS_ENERGY_STORAGE = :"Battery Materials & Energy Storage"
              ELECTRONIC_MATERIALS_SEMICONDUCTOR_CHEMICALS = :"Electronic Materials & Semiconductor Chemicals"
              AGROCHEMICALS_FERTILIZERS = :"Agrochemicals & Fertilizers"
              FREIGHT_TRANSPORTATION_TECH = :"Freight & Transportation Tech"
              LAST_MILE_DELIVERY = :"Last-Mile Delivery"
              WAREHOUSE_AUTOMATION = :"Warehouse Automation"
              SUPPLY_CHAIN_VISIBILITY_PLATFORMS = :"Supply Chain Visibility Platforms"
              LOGISTICS_MARKETPLACES = :"Logistics Marketplaces"
              SHIPPING_FREIGHT_FORWARDING = :"Shipping & Freight Forwarding"
              COLD_CHAIN_LOGISTICS = :"Cold Chain Logistics"
              REVERSE_LOGISTICS_RETURNS = :"Reverse Logistics & Returns"
              CROSS_BORDER_TRADE_TECH = :"Cross-Border Trade Tech"
              TRANSPORTATION_MANAGEMENT_SYSTEMS_TMS = :"Transportation Management Systems (TMS)"
              HOTELS_ACCOMMODATION = :"Hotels & Accommodation"
              VACATION_RENTALS_SHORT_TERM_STAYS = :"Vacation Rentals & Short-Term Stays"
              RESTAURANT_TECH_MANAGEMENT = :"Restaurant Tech & Management"
              TRAVEL_BOOKING_PLATFORMS = :"Travel Booking Platforms"
              TOURISM_EXPERIENCES_ACTIVITIES = :"Tourism Experiences & Activities"
              CRUISE_LINES_MARINE_TOURISM = :"Cruise Lines & Marine Tourism"
              HOSPITALITY_MANAGEMENT_SYSTEMS = :"Hospitality Management Systems"
              EVENT_VENUE_MANAGEMENT = :"Event & Venue Management"
              CORPORATE_TRAVEL_MANAGEMENT = :"Corporate Travel Management"
              TRAVEL_INSURANCE_PROTECTION = :"Travel Insurance & Protection"
              CONSTRUCTION_MANAGEMENT_SOFTWARE = :"Construction Management Software"
              BIM_CAD_DESIGN_TOOLS = :"BIM/CAD & Design Tools"
              CONSTRUCTION_MARKETPLACES = :"Construction Marketplaces"
              EQUIPMENT_RENTAL_MANAGEMENT = :"Equipment Rental & Management"
              BUILDING_MATERIALS_PROCUREMENT = :"Building Materials & Procurement"
              CONSTRUCTION_WORKFORCE_MANAGEMENT = :"Construction Workforce Management"
              PROJECT_ESTIMATION_BIDDING = :"Project Estimation & Bidding"
              MODULAR_PREFAB_CONSTRUCTION = :"Modular & Prefab Construction"
              CONSTRUCTION_SAFETY_COMPLIANCE = :"Construction Safety & Compliance"
              SMART_BUILDING_TECHNOLOGY = :"Smart Building Technology"
              FOOD_BEVERAGE_CPG = :"Food & Beverage CPG"
              HOME_PERSONAL_CARE_CPG = :"Home & Personal Care CPG"
              CPG_ANALYTICS_INSIGHTS = :"CPG Analytics & Insights"
              DIRECT_TO_CONSUMER_CPG_BRANDS = :"Direct-to-Consumer CPG Brands"
              CPG_SUPPLY_CHAIN_DISTRIBUTION = :"CPG Supply Chain & Distribution"
              PRIVATE_LABEL_MANUFACTURING = :"Private Label Manufacturing"
              CPG_RETAIL_INTELLIGENCE = :"CPG Retail Intelligence"
              SUSTAINABLE_CPG_PACKAGING = :"Sustainable CPG & Packaging"
              BEAUTY_COSMETICS_CPG = :"Beauty & Cosmetics CPG"
              HEALTH_WELLNESS_CPG = :"Health & Wellness CPG"

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end

        # @see BrandDev::Models::BrandRetrieveByNameResponse::Brand#links
        class Links < BrandDev::Internal::Type::BaseModel
          # @!attribute blog
          #   URL to the brand's blog or news page
          #
          #   @return [String, nil]
          optional :blog, String, nil?: true

          # @!attribute careers
          #   URL to the brand's careers or job opportunities page
          #
          #   @return [String, nil]
          optional :careers, String, nil?: true

          # @!attribute contact
          #   URL to the brand's contact or contact us page
          #
          #   @return [String, nil]
          optional :contact, String, nil?: true

          # @!attribute pricing
          #   URL to the brand's pricing or plans page
          #
          #   @return [String, nil]
          optional :pricing, String, nil?: true

          # @!attribute privacy
          #   URL to the brand's privacy policy page
          #
          #   @return [String, nil]
          optional :privacy, String, nil?: true

          # @!attribute terms
          #   URL to the brand's terms of service or terms and conditions page
          #
          #   @return [String, nil]
          optional :terms, String, nil?: true

          # @!method initialize(blog: nil, careers: nil, contact: nil, pricing: nil, privacy: nil, terms: nil)
          #   Important website links for the brand
          #
          #   @param blog [String, nil] URL to the brand's blog or news page
          #
          #   @param careers [String, nil] URL to the brand's careers or job opportunities page
          #
          #   @param contact [String, nil] URL to the brand's contact or contact us page
          #
          #   @param pricing [String, nil] URL to the brand's pricing or plans page
          #
          #   @param privacy [String, nil] URL to the brand's privacy policy page
          #
          #   @param terms [String, nil] URL to the brand's terms of service or terms and conditions page
        end

        class Logo < BrandDev::Internal::Type::BaseModel
          # @!attribute colors
          #   Array of colors in the logo
          #
          #   @return [Array<BrandDev::Models::BrandRetrieveByNameResponse::Brand::Logo::Color>, nil]
          optional :colors,
                   -> { BrandDev::Internal::Type::ArrayOf[BrandDev::Models::BrandRetrieveByNameResponse::Brand::Logo::Color] }

          # @!attribute mode
          #   Indicates when this logo is best used: 'light' = best for light mode, 'dark' =
          #   best for dark mode, 'has_opaque_background' = can be used for either as image
          #   has its own background
          #
          #   @return [Symbol, BrandDev::Models::BrandRetrieveByNameResponse::Brand::Logo::Mode, nil]
          optional :mode, enum: -> { BrandDev::Models::BrandRetrieveByNameResponse::Brand::Logo::Mode }

          # @!attribute resolution
          #   Resolution of the logo image
          #
          #   @return [BrandDev::Models::BrandRetrieveByNameResponse::Brand::Logo::Resolution, nil]
          optional :resolution, -> { BrandDev::Models::BrandRetrieveByNameResponse::Brand::Logo::Resolution }

          # @!attribute type
          #   Type of the logo based on resolution (e.g., 'icon', 'logo')
          #
          #   @return [Symbol, BrandDev::Models::BrandRetrieveByNameResponse::Brand::Logo::Type, nil]
          optional :type, enum: -> { BrandDev::Models::BrandRetrieveByNameResponse::Brand::Logo::Type }

          # @!attribute url
          #   CDN hosted url of the logo (ready for display)
          #
          #   @return [String, nil]
          optional :url, String

          # @!method initialize(colors: nil, mode: nil, resolution: nil, type: nil, url: nil)
          #   Some parameter documentations has been truncated, see
          #   {BrandDev::Models::BrandRetrieveByNameResponse::Brand::Logo} for more details.
          #
          #   @param colors [Array<BrandDev::Models::BrandRetrieveByNameResponse::Brand::Logo::Color>] Array of colors in the logo
          #
          #   @param mode [Symbol, BrandDev::Models::BrandRetrieveByNameResponse::Brand::Logo::Mode] Indicates when this logo is best used: 'light' = best for light mode, 'dark' = b
          #
          #   @param resolution [BrandDev::Models::BrandRetrieveByNameResponse::Brand::Logo::Resolution] Resolution of the logo image
          #
          #   @param type [Symbol, BrandDev::Models::BrandRetrieveByNameResponse::Brand::Logo::Type] Type of the logo based on resolution (e.g., 'icon', 'logo')
          #
          #   @param url [String] CDN hosted url of the logo (ready for display)

          class Color < BrandDev::Internal::Type::BaseModel
            # @!attribute hex
            #   Color in hexadecimal format
            #
            #   @return [String, nil]
            optional :hex, String

            # @!attribute name
            #   Name of the color
            #
            #   @return [String, nil]
            optional :name, String

            # @!method initialize(hex: nil, name: nil)
            #   @param hex [String] Color in hexadecimal format
            #
            #   @param name [String] Name of the color
          end

          # Indicates when this logo is best used: 'light' = best for light mode, 'dark' =
          # best for dark mode, 'has_opaque_background' = can be used for either as image
          # has its own background
          #
          # @see BrandDev::Models::BrandRetrieveByNameResponse::Brand::Logo#mode
          module Mode
            extend BrandDev::Internal::Type::Enum

            LIGHT = :light
            DARK = :dark
            HAS_OPAQUE_BACKGROUND = :has_opaque_background

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see BrandDev::Models::BrandRetrieveByNameResponse::Brand::Logo#resolution
          class Resolution < BrandDev::Internal::Type::BaseModel
            # @!attribute aspect_ratio
            #   Aspect ratio of the image (width/height)
            #
            #   @return [Float, nil]
            optional :aspect_ratio, Float

            # @!attribute height
            #   Height of the image in pixels
            #
            #   @return [Integer, nil]
            optional :height, Integer

            # @!attribute width
            #   Width of the image in pixels
            #
            #   @return [Integer, nil]
            optional :width, Integer

            # @!method initialize(aspect_ratio: nil, height: nil, width: nil)
            #   Resolution of the logo image
            #
            #   @param aspect_ratio [Float] Aspect ratio of the image (width/height)
            #
            #   @param height [Integer] Height of the image in pixels
            #
            #   @param width [Integer] Width of the image in pixels
          end

          # Type of the logo based on resolution (e.g., 'icon', 'logo')
          #
          # @see BrandDev::Models::BrandRetrieveByNameResponse::Brand::Logo#type
          module Type
            extend BrandDev::Internal::Type::Enum

            ICON = :icon
            LOGO = :logo

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class Social < BrandDev::Internal::Type::BaseModel
          # @!attribute type
          #   Type of social media, e.g., 'facebook', 'twitter'
          #
          #   @return [String, nil]
          optional :type, String

          # @!attribute url
          #   URL of the social media page
          #
          #   @return [String, nil]
          optional :url, String

          # @!method initialize(type: nil, url: nil)
          #   @param type [String] Type of social media, e.g., 'facebook', 'twitter'
          #
          #   @param url [String] URL of the social media page
        end

        # @see BrandDev::Models::BrandRetrieveByNameResponse::Brand#stock
        class Stock < BrandDev::Internal::Type::BaseModel
          # @!attribute exchange
          #   Stock exchange name
          #
          #   @return [String, nil]
          optional :exchange, String

          # @!attribute ticker
          #   Stock ticker symbol
          #
          #   @return [String, nil]
          optional :ticker, String

          # @!method initialize(exchange: nil, ticker: nil)
          #   Stock market information for this brand (will be null if not a publicly traded
          #   company)
          #
          #   @param exchange [String] Stock exchange name
          #
          #   @param ticker [String] Stock ticker symbol
        end
      end
    end
  end
end
