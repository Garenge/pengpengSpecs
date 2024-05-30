#
#  Be sure to run `pod spec lint PicDataSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

    spec.name         = "PicDataSDK"
    spec.version      = "1.0.5"
    spec.summary      = "Private method for PicData. Framework of PicDataSDK"
    spec.description  = <<-DESC
    Framework of PicDataSDK, which provide private methods for PicData.
    DESC
    spec.homepage     = "https://github.com/Garenge/PicDataSDKFramework"
    spec.license      = "MIT"
    spec.author       = { "Garenge" => "garenge@outlook.com" }
    spec.source       = { :git => "https://github.com/Garenge/PicDataSDKFramework.git", :tag => spec.version.to_s }
    spec.source_files = "PicDataSDK.xcframework/ios-arm64_armv7/PicDataSDK.framework/**/*.h"
    spec.public_header_files = "PicDataSDK.xcframework/ios-arm64/PicDataSDK.framework/**/*.h"

    spec.ios.deployment_target = "9.0"

    spec.pod_target_xcconfig = {
        'SUPPORTS_MACCATALYST' => 'YES',
        'DERIVE_MACCATALYST_PRODUCT_BUNDLE_IDENTIFIER' => 'NO',
    }

    spec.resource = 'PicDataSDKResource.bundle'
    spec.vendored_frameworks = 'PicDataSDK.xcframework'

    spec.dependency "Masonry"
    spec.dependency "SDWebImage", "~> 5.0"

end