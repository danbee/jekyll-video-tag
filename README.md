# Jekyll Video Tag

Jekyll Video Tag is a liquid tag that adds responsive videos to your [Jekyll](http://jekyllrb.com) static site.

## Installation

Add this line to your application's Gemfile:

    gem 'jekyll-video-tag'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jekyll-video-tag

Add the gem to your Jekyll config:

    gems: ['jekyll_video_tag']

Place the following snippet somewhere in your CSS:

``` css
.video-container {
  position: relative;
  width: 100%;
  height: 0; }
  .video-container iframe {
    position: absolute;
    width: 100%;
    height: 100%; }
```

## Usage

```
{% video {embed-url} width={width} height={height} %}
```

The embed URL is the one that is referenced by the iframe in the video embed code.

### Example:

```
{% video //www.youtube.com/embed/7eP4pw03PCg width=560 height=315 %}
```

## Contributing

1. Fork it ( https://github.com/danbee/jekyll_video_tag/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
