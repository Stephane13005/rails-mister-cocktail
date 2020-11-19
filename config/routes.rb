# frozen_string_literal: true

Rails.application.routes.draw do
resources :cocktails, only: [ :index, :show, :new, :create ]
end
