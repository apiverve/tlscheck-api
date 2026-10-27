Pod::Spec.new do |s|
  s.name             = 'APIVerveTLSChecker'
  s.version          = '1.2.3'
  s.summary          = 'TLS Checker tests which TLS protocol versions a server accepts by running a live handshake for each of TLS 1.0, 1.1, 1.2 and 1.3.'
  s.description      = <<-'DESC'
TLS Checker tests which TLS protocol versions a server accepts by running a live handshake for each of TLS 1.0, 1.1, 1.2 and 1.3. It reports the highest version, the cipher the server picks, whether the certificate validates, whether deprecated protocols are still exposed, a risk score and a letter grade from a published rubric.

This iOS/macOS SDK provides a convenient way to access the TLS Checker from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/tlscheck?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/tlscheck-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveTLSChecker/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
