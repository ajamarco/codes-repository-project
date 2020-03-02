class TagsController < ApplicationController
    def new
        @tag = Tag.new
    end

    def create
        @tag = Tag.new(allowed_params)
        @tag.save
        redirect_to posts_path
    end

    private
    def allowed_params
        params.require(:tag).permit(:name)
    end
end