Pod::Spec.new do |s|
    s.name             = "DOOgre"
    s.version          = "1.0.0"
    s.summary          = "A CALayer subclass that will turn your view circular."
    s.description      = <<-DESC
Ogre's are like onions and so are view's. They have (CA)Layers!
This layer can be added as a baseLayer to any UIView subclass and it will make it circular and animatable.
Many of the layer classes I've implemented and used in the past could not be animated using NSLayoutConstraints and still keep it's circular shape. This layer keeps its shape by syncing with the underlying CALayer.bounds animation.
Great for when you want to animate movement, sizechange with NSLayoutConstraints. !!NOTE This will cause funky layout's if you animate CALayer.bounds directly. But I plan on trying to find a fix for that eventually...
                            DESC
  s.homepage         = "https://github.com/dostrander/DOOgre"
  s.license          = 'MIT'
  s.author           = { "Derek Ostrander" => "djostran@gmail.com" }
  s.source           = { :git => "https://github.com/dostrander/DOOgre.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/_derko'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.public_header_files = 'Pod/Classes/**/*.h'
end
