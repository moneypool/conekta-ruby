require "json"
require "i18n"

require "conekta/version"

require "conekta/operations/find"
require "conekta/operations/where"
require "conekta/operations/create"
require "conekta/operations/delete"
require "conekta/operations/update"
require "conekta/operations/custom_action"
require "conekta/operations/create_member"

require "conekta/conekta_object"
require "conekta/resource"
require "conekta/requestor"
require "conekta/util"
require "conekta/error"
require "conekta/payment_method"
require "conekta/charge"
require "conekta/customer"
require "conekta/card"
require "conekta/subscription"
require "conekta/plan"
require "conekta/token"
require "conekta/event"
require "conekta/payee"
require "conekta/payout"
require "conekta/payout_method"
require "conekta/method"
require "conekta/webhook"
require "conekta/webhook_log"

module Conekta
  I18n.load_path += Dir[File.join(File.expand_path('../..', __FILE__), 'locales', '*.{rb,yml}').to_s]

  @api_base = 'https://api.conekta.io'
  @api_version = '1.0.0'
  @locale = 'es'

  def self.config
    yield self
  end

  def self.api_base
    @api_base
  end

  def self.api_base=(api_base)
    @api_base = api_base
  end

  def self.api_version
    @api_version
  end

  def self.api_version=(api_version)
    @api_version = api_version
  end

  def self.api_key
    @api_key
  end

  def self.api_key=(api_key)
    @api_key = api_key
  end

  def self.locale
    @locale
  end

  def self.locale=(locale)
    @locale = locale
  end
end
