class Author
  include Mongoid::Document

  field :name,              type: String, default: ""
  field :face,              type: String, default: ""
  field :created_at, type: Time, default: Time.now
  field :updated_at, type: Time, default: Time.now
end
