module ApplicationHelper
  def reset_tag(value = t('recruitment.search.reset'), options = {})
    options = options.stringify_keys
    tag :input, { "type" => "reset", "value" => value, "class" => "btn btn-secondary" }.update(options)
  end
end
