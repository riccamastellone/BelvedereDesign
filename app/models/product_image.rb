class ProductImage < ActiveRecord::Base
  attr_accessible :image_url, :product_id
  belongs_to :product


  def self.saveimg(upload)
    name =  upload.original_filename
    directory = "public/data/prodotti"
    # create the file path
    path = File.join(directory, name)
    # write the file
    File.open(path, "wb") { |f| f.write(upload.read) }
  end
end
