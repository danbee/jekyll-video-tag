# Jekyll Video Tag

**Easy responsive videos for Jekyll.**

Jekyll Video Tag is a liquid tag that adds responsive videos to your [Jekyll](http://jekyllrb.com) static site.

### Usage

Place the `video_tag.rb` file in your `_plugins` directory and add the CSS or Sass file to your site.

```liquid
{% video {embed-url} width={width} height={height} %}
```

### Example

```liquid
{% video //www.youtube.com/embed/7eP4pw03PCg width=560 height=315 %}
```
