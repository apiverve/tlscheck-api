declare module '@apiverve/tlscheck' {
  export interface tlscheckOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface tlscheckResponse {
    status: string;
    error: string | null;
    data: TLSCheckerData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface TLSCheckerData {
      domain:           null | string;
      tlsVersions:      { [key: string]: boolean | null };
      highestVersion:   null | string;
      hasDeprecatedTLS: boolean | null;
      isSecure:         boolean | null;
      riskScore:        number | null;
      riskLevel:        null | string;
  }

  export default class tlscheckWrapper {
    constructor(options: tlscheckOptions);

    execute(callback: (error: any, data: tlscheckResponse | null) => void): Promise<tlscheckResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: tlscheckResponse | null) => void): Promise<tlscheckResponse>;
    execute(query?: Record<string, any>): Promise<tlscheckResponse>;
  }
}
