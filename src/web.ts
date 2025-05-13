import { WebPlugin } from '@capacitor/core';

import type { FaceidPlugin } from './definitions';

export class FaceidWeb extends WebPlugin implements FaceidPlugin {
  async authenticate(_options: { value: string }): Promise<{ value: string }> {
    throw new Error('Method not implemented.');
  }
}
