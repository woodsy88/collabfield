module PostsHelper

  def create_new_post_partial_path
    # which partial file to render
    if user_signed_in?
      'posts/branch/create_new_post/signed_in'
    else
      'posts/branch/create_new_post/not_signed_in'
    end
  end

  def all_categories_button_partial_path
    if params[:category].blank?
      'posts/branch/categories/all_selected'
    else
      'posts/branch/categories/all_not_selected'
    end
  end

  def no_posts_partial_path(posts)
    posts.empty? ? 'posts/branch/no_posts' : 'shared/empty_partial'
  end

  def post_format_partial_path
    #  If a user is on the home page, render the post design for the home page. If a user is on the branch page, render the post design for the branch page
    current_page?(root_path) ? 'posts/post/home_page' : 'posts/post/branch_page'
  end

  def category_field_partial_path
    if params[:category].present?
      'posts/branch/search_form/category_field'
    else
      'shared/empty_partial'
    end
  end

  def update_pagination_partial_path
  #  the next_page method from the will_paginate gem is used, 
  #  to determine if there are any more posts to load in the 
  #  future or not. 
    if @posts.next_page
      'posts/posts_pagination_page/update_pagination'
    else
      'posts/posts_pagination_page/remove_pagination'
    end
  end

end
