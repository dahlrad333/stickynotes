class MainController < ApplicationController
  def index
    @notes = Note.order("[order]")
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
    arr = params[:sort_array]
    sortnumber = 0
    arr.each do |id|
      note = Note.find(id)
      note.order = sortnumber
      sortnumber = sortnumber+1
      note.save
    end
    render :text => "hi"
  end
end
