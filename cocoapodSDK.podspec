  
Pod::Spec.new do |s|
  s.name                = "cocoapodSDK"
  s.version             = "0.0.11"
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
  s.source              = { :git => "https://github.com/james-chun-dev/cocoapod-google-firebase-dependency-solution.git", :tag => "#{s.version}" }
  
  s.source_files        = ["cocoapodSDK/cocoapodSDK/**/*.h", "cocoapodSDK/cocoapodSDK/**/*.m"]
  
  s.vendored_frameworks = ["cocoapodSDK/**/*.xcframework"]
    
  s.dependency          'AFNetworking', '~> 3.0'
  
end

