class Website < ActiveRecord::Base
  default_scope :order => 'title'
  attr_accessible :description, :image_url, :link, :title
  validates :title, :description, :link, :image_url, :presence => true
  validates :title, :uniqueness => true
  validates :link, :format => {
      :with    => %r{[a-zA-z]+://[^\s]*}i,
      :message => "must be a URL like 'http://lazymonkey.is-programmer.com'."
  }
  validates :image_url, :format => {
      :with    => %r{\.(gif|jpg|png)$}i,
      :message => 'must be a URL for GIF, JPG or PNG image.'
  }
end
