require 'pry'

class SongClassesController < ApplicationController
  before_action :set_song_class, only: [:show, :edit, :update, :destroy]

  # GET /song_classes
  # GET /song_classes.json
  def index
    @song_classes = SongClass.all
  end

  # GET /song_classes/1
  # GET /song_classes/1.json
  def show
  end

  # GET /song_classes/new
  def new
    @song_class = SongClass.new
  end

  # GET /song_classes/1/edit
  def edit
  end

  # POST /song_classes
  # POST /song_classes.json
  def create
    binding.pry
    @song_class = SongClass.new(song_class_params)
    @song_class.audio_file = params[:file]
    @song_class.song_name = params['song_class']['song_name']
    @song_class.album_ID = params['song_class']['album_ID']
    respond_to do |format|
      if @song_class.save
        format.html { redirect_to @song_class, notice: 'Song class was successfully created.' }
        format.json { render :show, status: :created, location: @song_class }
      else
        format.html { render :new }
        format.json { render json: @song_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /song_classes/1
  # PATCH/PUT /song_classes/1.json
  def update
    respond_to do |format|
      if @song_class.update(song_class_params)
        format.html { redirect_to @song_class, notice: 'Song class was successfully updated.' }
        format.json { render :show, status: :ok, location: @song_class }
      else
        format.html { render :edit }
        format.json { render json: @song_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /song_classes/1
  # DELETE /song_classes/1.json
  def destroy
    @song_class.destroy
    respond_to do |format|
      format.html { redirect_to song_classes_url, notice: 'Song class was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song_class
      @song_class = SongClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def song_class_params
      params.require(:song_class).permit(:audio_file)
    end
end
