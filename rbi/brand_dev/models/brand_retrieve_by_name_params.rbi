# typed: strong

module BrandDev
  module Models
    class BrandRetrieveByNameParams < BrandDev::Internal::Type::BaseModel
      extend BrandDev::Internal::Type::RequestParameters::Converter
      include BrandDev::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            BrandDev::BrandRetrieveByNameParams,
            BrandDev::Internal::AnyHash
          )
        end

      # Company name to retrieve brand data for (e.g., 'Apple Inc', 'Microsoft
      # Corporation'). Must be 3-30 characters.
      sig { returns(String) }
      attr_accessor :name

      # Optional country code hint (GL parameter) to specify the country for the company
      # name.
      sig do
        returns(
          T.nilable(BrandDev::BrandRetrieveByNameParams::CountryGl::OrSymbol)
        )
      end
      attr_reader :country_gl

      sig do
        params(
          country_gl: BrandDev::BrandRetrieveByNameParams::CountryGl::OrSymbol
        ).void
      end
      attr_writer :country_gl

      # Optional parameter to force the language of the retrieved brand data.
      sig do
        returns(
          T.nilable(
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::OrSymbol
          )
        )
      end
      attr_reader :force_language

      sig do
        params(
          force_language:
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::OrSymbol
        ).void
      end
      attr_writer :force_language

      # Maximum age in milliseconds for cached brand data before the API performs a hard
      # refresh. Defaults to 3 months (7776000000 ms). Values below 1 day (86400000 ms)
      # are clamped to 1 day; values above 1 year (31536000000 ms) are clamped to 1
      # year.
      sig { returns(T.nilable(Integer)) }
      attr_reader :max_age_ms

      sig { params(max_age_ms: Integer).void }
      attr_writer :max_age_ms

      # Optional parameter to optimize the API call for maximum speed. When set to true,
      # the API will skip time-consuming operations for faster response at the cost of
      # less comprehensive data.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :max_speed

      sig { params(max_speed: T::Boolean).void }
      attr_writer :max_speed

      # Optional comma-separated caller-defined tags for tracking this request. Tags are
      # recorded on the request's usage log and can be used to filter usage on the
      # dashboard usage page. Up to 20 tags, each 1-50 characters.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :tags

      sig { params(tags: T::Array[String]).void }
      attr_writer :tags

      # Optional timeout in milliseconds for the request. If the request takes longer
      # than this value, it will be aborted with a 408 status code. Maximum allowed
      # value is 300000ms (5 minutes).
      sig { returns(T.nilable(Integer)) }
      attr_reader :timeout_ms

      sig { params(timeout_ms: Integer).void }
      attr_writer :timeout_ms

      sig do
        params(
          name: String,
          country_gl: BrandDev::BrandRetrieveByNameParams::CountryGl::OrSymbol,
          force_language:
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::OrSymbol,
          max_age_ms: Integer,
          max_speed: T::Boolean,
          tags: T::Array[String],
          timeout_ms: Integer,
          request_options: BrandDev::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Company name to retrieve brand data for (e.g., 'Apple Inc', 'Microsoft
        # Corporation'). Must be 3-30 characters.
        name:,
        # Optional country code hint (GL parameter) to specify the country for the company
        # name.
        country_gl: nil,
        # Optional parameter to force the language of the retrieved brand data.
        force_language: nil,
        # Maximum age in milliseconds for cached brand data before the API performs a hard
        # refresh. Defaults to 3 months (7776000000 ms). Values below 1 day (86400000 ms)
        # are clamped to 1 day; values above 1 year (31536000000 ms) are clamped to 1
        # year.
        max_age_ms: nil,
        # Optional parameter to optimize the API call for maximum speed. When set to true,
        # the API will skip time-consuming operations for faster response at the cost of
        # less comprehensive data.
        max_speed: nil,
        # Optional comma-separated caller-defined tags for tracking this request. Tags are
        # recorded on the request's usage log and can be used to filter usage on the
        # dashboard usage page. Up to 20 tags, each 1-50 characters.
        tags: nil,
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
            name: String,
            country_gl:
              BrandDev::BrandRetrieveByNameParams::CountryGl::OrSymbol,
            force_language:
              BrandDev::BrandRetrieveByNameParams::ForceLanguage::OrSymbol,
            max_age_ms: Integer,
            max_speed: T::Boolean,
            tags: T::Array[String],
            timeout_ms: Integer,
            request_options: BrandDev::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Optional country code hint (GL parameter) to specify the country for the company
      # name.
      module CountryGl
        extend BrandDev::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, BrandDev::BrandRetrieveByNameParams::CountryGl)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AD =
          T.let(
            :ad,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        AE =
          T.let(
            :ae,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        AF =
          T.let(
            :af,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        AG =
          T.let(
            :ag,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        AI =
          T.let(
            :ai,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        AL =
          T.let(
            :al,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        AM =
          T.let(
            :am,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        AN =
          T.let(
            :an,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        AO =
          T.let(
            :ao,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        AQ =
          T.let(
            :aq,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        AR =
          T.let(
            :ar,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        AS =
          T.let(
            :as,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        AT =
          T.let(
            :at,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        AU =
          T.let(
            :au,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        AW =
          T.let(
            :aw,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        AZ =
          T.let(
            :az,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        BA =
          T.let(
            :ba,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        BB =
          T.let(
            :bb,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        BD =
          T.let(
            :bd,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        BE =
          T.let(
            :be,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        BF =
          T.let(
            :bf,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        BG =
          T.let(
            :bg,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        BH =
          T.let(
            :bh,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        BI =
          T.let(
            :bi,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        BJ =
          T.let(
            :bj,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        BM =
          T.let(
            :bm,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        BN =
          T.let(
            :bn,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        BO =
          T.let(
            :bo,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        BR =
          T.let(
            :br,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        BS =
          T.let(
            :bs,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        BT =
          T.let(
            :bt,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        BV =
          T.let(
            :bv,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        BW =
          T.let(
            :bw,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        BY =
          T.let(
            :by,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        BZ =
          T.let(
            :bz,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        CA =
          T.let(
            :ca,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        CC =
          T.let(
            :cc,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        CD =
          T.let(
            :cd,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        CF =
          T.let(
            :cf,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        CG =
          T.let(
            :cg,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        CH =
          T.let(
            :ch,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        CI =
          T.let(
            :ci,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        CK =
          T.let(
            :ck,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        CL =
          T.let(
            :cl,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        CM =
          T.let(
            :cm,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        CN =
          T.let(
            :cn,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        CO =
          T.let(
            :co,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        CR =
          T.let(
            :cr,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        CU =
          T.let(
            :cu,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        CV =
          T.let(
            :cv,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        CX =
          T.let(
            :cx,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        CY =
          T.let(
            :cy,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        CZ =
          T.let(
            :cz,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        DE =
          T.let(
            :de,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        DJ =
          T.let(
            :dj,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        DK =
          T.let(
            :dk,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        DM =
          T.let(
            :dm,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        DO =
          T.let(
            :do,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        DZ =
          T.let(
            :dz,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        EC =
          T.let(
            :ec,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        EE =
          T.let(
            :ee,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        EG =
          T.let(
            :eg,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        EH =
          T.let(
            :eh,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        ER =
          T.let(
            :er,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        ES =
          T.let(
            :es,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        ET =
          T.let(
            :et,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        FI =
          T.let(
            :fi,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        FJ =
          T.let(
            :fj,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        FK =
          T.let(
            :fk,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        FM =
          T.let(
            :fm,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        FO =
          T.let(
            :fo,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        FR =
          T.let(
            :fr,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        GA =
          T.let(
            :ga,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        GB =
          T.let(
            :gb,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        GD =
          T.let(
            :gd,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        GE =
          T.let(
            :ge,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        GF =
          T.let(
            :gf,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        GH =
          T.let(
            :gh,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        GI =
          T.let(
            :gi,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        GL =
          T.let(
            :gl,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        GM =
          T.let(
            :gm,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        GN =
          T.let(
            :gn,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        GP =
          T.let(
            :gp,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        GQ =
          T.let(
            :gq,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        GR =
          T.let(
            :gr,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        GS =
          T.let(
            :gs,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        GT =
          T.let(
            :gt,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        GU =
          T.let(
            :gu,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        GW =
          T.let(
            :gw,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        GY =
          T.let(
            :gy,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        HK =
          T.let(
            :hk,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        HM =
          T.let(
            :hm,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        HN =
          T.let(
            :hn,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        HR =
          T.let(
            :hr,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        HT =
          T.let(
            :ht,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        HU =
          T.let(
            :hu,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        ID =
          T.let(
            :id,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        IE =
          T.let(
            :ie,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        IL =
          T.let(
            :il,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        IN =
          T.let(
            :in,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        IO =
          T.let(
            :io,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        IQ =
          T.let(
            :iq,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        IR =
          T.let(
            :ir,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        IS =
          T.let(
            :is,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        IT =
          T.let(
            :it,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        JM =
          T.let(
            :jm,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        JO =
          T.let(
            :jo,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        JP =
          T.let(
            :jp,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        KE =
          T.let(
            :ke,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        KG =
          T.let(
            :kg,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        KH =
          T.let(
            :kh,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        KI =
          T.let(
            :ki,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        KM =
          T.let(
            :km,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        KN =
          T.let(
            :kn,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        KP =
          T.let(
            :kp,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        KR =
          T.let(
            :kr,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        KW =
          T.let(
            :kw,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        KY =
          T.let(
            :ky,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        KZ =
          T.let(
            :kz,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        LA =
          T.let(
            :la,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        LB =
          T.let(
            :lb,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        LC =
          T.let(
            :lc,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        LI =
          T.let(
            :li,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        LK =
          T.let(
            :lk,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        LR =
          T.let(
            :lr,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        LS =
          T.let(
            :ls,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        LT =
          T.let(
            :lt,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        LU =
          T.let(
            :lu,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        LV =
          T.let(
            :lv,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        LY =
          T.let(
            :ly,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        MA =
          T.let(
            :ma,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        MC =
          T.let(
            :mc,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        MD =
          T.let(
            :md,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        MG =
          T.let(
            :mg,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        MH =
          T.let(
            :mh,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        MK =
          T.let(
            :mk,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        ML =
          T.let(
            :ml,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        MM =
          T.let(
            :mm,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        MN =
          T.let(
            :mn,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        MO =
          T.let(
            :mo,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        MP =
          T.let(
            :mp,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        MQ =
          T.let(
            :mq,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        MR =
          T.let(
            :mr,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        MS =
          T.let(
            :ms,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        MT =
          T.let(
            :mt,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        MU =
          T.let(
            :mu,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        MV =
          T.let(
            :mv,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        MW =
          T.let(
            :mw,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        MX =
          T.let(
            :mx,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        MY =
          T.let(
            :my,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        MZ =
          T.let(
            :mz,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        NA =
          T.let(
            :na,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        NC =
          T.let(
            :nc,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        NE =
          T.let(
            :ne,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        NF =
          T.let(
            :nf,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        NG =
          T.let(
            :ng,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        NI =
          T.let(
            :ni,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        NL =
          T.let(
            :nl,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        NO =
          T.let(
            :no,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        NP =
          T.let(
            :np,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        NR =
          T.let(
            :nr,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        NU =
          T.let(
            :nu,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        NZ =
          T.let(
            :nz,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        OM =
          T.let(
            :om,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        PA =
          T.let(
            :pa,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        PE =
          T.let(
            :pe,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        PF =
          T.let(
            :pf,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        PG =
          T.let(
            :pg,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        PH =
          T.let(
            :ph,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        PK =
          T.let(
            :pk,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        PL =
          T.let(
            :pl,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        PM =
          T.let(
            :pm,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        PN =
          T.let(
            :pn,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        PR =
          T.let(
            :pr,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        PS =
          T.let(
            :ps,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        PT =
          T.let(
            :pt,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        PW =
          T.let(
            :pw,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        PY =
          T.let(
            :py,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        QA =
          T.let(
            :qa,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        RE =
          T.let(
            :re,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        RO =
          T.let(
            :ro,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        RS =
          T.let(
            :rs,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        RU =
          T.let(
            :ru,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        RW =
          T.let(
            :rw,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        SA =
          T.let(
            :sa,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        SB =
          T.let(
            :sb,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        SC =
          T.let(
            :sc,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        SD =
          T.let(
            :sd,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        SE =
          T.let(
            :se,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        SG =
          T.let(
            :sg,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        SH =
          T.let(
            :sh,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        SI =
          T.let(
            :si,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        SJ =
          T.let(
            :sj,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        SK =
          T.let(
            :sk,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        SL =
          T.let(
            :sl,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        SM =
          T.let(
            :sm,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        SN =
          T.let(
            :sn,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        SO =
          T.let(
            :so,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        SR =
          T.let(
            :sr,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        ST =
          T.let(
            :st,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        SV =
          T.let(
            :sv,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        SY =
          T.let(
            :sy,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        SZ =
          T.let(
            :sz,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        TC =
          T.let(
            :tc,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        TD =
          T.let(
            :td,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        TF =
          T.let(
            :tf,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        TG =
          T.let(
            :tg,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        TH =
          T.let(
            :th,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        TJ =
          T.let(
            :tj,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        TK =
          T.let(
            :tk,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        TL =
          T.let(
            :tl,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        TM =
          T.let(
            :tm,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        TN =
          T.let(
            :tn,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        TO =
          T.let(
            :to,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        TR =
          T.let(
            :tr,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        TT =
          T.let(
            :tt,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        TV =
          T.let(
            :tv,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        TW =
          T.let(
            :tw,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        TZ =
          T.let(
            :tz,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        UA =
          T.let(
            :ua,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        UG =
          T.let(
            :ug,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        UM =
          T.let(
            :um,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        US =
          T.let(
            :us,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        UY =
          T.let(
            :uy,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        UZ =
          T.let(
            :uz,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        VA =
          T.let(
            :va,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        VC =
          T.let(
            :vc,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        VE =
          T.let(
            :ve,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        VG =
          T.let(
            :vg,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        VI =
          T.let(
            :vi,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        VN =
          T.let(
            :vn,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        VU =
          T.let(
            :vu,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        WF =
          T.let(
            :wf,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        WS =
          T.let(
            :ws,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        YE =
          T.let(
            :ye,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        YT =
          T.let(
            :yt,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        ZA =
          T.let(
            :za,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        ZM =
          T.let(
            :zm,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )
        ZW =
          T.let(
            :zw,
            BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              BrandDev::BrandRetrieveByNameParams::CountryGl::TaggedSymbol
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
            T.all(Symbol, BrandDev::BrandRetrieveByNameParams::ForceLanguage)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AFRIKAANS =
          T.let(
            :afrikaans,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        ALBANIAN =
          T.let(
            :albanian,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        AMHARIC =
          T.let(
            :amharic,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        ARABIC =
          T.let(
            :arabic,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        ARMENIAN =
          T.let(
            :armenian,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        ASSAMESE =
          T.let(
            :assamese,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        AYMARA =
          T.let(
            :aymara,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        AZERI =
          T.let(
            :azeri,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        BASQUE =
          T.let(
            :basque,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        BELARUSIAN =
          T.let(
            :belarusian,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        BENGALI =
          T.let(
            :bengali,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        BOSNIAN =
          T.let(
            :bosnian,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        BULGARIAN =
          T.let(
            :bulgarian,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        BURMESE =
          T.let(
            :burmese,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        CANTONESE =
          T.let(
            :cantonese,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        CATALAN =
          T.let(
            :catalan,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        CEBUANO =
          T.let(
            :cebuano,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        CHINESE =
          T.let(
            :chinese,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        CORSICAN =
          T.let(
            :corsican,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        CROATIAN =
          T.let(
            :croatian,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        CZECH =
          T.let(
            :czech,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        DANISH =
          T.let(
            :danish,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        DUTCH =
          T.let(
            :dutch,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        ENGLISH =
          T.let(
            :english,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        ESPERANTO =
          T.let(
            :esperanto,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        ESTONIAN =
          T.let(
            :estonian,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        FARSI =
          T.let(
            :farsi,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        FIJIAN =
          T.let(
            :fijian,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        FINNISH =
          T.let(
            :finnish,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        FRENCH =
          T.let(
            :french,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        GALICIAN =
          T.let(
            :galician,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        GEORGIAN =
          T.let(
            :georgian,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        GERMAN =
          T.let(
            :german,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        GREEK =
          T.let(
            :greek,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        GUARANI =
          T.let(
            :guarani,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        GUJARATI =
          T.let(
            :gujarati,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        HAITIAN_CREOLE =
          T.let(
            :"haitian-creole",
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        HAUSA =
          T.let(
            :hausa,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        HAWAIIAN =
          T.let(
            :hawaiian,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        HEBREW =
          T.let(
            :hebrew,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        HINDI =
          T.let(
            :hindi,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        HMONG =
          T.let(
            :hmong,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        HUNGARIAN =
          T.let(
            :hungarian,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        ICELANDIC =
          T.let(
            :icelandic,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        IGBO =
          T.let(
            :igbo,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        INDONESIAN =
          T.let(
            :indonesian,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        IRISH =
          T.let(
            :irish,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        ITALIAN =
          T.let(
            :italian,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        JAPANESE =
          T.let(
            :japanese,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        JAVANESE =
          T.let(
            :javanese,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        KANNADA =
          T.let(
            :kannada,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        KAZAKH =
          T.let(
            :kazakh,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        KHMER =
          T.let(
            :khmer,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        KINYARWANDA =
          T.let(
            :kinyarwanda,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        KOREAN =
          T.let(
            :korean,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        KURDISH =
          T.let(
            :kurdish,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        KYRGYZ =
          T.let(
            :kyrgyz,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        LAO =
          T.let(
            :lao,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        LATIN =
          T.let(
            :latin,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        LATVIAN =
          T.let(
            :latvian,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        LINGALA =
          T.let(
            :lingala,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        LITHUANIAN =
          T.let(
            :lithuanian,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        LUXEMBOURGISH =
          T.let(
            :luxembourgish,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        MACEDONIAN =
          T.let(
            :macedonian,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        MALAGASY =
          T.let(
            :malagasy,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        MALAY =
          T.let(
            :malay,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        MALAYALAM =
          T.let(
            :malayalam,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        MALTESE =
          T.let(
            :maltese,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        MAORI =
          T.let(
            :maori,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        MARATHI =
          T.let(
            :marathi,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        MONGOLIAN =
          T.let(
            :mongolian,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        NEPALI =
          T.let(
            :nepali,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        NORWEGIAN =
          T.let(
            :norwegian,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        ODIA =
          T.let(
            :odia,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        OROMO =
          T.let(
            :oromo,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        PASHTO =
          T.let(
            :pashto,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        PIDGIN =
          T.let(
            :pidgin,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        POLISH =
          T.let(
            :polish,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        PORTUGUESE =
          T.let(
            :portuguese,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        PUNJABI =
          T.let(
            :punjabi,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        QUECHUA =
          T.let(
            :quechua,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        ROMANIAN =
          T.let(
            :romanian,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        RUSSIAN =
          T.let(
            :russian,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        SAMOAN =
          T.let(
            :samoan,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        SCOTTISH_GAELIC =
          T.let(
            :"scottish-gaelic",
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        SERBIAN =
          T.let(
            :serbian,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        SESOTHO =
          T.let(
            :sesotho,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        SHONA =
          T.let(
            :shona,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        SINDHI =
          T.let(
            :sindhi,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        SINHALA =
          T.let(
            :sinhala,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        SLOVAK =
          T.let(
            :slovak,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        SLOVENE =
          T.let(
            :slovene,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        SOMALI =
          T.let(
            :somali,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        SPANISH =
          T.let(
            :spanish,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        SUNDANESE =
          T.let(
            :sundanese,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        SWAHILI =
          T.let(
            :swahili,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        SWEDISH =
          T.let(
            :swedish,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        TAGALOG =
          T.let(
            :tagalog,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        TAJIK =
          T.let(
            :tajik,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        TAMIL =
          T.let(
            :tamil,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        TATAR =
          T.let(
            :tatar,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        TELUGU =
          T.let(
            :telugu,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        THAI =
          T.let(
            :thai,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        TIBETAN =
          T.let(
            :tibetan,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        TIGRINYA =
          T.let(
            :tigrinya,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        TONGAN =
          T.let(
            :tongan,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        TSWANA =
          T.let(
            :tswana,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        TURKISH =
          T.let(
            :turkish,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        TURKMEN =
          T.let(
            :turkmen,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        UKRAINIAN =
          T.let(
            :ukrainian,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        URDU =
          T.let(
            :urdu,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        UYGHUR =
          T.let(
            :uyghur,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        UZBEK =
          T.let(
            :uzbek,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        VIETNAMESE =
          T.let(
            :vietnamese,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        WELSH =
          T.let(
            :welsh,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        WOLOF =
          T.let(
            :wolof,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        XHOSA =
          T.let(
            :xhosa,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        YIDDISH =
          T.let(
            :yiddish,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        YORUBA =
          T.let(
            :yoruba,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )
        ZULU =
          T.let(
            :zulu,
            BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              BrandDev::BrandRetrieveByNameParams::ForceLanguage::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
