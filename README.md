# RailsCasts Episode #374: Image Manipulation

http://railscasts.com/episodes/374-image-manipulation

Requires Ruby 1.9.2 or higher.

### Commands used in episode

```
brew install imagemagick
convert -version
convert octocat.png -resize '70x70^' -gravity center -crop '70x70+0+0' -quantize GRAY -colors 256 -contrast source.png
composite stamp_overlay.png source.png source.png
convert -size 70x70 canvas:red \( octocat.png -resize '70x70^' -gravity center -crop '70x70+0+0' -quantize GRAY -colors 256 -contrast stamp_overlay.png -composite -negate \) -compose copy-opacity -composite stamp.png
gem install rmagick
mate stamp.rb
ruby stamp.rb
```
