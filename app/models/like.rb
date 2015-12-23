#喜欢
class Like
  include Mongoid::Document
  include Mongoid::BaseModel
  include Mongoid::Timestamps
  include Mongoid::CounterCache
  field :outer_id, type: Integer
  field :genre, type: Integer
  field :user_id, type: Integer

  belongs_to :user, inverse_of: :likes


  GENRE = [['诗词', 1], ['歌曲', 2], ['美文', 3], ['杂谈', 4]]
end