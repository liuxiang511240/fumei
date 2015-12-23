#评论
# coding: utf-8
class Comment
  include Mongoid::Document
  include Mongoid::BaseModel
  include Mongoid::SoftDelete
  include Mongoid::Timestamps
  include Mongoid::CounterCache
  field :content, type: String, default: ''
  field :outer_id, type: String
  field :genre, type: Integer
  field :user_id, type: String
  validates_presence_of :content, :message => 'content is must!'
  validates_length_of :content, :maximum => 5000, :message => 'Up to 5000 characters'

  attr_accessible :content, :outer_id, :genre, :user_id, :deleted_at, :created_at, :updated_at
  belongs_to :user


  # GENRE = [['诗词', 1], ['歌曲', 4], ['美文', 2], ['杂谈', 3]]
end