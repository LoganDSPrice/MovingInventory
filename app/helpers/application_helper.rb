module ApplicationHelper
  def link_to_show_or_back(
    object,
    show_content = "Show",
    back_content = "Back",
    options = {}
  )
    if request.path == url_for(object)
      link_to back_content, :back, options
    else
      link_to show_content, object, options
    end
  end

  def model_names
    Rails.application.eager_load!

    all_descendants = ActiveRecord::Base.descendants.map do |d|
      d.model_name.name
    end

    all_descendants.select! do |d|
      [
        "ActiveStorage::Attachment",
        "ActiveStorage::Blob",
        "ApplicationRecord",
        "ActiveRecord::SchemaMigration",
      ].exclude?(d)
    end

    all_descendants.map(&:pluralize).sort
  end

  def nav_link(model_name)
    link_classes = ["nav-link"]
    link_classes << "active" if params[:controller] == model_name.downcase

    content_tag(:li, link_to(model_name, "/#{model_name.downcase}", class: link_classes.join(" ") ), class:"nav-item")
  end
end
