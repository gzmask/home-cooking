class ReviewOfUsersController < ApplicationController
  # GET /review_of_users
  # GET /review_of_users.xml
  def index
    @review_of_users = ReviewOfUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @review_of_users }
    end
  end

  # GET /review_of_users/1
  # GET /review_of_users/1.xml
  def show
    @review_of_user = ReviewOfUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @review_of_user }
    end
  end

  # GET /review_of_users/new
  # GET /review_of_users/new.xml
  def new
    @review_of_user = ReviewOfUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @review_of_user }
    end
  end

  # GET /review_of_users/1/edit
  def edit
    @review_of_user = ReviewOfUser.find(params[:id])
  end

  # POST /review_of_users
  # POST /review_of_users.xml
  def create
    @review_of_user = ReviewOfUser.new(params[:review_of_user])

    respond_to do |format|
      if @review_of_user.save
        format.html { redirect_to(@review_of_user, :notice => 'Review of user was successfully created.') }
        format.xml  { render :xml => @review_of_user, :status => :created, :location => @review_of_user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @review_of_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /review_of_users/1
  # PUT /review_of_users/1.xml
  def update
    @review_of_user = ReviewOfUser.find(params[:id])

    respond_to do |format|
      if @review_of_user.update_attributes(params[:review_of_user])
        format.html { redirect_to(@review_of_user, :notice => 'Review of user was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @review_of_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /review_of_users/1
  # DELETE /review_of_users/1.xml
  def destroy
    @review_of_user = ReviewOfUser.find(params[:id])
    @review_of_user.destroy

    respond_to do |format|
      format.html { redirect_to(review_of_users_url) }
      format.xml  { head :ok }
    end
  end
end
