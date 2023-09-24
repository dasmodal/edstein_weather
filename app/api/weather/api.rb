# frozen_string_literal: true

module Weather
  class API < Grape::API
    version "v1", using: :header, vendor: "weather"
    format :json

    resource :weather do
      get :current do
      end

      resource :historical do
        get :/ do
        end

        get :avg do
        end

        get :by_time do
        end

        get :max do
        end

        get :min do
        end
      end
    end

    get :health do
      status :ok
    end
  end
end
