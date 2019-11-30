class FoldersController < ApplicationController
  def index
    @folder_names = FolderName.all.order(created_at: :desc)
  end

  def create
    @folders = Folder.new(post_id: params[:post_id])
    @folders.save
    redirect_to("/posts/#{params[:post_id]}")
  end

  def destroy
    @folders = Folder.find_by(foldername_id: params[:foldername_id], post_id: params[:post_id])
    @folders.destroy
    redirect_to("/folders/index")
  end

  def show_folder
    @folders = Folder.where(foldername_id: params[:foldername_id])
  end
end
