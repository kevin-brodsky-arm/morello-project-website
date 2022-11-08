require 'net/http'
require 'uri'

module Jekyll
  class LoadExternalFile < Liquid::Tag

    def initialize(tag_name, url, tokens)
      super
      @url = url
    end

    def render(context)
      Net::HTTP.get(URI.parse("#{@url}".strip)).force_encoding 'utf-8'
    end

  end
end

Liquid::Template.register_tag('load_external_file', Jekyll::LoadExternalFile)
