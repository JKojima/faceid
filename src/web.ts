import { WebPlugin } from '@capacitor/core';

import type { FaceidPlugin } from './definitions';

export class FaceidWeb extends WebPlugin implements FaceidPlugin {
  async authenticate(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
