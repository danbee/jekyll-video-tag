# Plugin for rendering responsive video in Jekyll
# Written by: Dan Barber
# Version: 0.0.2
# ===============================================
# Usage:
# ------
# {% video {embed-url} width={width} height={height} %}
#
# The embed URL is the one that is referenced by the iframe in the video embed code.
#
# Example:
# {% video //www.youtube.com/embed/7eP4pw03PCg width=560 height=315 %}

module Jekyll
  class VideoTag < Liquid::Tag
    def initialize(tag_name, input, tokens)
      super
      @url = input.slice!(/[^ ]+/)
      @options = parse_options(input)
    end

    def render(context)
      %(<div class="video-container" style="#{container_style(@options)}">#{video_iframe(@url)}</div>)
    end

    private

    def video_iframe(url)
      %(<iframe src="#{url}" frameborder="0" allowfullscreen></iframe>)
    end

    def container_style(options)
      "padding-bottom: #{height_as_percentage_of_width(options['width'], options['height'])}%"
    end

    def parse_options(input)
      Hash[input.strip.split(' ').map { |option| option.split('=') }]
    end

    def height_as_percentage_of_width(width, height)
      (height.to_f / width.to_f) * 100
    end
  end
end

Liquid::Template.register_tag('video', Jekyll::VideoTag)
