class TranslationsController < ApplicationController
  before_action :retrieve_key, only: :update
  before_action :find_translation, only: [:edit, :update]

  def index
    @translations = Translation.order(:alias)
  end


  def edit
  end

  def update
    if @translation.update(translation_params)
      flash[:notice] = "Translation for #{ @key } updated."
      I18n.backend.reload!
      redirect_to translations_path
    else
      render :edit
    end
  end

  private


  def find_translation
    @translation = Translation.find(params[:id])
  end

  def retrieve_key
    @key = params[:i18n_backend_active_record_translation][:key]
  end

  def translation_params
    params.require(:i18n_backend_active_record_translation).permit(:value)
  end
end
