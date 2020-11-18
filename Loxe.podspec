#
# Be sure to run `pod lib lint Loxe.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Loxe'
  s.version          = '0.1.0'
  s.summary          = 'This SDK allows you to unlock a door lock that contains the LOXE upgrade BLE Module.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  This SDK allows you to unlock a door lock that contains the LOXE upgrade BLE Module. You will also need to use the LOXE Open API. This SDK has only Unlock, setTime and SetupBlueTooth fonctionnality. In order to initialize a lock you need the LOXE installer app.
                       DESC

  s.homepage         = 'https://github.com/loxekey/Loxe-iOS-SDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Harold Hababou' => 'harold@loxe.io' }
  s.source           = { :git => 'https://github.com/loxekey/Loxe-iOS-SDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.source_files = "Loxe/Loxe.framework/Headers/*.h"
  # s.resource_bundles = {
  #   'Loxe' => ['Loxe/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.platform = :ios, "10.0"
  s.vendored_frameworks = "Loxe/Loxe.framework"
  s.preserve_paths      = "Loxe/Loxe.framework"
  s.public_header_files = "Loxe/Loxe.framework/Headers/*.h"

  s.xcconfig = { "OTHER_LDFLAGS" => "-ObjC",  'ONLY_ACTIVE_ARCH' => 'YES'  }
  s.framework     = "CoreBluetooth"
  s.requires_arc  = true
  s.ios.deployment_target = "9.0"

end
