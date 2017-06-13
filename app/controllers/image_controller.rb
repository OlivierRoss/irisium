class ImageController < ApplicationController
    def show
        @image = Image.find(params[:format])
        send_data(@image.data, :type => @image.mime_type, :filename => "couverture.jpg", :disposition => "inline")
    end
end
