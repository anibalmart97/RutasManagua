class Article < ActiveRecord::Base
  belongs_to :section

  has_attached_file :image, styles: { large: "1240x900",medium: "800x450>",small: "300x300", thumb: "100x100>" },
            default_url: lambda { |image| ActionController::Base.helpers.asset_path('image8.jpg') }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  
end
