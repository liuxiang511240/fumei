#评论
class Comment
  include Mongoid::Document
  include Mongoid::BaseModel
  include Mongoid::SoftDelete
  include Mongoid::Timestamps
  include Mongoid::CounterCache
  field :content, type: String, default: ''
  field :outer_id, type: Integer
  field :genre, type: Integer
  field :user_id, type: Integer

  belongs_to :user, inverse_of: :comments


  GENRE = [['诗词', 1], ['歌曲', 2], ['美文', 3], ['段子', 4]]
end