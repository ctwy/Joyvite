class HomeController < ApplicationController
  @@background_images = [ 'LizKevin-weddingHR-0308.jpg', 'LizKevin-weddingHR-0563.jpg', 'LizKevin-weddingHR-0572.jpg', 'LizKevin-weddingHR-0581.jpg', 'LizKevin-weddingHR-0703.jpg', 'LizKevin-weddingHR-0742.jpg', 'LizKevin-weddingHR-0743.jpg', '_DSC0148.JPG', 'the Napa Valley wedding of Leslie and Brian-1200_LB28754.jpg', 'the Napa Valley wedding of Leslie and Brian-1201IMG_5884.jpg', 'the Napa Valley wedding of Leslie and Brian-1231IMG_0349.jpg', 'wedding3.jpg', 'wedding6.jpg' ];

  def index
    image_index = rand(@@background_images.length)
    @background_image = @@background_images[image_index]
  end

end
