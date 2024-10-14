#  
#  Copyright © 2023 Medallia. Use subject to licensing terms.
#
#
# Be sure to run `pod lib lint medallia-mxo-ios-sdk.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name                = "Sense360"
  s.version             = "1.0.0"
  s.summary             = "The Sense360 for iOS."
  s.authors             = { "Medallia" => "cocoapods-mxo@medallia.com" }
  s.homepage            = "https://github.com/mzachariasMedallia/Sense360"
  s.description         = "The Sense360 for iOS using cocoapods."
  s.license             = { :type => "Commercial", :text => "Copyright © 2023 Medallia. Use subject to licensing terms." }
  s.source              = { :git => "https://github.com/mzachariasMedallia/Sense360.git", :tag => "1.0.0" }
  s.platform            = :ios, "12.0"
  s.preserve_paths      = 'Sense360.xcframework'
  s.vendored_frameworks = 'Sense360.xcframework'
  s.dependency 'BridgeSDK', '~> 3.0.0'
end
