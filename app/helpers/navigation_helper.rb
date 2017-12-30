module NavigationHelper

  def collapsible_links_partial_path
    if user_signed_in? #If a user is signed in, return a corresponding partial’s path
      'layouts/navigation/collapsible_elements/signed_in_links'
    else #If a user is not signed in, return another partial’s path.
      'layouts/navigation/collapsible_elements/non_signed_in_links'
    end
  end
  
end