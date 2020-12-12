class TracksController < ApplicationController
  before_action :set_track, only: [:show, :edit, :update, :destroy]
  before_action :set_album, only: [:new, :create]
  before_action :set_artist, only: [:new, :create]

  # GET /tracks
  # GET /tracks.json
  def index
    @albums = Album.all
    @tracks = Track.all
  end

  # GET /tracks/1
  # GET /tracks/1.json
  def show
  end

  # GET /tracks/new
  def new
    @track = @album.tracks.new
    @track.artist = @artist
  end

  # GET /tracks/1/edit
  def edit
  end

  # POST /tracks
  # POST /tracks.json
  def create
    @track = @album.tracks.new(track_params)

    respond_to do |format|
      if @track.save
        format.html { redirect_to @track, notice: 'Track was successfully created.' }
        format.json { render :show, status: :created, location: @track }
      else
        format.html { render :new }
        format.json { render json: @track.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /tracks/1
  # PATCH/PUT /tracks/1.json
  def update
    respond_to do |format|
      if @track.update(track_params)
        format.html { redirect_to @track, notice: 'Track was successfully updated.' }
        format.json { render :show, status: :ok, location: @track }
      else
        format.html { render :edit }
        format.json { render json: @track.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tracks/1
  # DELETE /tracks/1.json
  def destroy
    @track.destroy
    respond_to do |format|
      format.html { redirect_to album_path(@track.album.id), notice: 'Track was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_track
      @track = Track.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def track_params
      params.require(:track).permit(:album_id, :artist_id, :name, :length, :genre, :release_date)
    end

    def set_album
      @album = Album.find_by(id: params[:album_id]) || Album.find(track_params[:album_id])
    end

    def set_artist
      # @artist = Artist.find_by(id: params[:artist_id]) || Artist.find(track_params[:artist_id])
      @artist = Artist.find_by(id: params[:artist_id]) || Artist.find(@album.artist_id)
    end
end
