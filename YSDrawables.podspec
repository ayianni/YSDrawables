#
# Be sure to run `pod lib lint YSDrawables.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "YSDrawables"
  s.version          = "0.2.1"
  s.summary          = "A project which includes a couple of classes which make it easier to create controls with tools such as PaintCode"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
YSDrawables is an iOS component intended to be used for IBDesignables and IBInspectables along with tools such as PaintCode
                       DESC

  s.homepage         = "https://github.com/ayianni/YSDrawables"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Alexander Yianni" => "alex.yianni@yianni-software.com" }
  s.source           = { :git => "https://github.com/ayianni/YSDrawables.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/YianniSoftware'

  s.platform     = :ios, '7.0'
  s.tvos.deployment_target = '9.0'
  s.requires_arc = true

  s.source_files = 'Pod/{Classes,Categories}/**/*'
  s.resource_bundles = {
    'YSDrawables' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
