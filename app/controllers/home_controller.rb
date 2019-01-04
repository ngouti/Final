class HomeController < ApplicationController

def show
    @pictures = Picture.all

end

end