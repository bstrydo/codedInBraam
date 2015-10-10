class DiaryEntriesController < ApplicationController
  def index
    #@diary_entries = DiaryEntry.all
    @diary_entries = DiaryEntry.all
  end


  def show
    #@diary_entries = DiaryEntry.all
    @diary_entries = DiaryEntry.all
  end

  def create
    diaryEntry = DiaryEntry.new params[:diary_entry]
    diaryEntry.save
    flash[:notice] = 'Diary Entry saved'
    redirect_to diary_entry
  end

  def new
    @diary_entry = DiaryEntry.new
  end
end
