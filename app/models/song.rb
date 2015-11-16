class Song
  include Mongoid::Document

  field :title, type: String, default: ""
  field :content, type: String, default: ""
  field :author, type: String, default: ""
  field :created_at, type: Time, default: Time.now
  field :updated_at, type: Time, default: Time.now
end
