# EasyMeta

Easy Meta helps rails developer to organize the default metadata of a website.

# Setup
Add the gem to your Gemfile:
```rb
# Gemfile
gem "easymeta"
```

Then create the metadata file in your Ruby on Rails app `config/meta.yml`:
```yml
# example content
description: "My website description"
og:description: "My website OpenGraph description"
viewport: "width=device-width,initial-scale=1"
```

An ActionView helper will now be available to render all metadata tags from the template:
```erb
<%-# app/views/layouts/application.html.erb -%>
<%= meta_tags %>
```