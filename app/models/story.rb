class Story < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  belongs_to :assignment

  validates :user, :title, :body, presence: true

  default_scope order: 'created_at DESC'

  def body_rtf=(file)
    self.title = file.original_filename.to_s.gsub(/\.rtf$/,'') unless title.present?
    rtf = RtfToHtml.new(open(file.tempfile).read)
    self.body = rtf.to_s
  end
end
