Rails.application.routes.draw do
  root "boxes#index"

  resources :destinations
  resources :items
  resources :boxes
  resources :houses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#                      root GET    /                                                                                        boxes#index
#              destinations GET    /destinations(.:format)                                                                  destinations#index
#                           POST   /destinations(.:format)                                                                  destinations#create
#           new_destination GET    /destinations/new(.:format)                                                              destinations#new
#          edit_destination GET    /destinations/:id/edit(.:format)                                                         destinations#edit
#               destination GET    /destinations/:id(.:format)                                                              destinations#show
#                           PATCH  /destinations/:id(.:format)                                                              destinations#update
#                           PUT    /destinations/:id(.:format)                                                              destinations#update
#                           DELETE /destinations/:id(.:format)                                                              destinations#destroy
#                     items GET    /items(.:format)                                                                         items#index
#                           POST   /items(.:format)                                                                         items#create
#                  new_item GET    /items/new(.:format)                                                                     items#new
#                 edit_item GET    /items/:id/edit(.:format)                                                                items#edit
#                      item GET    /items/:id(.:format)                                                                     items#show
#                           PATCH  /items/:id(.:format)                                                                     items#update
#                           PUT    /items/:id(.:format)                                                                     items#update
#                           DELETE /items/:id(.:format)                                                                     items#destroy
#                     boxes GET    /boxes(.:format)                                                                         boxes#index
#                           POST   /boxes(.:format)                                                                         boxes#create
#                   new_box GET    /boxes/new(.:format)                                                                     boxes#new
#                  edit_box GET    /boxes/:id/edit(.:format)                                                                boxes#edit
#                       box GET    /boxes/:id(.:format)                                                                     boxes#show
#                           PATCH  /boxes/:id(.:format)                                                                     boxes#update
#                           PUT    /boxes/:id(.:format)                                                                     boxes#update
#                           DELETE /boxes/:id(.:format)                                                                     boxes#destroy
#                    houses GET    /houses(.:format)                                                                        houses#index
#                           POST   /houses(.:format)                                                                        houses#create
#                 new_house GET    /houses/new(.:format)                                                                    houses#new
#                edit_house GET    /houses/:id/edit(.:format)                                                               houses#edit
#                     house GET    /houses/:id(.:format)                                                                    houses#show
#                           PATCH  /houses/:id(.:format)                                                                    houses#update
#                           PUT    /houses/:id(.:format)                                                                    houses#update
#                           DELETE /houses/:id(.:format)                                                                    houses#destroy
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create
