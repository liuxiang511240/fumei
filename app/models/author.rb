#作者
class Author
  include Mongoid::Document
  include Mongoid::BaseModel
  include Mongoid::SoftDelete
  include Mongoid::Timestamps
  
  field :name, type: String, default: ''
  field :face, type: String, default: ''
  field :dynasty, type: String, default: ''
  field :birthday, type: String, default: ''
  field :description, type: String, default: ''

end
