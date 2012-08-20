class CrawlsController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource

  def new
    @crawl = Crawl.new
  end

  def create
    @crawl = Crawl.new(params[:crawl])

    if @crawl.valid?
      @crawl.pdfa=params[:pdfa]
      @crawl.jpeg2000=params[:jpeg2000]
      @crawl.user_id=current_user.id

      @crawl.save

      flash[:success] = "Your url was successfully saved!"
      redirect_to crawl_path
    else
      render :new
    end
  end

  def show

  end

  def process_urls

  end

end
