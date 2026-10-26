# TLS Checker API - PHP Package

TLS Checker tests which TLS protocol versions a server accepts by running a live handshake for each of TLS 1.0, 1.1, 1.2 and 1.3. It reports the highest version, the cipher the server picks, whether the certificate validates, whether deprecated protocols are still exposed, a risk score and a letter grade from a published rubric.

## Installation

Install via Composer:

```bash
composer require apiverve/tlscheck
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Tlscheck\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'domain' => 'amazon.com',
    'port' => 443
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Tlscheck\Client;
use APIVerve\Tlscheck\Exceptions\APIException;
use APIVerve\Tlscheck\Exceptions\ValidationException;

try {
    $response = $client->execute(['domain' => 'amazon.com', 'port' => 443]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "domain": "amazon.com",
    "tlsVersions": {
      "TLSv1": false,
      "TLSv1.1": false,
      "TLSv1.2": true,
      "TLSv1.3": true
    },
    "highestVersion": "TLSv1.3",
    "negotiatedCipher": "TLS_AES_256_GCM_SHA384",
    "forwardSecrecy": true,
    "certificateTrusted": true,
    "certificateError": null,
    "hasDeprecatedTLS": false,
    "isSecure": true,
    "riskScore": 0,
    "riskLevel": "low",
    "grade": "A+",
    "gradeReasons": []
  }
}
```

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/tlscheck?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/tlscheck?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/tlscheck?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
