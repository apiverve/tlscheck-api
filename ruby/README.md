# TLS Checker API - Ruby Gem

TLS Check inspects which TLS/SSL protocol versions a server supports. It probes TLS 1.0 through 1.3, reports which are negotiable, and derives a security verdict — the highest supported version, whether deprecated protocols are still exposed, and a composite risk score.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_tlscheck'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_tlscheck
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_tlscheck'

# Initialize the client
client = APIVerve::Tlscheck::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  domain: "amazon.com",
  port: 443
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ domain: "amazon.com", port: 443 })
  puts response["data"]
rescue APIVerve::Tlscheck::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Tlscheck::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Tlscheck::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "domain": "amazon.com",
    "tlsVersions": {
      "TLSv1": true,
      "TLSv1.1": true,
      "TLSv1.2": true,
      "TLSv1.3": true
    },
    "highestVersion": "TLSv1.3",
    "hasDeprecatedTLS": true,
    "isSecure": false,
    "riskScore": 55,
    "riskLevel": "medium"
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/tlscheck?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/tlscheck?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/tlscheck?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
