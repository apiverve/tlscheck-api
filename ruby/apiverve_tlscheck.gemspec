# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_tlscheck"
  spec.version       = "1.2.3"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "TLS Checker API - Ruby Client"
  spec.description   = "TLS Checker tests which TLS protocol versions a server accepts by running a live handshake for each of TLS 1.0, 1.1, 1.2 and 1.3. It reports the highest version, the cipher the server picks, whether the certificate validates, whether deprecated protocols are still exposed, a risk score and a letter grade from a published rubric."
  spec.homepage      = "https://apiverve.com/marketplace/tlscheck?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/tlscheck-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/tlscheck"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end
