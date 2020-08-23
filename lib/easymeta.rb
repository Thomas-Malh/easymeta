module EasyMeta

  begin
    META_TAGS = YAML.load_file(File.join(Dir.pwd, "config/meta.yml"))
  rescue => e
    warn("Failed loading EasyMeta - config/meta.yml file must be present")
  end
  
  def meta_tags
    tags = String.new
    META_TAGS.each do |meta|
      tags << "<meta name='#{meta[0]}' content='#{meta[1]}' />"
    end
    return tags.html_safe
  end
end

ActionView::Base.send :include, EasyMeta
