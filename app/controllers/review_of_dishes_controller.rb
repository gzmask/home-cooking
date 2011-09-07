class ReviewOfDishesController < ApplicationController
  # GET /review_of_dishes
  # GET /review_of_dishes.xml
  def index
    @review_of_dishes = ReviewOfDish.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @review_of_dishes }
    end
  end

  # GET /review_of_dishes/1
  # GET /review_of_dishes/1.xml
  def show
    @review_of_dish = ReviewOfDish.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @review_of_dish }
    end
  end

  # GET /review_of_dishes/new
  # GET /review_of_dishes/new.xml
  def new
    @review_of_dish = ReviewOfDish.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @review_of_dish }
    end
  end

  # GET /review_of_dishes/1/edit
  def edit
    @review_of_dish = ReviewOfDish.find(params[:id])
  end

  # POST /review_of_dishes
  # POST /review_of_dishes.xml
  def create
    @review_of_dish = ReviewOfDish.new(params[:review_of_dish])

    respond_to do |format|
      if @review_of_dish.save
        format.html { redirect_to(@review_of_dish, :notice => 'Review of dish was successfully created.') }
        format.xml  { render :xml => @review_of_dish, :status => :created, :location => @review_of_dish }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @review_of_dish.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /review_of_dishes/1
  # PUT /review_of_dishes/1.xml
  def update
    @review_of_dish = ReviewOfDish.find(params[:id])

    respond_to do |format|
      if @review_of_dish.update_attributes(params[:review_of_dish])
        format.html { redirect_to(@review_of_dish, :notice => 'Review of dish was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @review_of_dish.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /review_of_dishes/1
  # DELETE /review_of_dishes/1.xml
  def destroy
    @review_of_dish = ReviewOfDish.find(params[:id])
    @review_of_dish.destroy

    respond_to do |format|
      format.html { redirect_to(review_of_dishes_url) }
      format.xml  { head :ok }
    end
  end
end
