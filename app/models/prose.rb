#美文
class Prose
  include Mongoid::Document
  include Mongoid::BaseModel
  include Mongoid::SoftDelete
  include Mongoid::Timestamps
  include Mongoid::CounterCache
  field :title, type: String, default: ''
  field :content, type: String, default: ''
  field :user_id, type: Integer
  field :author_id, type: Integer
  field :last_comment_id, type: Integer
  field :commented_at, type: DateTime
  field :comments_count, type: Integer, default: 0
  field :likes_count, type: Integer, default: 0
  # 回复过的人的 ids 列表
  field :comment_user_ids, type: Array, default: []
  # 最后回复人的用户名 - cache 字段用于减少列表也的查询
  field :last_commented_user_name
  # 删除人
  field :who_deleted
  # 精华 0 否， 1 是
  field :excellent, type: Integer, default: 0

  belongs_to :user, inverse_of: :proses
end
