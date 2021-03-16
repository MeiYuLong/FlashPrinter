#
# Be sure to run `pod lib lint FlashPrinter.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FlashPrinter'
  s.version          = '0.0.8'
  s.summary          = '蓝牙打印公共模块'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/MeiYuLong/FlashPrinter.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'MeiYuLong' => 'longjiao914@126.com' }
  s.source           = { :git => 'https://github.com/MeiYuLong/FlashPrinter.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'
  s.swift_version = '5.0'

  s.source_files = 'FlashPrinter/Classes/**/*'
  
  s.resource_bundles = {
    'FlashPrinter' => ['FlashPrinter/Assets/*.xcassets']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
#   s.frameworks = ''
  s.vendored_frameworks = 'FlashPrinter/Classes/Alison/Printer.framework'
#  s.user_target_xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES' }
#  s.xcconfig = {'USER_HEADER_SEARCH_PATHS' => 'FlashPrinter/Classes/Alison/*.{h}'}
  s.dependency 'SnapKit', '~> 5.0.0'
  s.dependency 'MYL_Jewelry', '~> 0.0.3'
  s.dependency 'MBProgressHUD', '~> 1.1.0'
end
