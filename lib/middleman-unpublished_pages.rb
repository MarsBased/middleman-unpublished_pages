require 'middleman-core'

class UnpublishedPages < ::Middleman::Extension

  def initialize(app, options_hash={}, &block)
    super
  end

  def manipulate_resource_list(resources)
    resources.reject { |resource| resource.metadata[:page][:published] == false }
  end
end

::Middleman::Extensions.register(:unpublished_pages, UnpublishedPages)
