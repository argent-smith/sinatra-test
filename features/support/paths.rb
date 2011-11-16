# Taken from the cucumber-rails project.

module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    when /the home\s?page/
      '/'

    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    when /the page with UTF in Ruby/
      '/utf_in_ruby'

    when /the page with UTF in HAML/
      '/utf_in_haml'

    when /the page with UTF in both Ruby code and Haml template/
      '/utf_in_ruby_and_haml'

    when /the page with all listed above and a markdown template/
      '/utf_in_ruby_and_haml_and_markdown'

    else
      raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
        "Now, go and add a mapping in #{__FILE__}"
    end
  end
end

World(NavigationHelpers)
