module JekyllVideoTag
  class Tag < Liquid::Tag
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

Liquid::Template.register_tag('video', JekyllVideoTag::Tag)
