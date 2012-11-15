class Asset < ActiveRecord::Base
   attr_accessible :name, :site_id, :type_a
   belongs_to :site
   before_save :setup_type
  #
  # Uploader
  #
  mount_uploader :name, AssetUploader
  
  private
  
  def setup_type
    self.type_a = (File.extname(self.name.to_s).eql?('.js')) ? 'js' : 'css'
  end
   
end
