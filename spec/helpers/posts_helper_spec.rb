require 'rails_helper'

RSpec.describe PostsHelper, :type => :helper do

  context '#create_new_post_partial_path' do
    it "returns a signed_in partial's path" do
      # the stub method to define methods’ return values
      helper.stub(:user_signed_in?).and_return(true)
      expect(helper.create_new_post_partial_path). to (
        eq 'posts/branch/create_new_post/signed_in'
      )
    end

    it "returns a signed_in partial's path" do
      helper.stub(:user_signed_in?).and_return(false)
      expect(helper.create_new_post_partial_path). to (
        eq 'posts/branch/create_new_post/not_signed_in'
      )
    end
  end

  context '#all_categories_button_partial_path' do
    it "returns an all_selected partial's path" do
      # To define params, I selected the controller and simply defined it like this controller.params[:param_name]
      controller.params[:category] = ''
      expect(helper.all_categories_button_partial_path).to (
        eq 'posts/branch/categories/all_selected'
      )
    end

    it "returns an all_not_selected partial's path" do
      controller.params[:category] = 'category'
      expect(helper.all_categories_button_partial_path).to (
        eq 'posts/branch/categories/all_not_selected'
      )
    end
  end

  context '#no_posts_partial_path' do
    it "returns a no_posts partial's path" do
      # assigned instance variables by using an assign method
      assign(:posts, [])
      expect(helper.no_posts_partial_path).to (
        eq 'posts/branch/no_posts'
      )
    end

    it "returns an empty partial's path" do
      assign(:posts, [1])
      expect(helper.no_posts_partial_path).to (
        eq 'shared/empty_partial'
      )
    end
  end
end