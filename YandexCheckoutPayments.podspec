Pod::Spec.new do |s|
  s.name      = 'YandexCheckoutPayments'
  s.version   = '2.0.7'
  s.homepage  = 'https://github.com/yandex-money/yandex-checkout-payments-swift'
  s.license   = {
    :type => "MIT",
    :file => "LICENSE"
  }
  s.authors = 'Yandex Checkout'
  s.summary = 'Yandex Checkout Payments'

  s.source = {
    :git => 'https://github.com/yandex-money/yandex-checkout-payments-swift.git',
    :tag => s.version.to_s
  }

  s.ios.deployment_target = '8.0'
  s.swift_version = '4.2'

  s.ios.source_files  = 'YandexCheckoutPayments/**/*.{h,swift}', 'YandexCheckoutPayments/*.{h,swift}'
  s.ios.resources = 'YandexCheckoutPayments/Resources/*.xcassets', 'YandexCheckoutPayments/Resources/**/*.plist', 'YandexCheckoutPayments/Resources/*.lproj/*.strings'

  s.ios.framework  = 'UIKit'
  s.ios.framework  = 'PassKit'
  s.ios.library = 'z'
  s.ios.vendored_frameworks = 'Frameworks/TrustDefender.framework'

  s.pod_target_xcconfig = {
    'OTHER_LDFLAGS' => '-framework "TrustDefender"',
    'FRAMEWORK_SEARCH_PATHS' => '"${PODS_ROOT}/../Frameworks"'
  }

  s.ios.dependency 'FunctionalSwift', '~> 1.1.0'
  s.ios.dependency 'When', '~> 4.0.0'

  s.ios.dependency 'YandexLoginSDK', '~> 2.0.0'
  s.ios.dependency 'YandexMoneyCoreApi', '~> 1.3.0'
  s.ios.dependency 'YandexCheckoutPaymentsApi', '~> 1.1.0'
  s.ios.dependency 'YandexCheckoutShowcaseApi', '~> 1.0.0'
  s.ios.dependency 'YandexCheckoutWalletApi', '~> 1.0.0'
  s.ios.dependency 'YandexMobileMetrica/Dynamic', '~> 3.5.0'
end
