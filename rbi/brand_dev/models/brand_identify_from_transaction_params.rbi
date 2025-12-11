# typed: strong

module BrandDev
  module Models
    class BrandIdentifyFromTransactionParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            BrandDev::BrandIdentifyFromTransactionParams,
            BrandDev::Internal::AnyHash
          )
        end

      # Transaction information to identify the brand
      sig { returns(String) }
      attr_accessor :transaction_info

      # Optional city name to prioritize when searching for the brand.
      sig { returns(T.nilable(String)) }
      attr_reader :city

      sig { params(city: String).void }
      attr_writer :city

      # Optional country code (GL parameter) to specify the country. This affects the
      # geographic location used for search queries.
      sig do
        returns(
          T.nilable(
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::OrSymbol
          )
        )
      end
      attr_reader :country_gl

      sig do
        params(
          country_gl:
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::OrSymbol
        ).void
      end
      attr_writer :country_gl

      # Optional parameter to force the language of the retrieved brand data.
      sig do
        returns(
          T.nilable(
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::OrSymbol
          )
        )
      end
      attr_reader :force_language

      sig do
        params(
          force_language:
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::OrSymbol
        ).void
      end
      attr_writer :force_language

      # Optional parameter to optimize the API call for maximum speed. When set to true,
      # the API will skip time-consuming operations for faster response at the cost of
      # less comprehensive data.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :max_speed

      sig { params(max_speed: T::Boolean).void }
      attr_writer :max_speed

      # Optional Merchant Category Code (MCC) to help identify the business
      # category/industry.
      sig { returns(T.nilable(String)) }
      attr_reader :mcc

      sig { params(mcc: String).void }
      attr_writer :mcc

      # Optional phone number from the transaction to help verify brand match.
      sig { returns(T.nilable(Float)) }
      attr_reader :phone

      sig { params(phone: Float).void }
      attr_writer :phone

      # Optional timeout in milliseconds for the request. If the request takes longer
      # than this value, it will be aborted with a 408 status code. Maximum allowed
      # value is 300000ms (5 minutes).
      sig { returns(T.nilable(Integer)) }
      attr_reader :timeout_ms

      sig { params(timeout_ms: Integer).void }
      attr_writer :timeout_ms

      sig do
        params(
          transaction_info: String,
          city: String,
          country_gl:
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::OrSymbol,
          force_language:
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::OrSymbol,
          max_speed: T::Boolean,
          mcc: String,
          phone: Float,
          timeout_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Transaction information to identify the brand
        transaction_info:,
        # Optional city name to prioritize when searching for the brand.
        city: nil,
        # Optional country code (GL parameter) to specify the country. This affects the
        # geographic location used for search queries.
        country_gl: nil,
        # Optional parameter to force the language of the retrieved brand data.
        force_language: nil,
        # Optional parameter to optimize the API call for maximum speed. When set to true,
        # the API will skip time-consuming operations for faster response at the cost of
        # less comprehensive data.
        max_speed: nil,
        # Optional Merchant Category Code (MCC) to help identify the business
        # category/industry.
        mcc: nil,
        # Optional phone number from the transaction to help verify brand match.
        phone: nil,
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
            transaction_info: String,
            city: String,
            country_gl:
              BrandDev::BrandIdentifyFromTransactionParams::CountryGl::OrSymbol,
            force_language:
              BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::OrSymbol,
            max_speed: T::Boolean,
            mcc: String,
            phone: Float,
            timeout_ms: Integer,
            request_options: BrandDev::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Optional country code (GL parameter) to specify the country. This affects the
      # geographic location used for search queries.
      module CountryGl
        extend BrandDev::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              BrandDev::BrandIdentifyFromTransactionParams::CountryGl
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AD =
          T.let(
            :ad,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        AE =
          T.let(
            :ae,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        AF =
          T.let(
            :af,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        AG =
          T.let(
            :ag,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        AI =
          T.let(
            :ai,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        AL =
          T.let(
            :al,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        AM =
          T.let(
            :am,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        AN =
          T.let(
            :an,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        AO =
          T.let(
            :ao,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        AQ =
          T.let(
            :aq,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        AR =
          T.let(
            :ar,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        AS =
          T.let(
            :as,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        AT =
          T.let(
            :at,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        AU =
          T.let(
            :au,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        AW =
          T.let(
            :aw,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        AZ =
          T.let(
            :az,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        BA =
          T.let(
            :ba,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        BB =
          T.let(
            :bb,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        BD =
          T.let(
            :bd,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        BE =
          T.let(
            :be,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        BF =
          T.let(
            :bf,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        BG =
          T.let(
            :bg,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        BH =
          T.let(
            :bh,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        BI =
          T.let(
            :bi,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        BJ =
          T.let(
            :bj,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        BM =
          T.let(
            :bm,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        BN =
          T.let(
            :bn,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        BO =
          T.let(
            :bo,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        BR =
          T.let(
            :br,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        BS =
          T.let(
            :bs,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        BT =
          T.let(
            :bt,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        BV =
          T.let(
            :bv,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        BW =
          T.let(
            :bw,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        BY =
          T.let(
            :by,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        BZ =
          T.let(
            :bz,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        CA =
          T.let(
            :ca,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        CC =
          T.let(
            :cc,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        CD =
          T.let(
            :cd,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        CF =
          T.let(
            :cf,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        CG =
          T.let(
            :cg,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        CH =
          T.let(
            :ch,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        CI =
          T.let(
            :ci,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        CK =
          T.let(
            :ck,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        CL =
          T.let(
            :cl,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        CM =
          T.let(
            :cm,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        CN =
          T.let(
            :cn,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        CO =
          T.let(
            :co,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        CR =
          T.let(
            :cr,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        CU =
          T.let(
            :cu,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        CV =
          T.let(
            :cv,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        CX =
          T.let(
            :cx,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        CY =
          T.let(
            :cy,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        CZ =
          T.let(
            :cz,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        DE =
          T.let(
            :de,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        DJ =
          T.let(
            :dj,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        DK =
          T.let(
            :dk,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        DM =
          T.let(
            :dm,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        DO =
          T.let(
            :do,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        DZ =
          T.let(
            :dz,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        EC =
          T.let(
            :ec,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        EE =
          T.let(
            :ee,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        EG =
          T.let(
            :eg,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        EH =
          T.let(
            :eh,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        ER =
          T.let(
            :er,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        ES =
          T.let(
            :es,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        ET =
          T.let(
            :et,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        FI =
          T.let(
            :fi,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        FJ =
          T.let(
            :fj,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        FK =
          T.let(
            :fk,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        FM =
          T.let(
            :fm,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        FO =
          T.let(
            :fo,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        FR =
          T.let(
            :fr,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        GA =
          T.let(
            :ga,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        GB =
          T.let(
            :gb,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        GD =
          T.let(
            :gd,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        GE =
          T.let(
            :ge,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        GF =
          T.let(
            :gf,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        GH =
          T.let(
            :gh,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        GI =
          T.let(
            :gi,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        GL =
          T.let(
            :gl,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        GM =
          T.let(
            :gm,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        GN =
          T.let(
            :gn,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        GP =
          T.let(
            :gp,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        GQ =
          T.let(
            :gq,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        GR =
          T.let(
            :gr,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        GS =
          T.let(
            :gs,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        GT =
          T.let(
            :gt,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        GU =
          T.let(
            :gu,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        GW =
          T.let(
            :gw,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        GY =
          T.let(
            :gy,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        HK =
          T.let(
            :hk,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        HM =
          T.let(
            :hm,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        HN =
          T.let(
            :hn,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        HR =
          T.let(
            :hr,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        HT =
          T.let(
            :ht,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        HU =
          T.let(
            :hu,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        ID =
          T.let(
            :id,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        IE =
          T.let(
            :ie,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        IL =
          T.let(
            :il,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        IN =
          T.let(
            :in,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        IO =
          T.let(
            :io,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        IQ =
          T.let(
            :iq,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        IR =
          T.let(
            :ir,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        IS =
          T.let(
            :is,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        IT =
          T.let(
            :it,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        JM =
          T.let(
            :jm,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        JO =
          T.let(
            :jo,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        JP =
          T.let(
            :jp,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        KE =
          T.let(
            :ke,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        KG =
          T.let(
            :kg,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        KH =
          T.let(
            :kh,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        KI =
          T.let(
            :ki,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        KM =
          T.let(
            :km,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        KN =
          T.let(
            :kn,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        KP =
          T.let(
            :kp,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        KR =
          T.let(
            :kr,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        KW =
          T.let(
            :kw,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        KY =
          T.let(
            :ky,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        KZ =
          T.let(
            :kz,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        LA =
          T.let(
            :la,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        LB =
          T.let(
            :lb,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        LC =
          T.let(
            :lc,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        LI =
          T.let(
            :li,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        LK =
          T.let(
            :lk,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        LR =
          T.let(
            :lr,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        LS =
          T.let(
            :ls,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        LT =
          T.let(
            :lt,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        LU =
          T.let(
            :lu,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        LV =
          T.let(
            :lv,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        LY =
          T.let(
            :ly,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        MA =
          T.let(
            :ma,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        MC =
          T.let(
            :mc,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        MD =
          T.let(
            :md,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        MG =
          T.let(
            :mg,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        MH =
          T.let(
            :mh,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        MK =
          T.let(
            :mk,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        ML =
          T.let(
            :ml,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        MM =
          T.let(
            :mm,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        MN =
          T.let(
            :mn,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        MO =
          T.let(
            :mo,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        MP =
          T.let(
            :mp,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        MQ =
          T.let(
            :mq,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        MR =
          T.let(
            :mr,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        MS =
          T.let(
            :ms,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        MT =
          T.let(
            :mt,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        MU =
          T.let(
            :mu,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        MV =
          T.let(
            :mv,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        MW =
          T.let(
            :mw,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        MX =
          T.let(
            :mx,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        MY =
          T.let(
            :my,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        MZ =
          T.let(
            :mz,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        NA =
          T.let(
            :na,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        NC =
          T.let(
            :nc,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        NE =
          T.let(
            :ne,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        NF =
          T.let(
            :nf,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        NG =
          T.let(
            :ng,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        NI =
          T.let(
            :ni,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        NL =
          T.let(
            :nl,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        NO =
          T.let(
            :no,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        NP =
          T.let(
            :np,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        NR =
          T.let(
            :nr,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        NU =
          T.let(
            :nu,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        NZ =
          T.let(
            :nz,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        OM =
          T.let(
            :om,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        PA =
          T.let(
            :pa,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        PE =
          T.let(
            :pe,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        PF =
          T.let(
            :pf,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        PG =
          T.let(
            :pg,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        PH =
          T.let(
            :ph,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        PK =
          T.let(
            :pk,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        PL =
          T.let(
            :pl,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        PM =
          T.let(
            :pm,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        PN =
          T.let(
            :pn,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        PR =
          T.let(
            :pr,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        PS =
          T.let(
            :ps,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        PT =
          T.let(
            :pt,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        PW =
          T.let(
            :pw,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        PY =
          T.let(
            :py,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        QA =
          T.let(
            :qa,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        RE =
          T.let(
            :re,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        RO =
          T.let(
            :ro,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        RS =
          T.let(
            :rs,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        RU =
          T.let(
            :ru,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        RW =
          T.let(
            :rw,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        SA =
          T.let(
            :sa,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        SB =
          T.let(
            :sb,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        SC =
          T.let(
            :sc,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        SD =
          T.let(
            :sd,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        SE =
          T.let(
            :se,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        SG =
          T.let(
            :sg,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        SH =
          T.let(
            :sh,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        SI =
          T.let(
            :si,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        SJ =
          T.let(
            :sj,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        SK =
          T.let(
            :sk,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        SL =
          T.let(
            :sl,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        SM =
          T.let(
            :sm,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        SN =
          T.let(
            :sn,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        SO =
          T.let(
            :so,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        SR =
          T.let(
            :sr,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        ST =
          T.let(
            :st,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        SV =
          T.let(
            :sv,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        SY =
          T.let(
            :sy,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        SZ =
          T.let(
            :sz,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        TC =
          T.let(
            :tc,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        TD =
          T.let(
            :td,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        TF =
          T.let(
            :tf,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        TG =
          T.let(
            :tg,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        TH =
          T.let(
            :th,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        TJ =
          T.let(
            :tj,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        TK =
          T.let(
            :tk,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        TL =
          T.let(
            :tl,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        TM =
          T.let(
            :tm,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        TN =
          T.let(
            :tn,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        TO =
          T.let(
            :to,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        TR =
          T.let(
            :tr,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        TT =
          T.let(
            :tt,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        TV =
          T.let(
            :tv,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        TW =
          T.let(
            :tw,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        TZ =
          T.let(
            :tz,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        UA =
          T.let(
            :ua,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        UG =
          T.let(
            :ug,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        UM =
          T.let(
            :um,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        US =
          T.let(
            :us,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        UY =
          T.let(
            :uy,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        UZ =
          T.let(
            :uz,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        VA =
          T.let(
            :va,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        VC =
          T.let(
            :vc,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        VE =
          T.let(
            :ve,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        VG =
          T.let(
            :vg,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        VI =
          T.let(
            :vi,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        VN =
          T.let(
            :vn,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        VU =
          T.let(
            :vu,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        WF =
          T.let(
            :wf,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        WS =
          T.let(
            :ws,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        YE =
          T.let(
            :ye,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        YT =
          T.let(
            :yt,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        ZA =
          T.let(
            :za,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        ZM =
          T.let(
            :zm,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )
        ZW =
          T.let(
            :zw,
            BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              BrandDev::BrandIdentifyFromTransactionParams::CountryGl::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Optional parameter to force the language of the retrieved brand data.
      module ForceLanguage
        extend BrandDev::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALBANIAN =
          T.let(
            :albanian,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        ARABIC =
          T.let(
            :arabic,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        AZERI =
          T.let(
            :azeri,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        BENGALI =
          T.let(
            :bengali,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        BULGARIAN =
          T.let(
            :bulgarian,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        CEBUANO =
          T.let(
            :cebuano,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        CROATIAN =
          T.let(
            :croatian,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        CZECH =
          T.let(
            :czech,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        DANISH =
          T.let(
            :danish,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        DUTCH =
          T.let(
            :dutch,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        ENGLISH =
          T.let(
            :english,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        ESTONIAN =
          T.let(
            :estonian,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        FARSI =
          T.let(
            :farsi,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        FINNISH =
          T.let(
            :finnish,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        FRENCH =
          T.let(
            :french,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        GERMAN =
          T.let(
            :german,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        HAUSA =
          T.let(
            :hausa,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        HAWAIIAN =
          T.let(
            :hawaiian,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        HINDI =
          T.let(
            :hindi,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        HUNGARIAN =
          T.let(
            :hungarian,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        ICELANDIC =
          T.let(
            :icelandic,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        INDONESIAN =
          T.let(
            :indonesian,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        ITALIAN =
          T.let(
            :italian,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        KAZAKH =
          T.let(
            :kazakh,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        KYRGYZ =
          T.let(
            :kyrgyz,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        LATIN =
          T.let(
            :latin,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        LATVIAN =
          T.let(
            :latvian,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        LITHUANIAN =
          T.let(
            :lithuanian,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        MACEDONIAN =
          T.let(
            :macedonian,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        MONGOLIAN =
          T.let(
            :mongolian,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        NEPALI =
          T.let(
            :nepali,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        NORWEGIAN =
          T.let(
            :norwegian,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        PASHTO =
          T.let(
            :pashto,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        PIDGIN =
          T.let(
            :pidgin,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        POLISH =
          T.let(
            :polish,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        PORTUGUESE =
          T.let(
            :portuguese,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        ROMANIAN =
          T.let(
            :romanian,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        RUSSIAN =
          T.let(
            :russian,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        SERBIAN =
          T.let(
            :serbian,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        SLOVAK =
          T.let(
            :slovak,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        SLOVENE =
          T.let(
            :slovene,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        SOMALI =
          T.let(
            :somali,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        SPANISH =
          T.let(
            :spanish,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        SWAHILI =
          T.let(
            :swahili,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        SWEDISH =
          T.let(
            :swedish,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        TAGALOG =
          T.let(
            :tagalog,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        TURKISH =
          T.let(
            :turkish,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        UKRAINIAN =
          T.let(
            :ukrainian,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        URDU =
          T.let(
            :urdu,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        UZBEK =
          T.let(
            :uzbek,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        VIETNAMESE =
          T.let(
            :vietnamese,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )
        WELSH =
          T.let(
            :welsh,
            BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              BrandDev::BrandIdentifyFromTransactionParams::ForceLanguage::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
