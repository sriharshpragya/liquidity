# frozen_string_literal: true

module Liquidity
  class Railtie < Rails::Railtie
    config.after_initialize do
      Hooks.register
    end
  end
end
