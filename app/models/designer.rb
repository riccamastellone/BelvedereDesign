class Designer < ActiveRecord::Base
  validates :name, presence: true,
            length: { minimum: 5 }
  attr_accessible  :name, :description, :image_url

  has_many :products, dependent: :destroy

  def self.saveimg(upload)
    name =  upload['image'].original_filename
    directory = "public/data"
    #creiamo la directory se non esiste
    Dir.mkdir(directory) unless File.exists?(directory)

    # create the file path
    path = File.join(directory, name)
    # write the file
    File.open(path, "wb") { |f| f.write(upload['image'].read) }
  end

end
