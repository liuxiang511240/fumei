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

  before_save :update_author

  def can_edit?(user)
    !user.blank?
  end

  def can_delete?(user)
    return false if user.blank?
    user.is_admin?
  end

  private
  def update_author
    return unless name_changed?
    Piece.where(author_id: self.id).each { |t| t.update_attributes(:author => self.name) }
    Song.where(author_id: self.id).each { |t| t.update_attributes(:author => self.name) }
    Poetry.where(author_id: self.id).each { |t| t.update_attributes(:author => self.name) }
    Prose.where(author_id: self.id).each { |t| t.update_attributes(:author => self.name) }
  end
end
