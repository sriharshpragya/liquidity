# frozen_string_literal: true

module Liquidity
  module Hooks
    class << self
      def register
        Peatio::Upstream.registry[:crypto] = Liquidity::Crypto
      end
    end

    if defined?(Rails::Railtie)
      require 'liquidity/railtie'
    else
      register
    end
  end
end