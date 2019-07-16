class CommentsController < ApplicationController 

  before_action :authenticate_user!, except: [:index, :show]
  

    def create    
        @post = Post.find(params[:post_id])    
        @comment = @post.comments.build(comment_params)
        @comment.user_id=current_user.id if current_user
        @comment.save
        redirect_to post_path(@post)    
    end  

      def destroy    
        
        @comment = Comment.find(params[:id])
        
        @comment.destroy 

        redirect_to @comment.post   
      end   


    private    

      def comment_params    
          params.require(:comment).permit(:text)    
      end   

      def find_comment    
          @post = Post.find(params[:post_id])    
      end   
      def comment_auth    
             redirect_to(root_path)
        end    
 end