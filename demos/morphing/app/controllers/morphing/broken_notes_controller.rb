module Morphing
  class BrokenNotesController < ApplicationController
    helper_method :session_notes

    before_action :set_initial_notes

    def index
      @open_ids = params.fetch(:details, "").split(',').map(&:to_i)
    end

    def create
      session[:notes].unshift(Note.new(params[:title], params[:content], next_id))
      # Keep it to max 5 items to not overflow session
      session[:notes] = session[:notes].first(5)

      redirect_back_or_to broken_notes_path
    end

    private

    def set_initial_notes
      if session[:notes].blank?
        session[:notes] = [{title: "Sample Note", content: "This is a sample note", id: 1}]
      end
    end

    def session_notes
      session[:notes].map { |note| Note.new(**note) }
    end

    def next_id
      (session_notes.map(&:id).map(&:to_i).max || 0) + 1
    end
  end
end
