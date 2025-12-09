using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.TLSChecker
{
    /// <summary>
    /// Query options for the TLS Checker API
    /// </summary>
    public class TLSCheckerQueryOptions
    {
        /// <summary>
        /// The domain to check the TLS/SSL configuration for
        /// Example: amazon.com
        /// </summary>
        [JsonProperty("domain")]
        public string Domain { get; set; }

        /// <summary>
        /// The port to connect to (usually 443 for HTTPS)
        /// Example: 443
        /// </summary>
        [JsonProperty("port")]
        public string Port { get; set; }
    }
}
