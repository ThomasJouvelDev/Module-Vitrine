module MetaTagsHelper
  def meta_title
    content_for?(:meta_title) ? content_for(:meta_title) : DEFAULT_META["meta_title"]
  end

  def meta_description
    content_for?(:meta_description) ? content_for(:meta_description) : DEFAULT_META["meta_description"]
  end

  def meta_image
    meta_image = (content_for?(:meta_image) ? content_for(:meta_image) : DEFAULT_META["meta_image"])
    # little twist to make it work equally with an asset or a url
    meta_image.starts_with?("http") ? meta_image : image_url(meta_image)
  end

  def meta_image_alt
    content_for?(:meta_image_alt) ? content_for(:meta_image_alt) : DEFAULT_META["meta_image_alt"]
  end

  def meta_image_width
    content_for?(:meta_image_width) ? content_for(:meta_image_width) : DEFAULT_META["meta_image_width"]
  end

  def meta_image_height
    content_for?(:meta_image_height) ? content_for(:meta_image_height) : DEFAULT_META["meta_image_height"]
  end
end
