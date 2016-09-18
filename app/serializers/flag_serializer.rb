class FlagSerializer < ActiveModel::Serializer
  attributes :id, :description, :country, :num_of_colors, :img_url
end
