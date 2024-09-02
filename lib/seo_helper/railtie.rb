require 'view_helper'
require 'controller_helper'

module SeoHelper
  class Railtie < Rails::Railtie
    initializer "seo_helper.view_helpers" do
      ActiveSupport.on_load(:action_view) do
        include SeoHelper::ViewHelper
      end
    end

    initializer "seo_helper.controller_additions" do
      ActiveSupport.on_load(:action_controller) do
        include SeoHelper::ControllerAddition
      end
    end
  end
end
