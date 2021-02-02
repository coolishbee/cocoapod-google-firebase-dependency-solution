[![Platform](https://img.shields.io/cocoapods/p/cocoapodSDK.svg?style=flat)](https://cocoapods.org/pods/git-public-pod-public)
[![Verison](https://img.shields.io/cocoapods/v/cocoapodSDK.svg)](https://cocoapods.org/pods/cocoapodSDK)

# how to firebase dependency + cocoapod upload

> iOS 라이브러리 개발시 firebase 나 다른 써드파티를 의존도로 사용하는 경우
>
> 어떻게 cocoapod 에 배포할 수 있을까?
>
> * spec 파일에 의존성 추가
> * vendored_frameworks 로 커스텀프레임워크 바이너리화
> * 시뮬레이터 sdk 아키텍쳐 제외시키기
>
> 크게 이렇게 3가지만 처리해주면 동적라이브러리를 의존성으로 사용할 수 있다.



## podspec 파일

```
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
  
  s.vendored_frameworks = 'cocoapodSDK/Frameworks/cocoapodSDK.framework'
    
  s.dependency          'AFNetworking', '~> 3.0'
  s.dependency          'JSONModel'
  s.dependency          'Firebase/Auth'
  s.dependency          'Firebase/Messaging'
  s.dependency          'GoogleSignIn'
  s.dependency          'FBSDKLoginKit'
  
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    
  
end
```

* source_files 과 resource_bundle 는 소스공개할 경우
* vendored_frameworks 개발한 라이브러리를 바이너리로 배포할 경우
* target_xcconfig 에 특정 아키텍쳐 제외시켜줘야 Firebase 라이브러리에서 에러가 발생하지 않는다.