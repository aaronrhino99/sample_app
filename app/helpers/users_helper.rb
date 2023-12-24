module UsersHelper
  # Returns the Gravatar for the given user.
  def gravatar_for(user, options = { size: 80 })
    size = options[:size] 
    # Check if user has an email before attempting to generate Gravatar
    if user&.email
      gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
      gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
      image_tag(gravatar_url, alt: user.name, class: "gravatar")
    else
      # Provide a default image or handle the case where email is nil
      # You can customize this based on your application's needs
      # image_tag("default_gravatar_image_url", alt: "Default Gravatar", class: "gravatar")
    end
  end
end