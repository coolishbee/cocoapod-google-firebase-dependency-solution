  
Pod::Spec.new do |s|
  s.name                = "cocoapodSDK"
  s.version             = "0.0.19"
  s.summary             = "The SDK for iOS Swift provides a modern way of implementing APIs."

  s.description         = <<-DESC
                          Developed in Swift, the SDK for iOS Swift provides a modern way of implementing
                          LINE APIs. The features included in this SDK will help you develop an iOS app with
                          engaging and personalized user experience.
                          DESC

  s.homepage            = "https://github.com/james-chun-dev/cocoapod-google-firebase-dependency-solution.git"
  s.license             = "Apache License, Version 2.0"

  s.author              = "James"
  s.platform            = :ios, "10.0"
  
  s.module_name         = "cocoapodSDK"
  s.swift_version       = "4.2"
  s.swift_versions      = ["4.2", "5.0"]
  s.source              = { :git => "https://github.com/james-chun-dev/cocoapod-google-firebase-dependency-solution.git", :tag => "#{s.version}" }
  
  #s.source_files        = ["cocoapodSDK/cocoapodSDK/**/*.h", "cocoapodSDK/cocoapodSDK/**/*.m", "cocoapodSDK/cocoapodSDK/**/*.swift"]
  #s.resource_bundle     = { 'cocoapodSDK' => 'cocoapodSDK/cocoapodSDK/Images.xcassets' }
  
  s.vendored_frameworks = 'Frameworks/cocoapodSDK.framework'
    
  s.dependency          'AFNetworking', '~> 3.0'
  s.dependency          'JSONModel'
  s.dependency          'Firebase/Auth'
  s.dependency          'Firebase/Messaging'
  s.dependency          'GoogleSignIn'
  s.dependency          'FBSDKLoginKit'
  
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    
  
end

