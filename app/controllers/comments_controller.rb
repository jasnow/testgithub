class CommentsController < ApplicationController
	def create
		@product = Product.where("product_id = ?", params[:product_id]).first
		@comment = @product.comments.new(comment_params)
		
		@comment.user = current_user
		respond_to do |format|
      if @comment.save
      	format.html { redirect_to @product, notice: "Review was created successfully." }
      	format.json { render :show, status: :create, location: @product }
      else
      	format.html { redirect_to @product, alert: 'Review was not saved successfully.' }
      	format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
	end

	def destroy
    @comment = Comment.where("id = ?", params[:id]).first
    product = @comment.product
    @comment.destroy
    redirect_to product
	end

private

  def comment_params
  	params.require(:comment).permit(:user_id, :body, :rating)
  end
end
