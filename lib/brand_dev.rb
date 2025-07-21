# frozen_string_literal: true

# Standard libraries.
# rubocop:disable Lint/RedundantRequireStatement
require "English"
require "cgi"
require "date"
require "erb"
require "etc"
require "json"
require "net/http"
require "pathname"
require "rbconfig"
require "securerandom"
require "set"
require "stringio"
require "time"
require "uri"
# rubocop:enable Lint/RedundantRequireStatement

# We already ship the preferred sorbet manifests in the package itself.
# `tapioca` currently does not offer us a way to opt out of unnecessary compilation.
if Object.const_defined?(:Tapioca) &&
   caller.chain([$PROGRAM_NAME]).chain(ARGV).any?(/tapioca/) &&
   ARGV.none?(/dsl/)
  return
end

# Gems.
require "connection_pool"

# Package files.
require_relative "brand_dev/version"
require_relative "brand_dev/internal/util"
require_relative "brand_dev/internal/type/converter"
require_relative "brand_dev/internal/type/unknown"
require_relative "brand_dev/internal/type/boolean"
require_relative "brand_dev/internal/type/file_input"
require_relative "brand_dev/internal/type/enum"
require_relative "brand_dev/internal/type/union"
require_relative "brand_dev/internal/type/array_of"
require_relative "brand_dev/internal/type/hash_of"
require_relative "brand_dev/internal/type/base_model"
require_relative "brand_dev/internal/type/base_page"
require_relative "brand_dev/internal/type/request_parameters"
require_relative "brand_dev/internal"
require_relative "brand_dev/request_options"
require_relative "brand_dev/file_part"
require_relative "brand_dev/errors"
require_relative "brand_dev/internal/transport/base_client"
require_relative "brand_dev/internal/transport/pooled_net_requester"
require_relative "brand_dev/client"
require_relative "brand_dev/models/brand_ai_query_params"
require_relative "brand_dev/models/brand_ai_query_response"
require_relative "brand_dev/models/brand_identify_from_transaction_params"
require_relative "brand_dev/models/brand_identify_from_transaction_response"
require_relative "brand_dev/models/brand_prefetch_params"
require_relative "brand_dev/models/brand_prefetch_response"
require_relative "brand_dev/models/brand_retrieve_by_ticker_params"
require_relative "brand_dev/models/brand_retrieve_by_ticker_response"
require_relative "brand_dev/models/brand_retrieve_naics_params"
require_relative "brand_dev/models/brand_retrieve_naics_response"
require_relative "brand_dev/models/brand_retrieve_params"
require_relative "brand_dev/models/brand_retrieve_response"
require_relative "brand_dev/models/brand_retrieve_simplified_params"
require_relative "brand_dev/models/brand_retrieve_simplified_response"
require_relative "brand_dev/models/brand_screenshot_params"
require_relative "brand_dev/models/brand_screenshot_response"
require_relative "brand_dev/models/brand_styleguide_params"
require_relative "brand_dev/models/brand_styleguide_response"
require_relative "brand_dev/models"
require_relative "brand_dev/resources/brand"
