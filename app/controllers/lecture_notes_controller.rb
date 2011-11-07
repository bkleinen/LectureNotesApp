class LectureNotesController < ApplicationController
  # GET /lecture_notes
  # GET /lecture_notes.json
  def index
    @lecture_notes = LectureNote.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lecture_notes }
    end
  end

  # GET /lecture_notes/1
  # GET /lecture_notes/1.json
  def show
    @lecture_note = LectureNote.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lecture_note }
    end
  end

  # GET /lecture_notes/new
  # GET /lecture_notes/new.json
  def new
    @lecture_note = LectureNote.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lecture_note }
    end
  end

  # GET /lecture_notes/1/edit
  def edit
    @lecture_note = LectureNote.find(params[:id])
  end

  # POST /lecture_notes
  # POST /lecture_notes.json
  def create
    @lecture_note = LectureNote.new(params[:lecture_note])

    respond_to do |format|
      if @lecture_note.save
        format.html { redirect_to @lecture_note, notice: 'Lecture note was successfully created.' }
        format.json { render json: @lecture_note, status: :created, location: @lecture_note }
      else
        format.html { render action: "new" }
        format.json { render json: @lecture_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lecture_notes/1
  # PUT /lecture_notes/1.json
  def update
    @lecture_note = LectureNote.find(params[:id])

    respond_to do |format|
      if @lecture_note.update_attributes(params[:lecture_note])
        format.html { redirect_to @lecture_note, notice: 'Lecture note was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @lecture_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lecture_notes/1
  # DELETE /lecture_notes/1.json
  def destroy
    @lecture_note = LectureNote.find(params[:id])
    @lecture_note.destroy

    respond_to do |format|
      format.html { redirect_to lecture_notes_url }
      format.json { head :ok }
    end
  end
end
