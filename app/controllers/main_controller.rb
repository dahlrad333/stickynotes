class MainController < ApplicationController
  def index
    @notes = Note.all
  end

  def add
    note = Note.new
    note.body=params[:input]
    note.order=(Note.all.count+1)
    note.save
    redirect_to main_index_url

  end

  def addConfirm
  end

  def delete
    @note = Note.find(params[:id])
    @note.destroy

    redirect_to main_index_url
  end

  def edit
  end

  def editConfirm
  end

  def updatePos
  end
end
