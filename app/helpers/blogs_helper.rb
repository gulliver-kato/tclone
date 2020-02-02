module BlogsHelper

    def choose_new_or_edit
        if action_name == 'new' || action_name == 'confirm' || action_name == 'create'
          confirm_blogs_path
        elsif action_name == 'edit'
          confirm_blog_path
        else
          raise '未定義のアクションが実行されました'
        end
      end
    
    # 使っていない
    def confirm_new_or_edit
        unless @blog.id? # params[:commit] == 'Create Blog'
          blogs_path
          # confirm_blogs_path --> 作成時にconfirmに行ってしまう？
        else
          blog_path
        end
     end

    def confirm_form_method 
      @blog.id ? 'patch' : 'post' # 作成時はpost, 編集時は patchを指定
    end
end
