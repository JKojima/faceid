import { WebPlugin } from '@capacitor/core';

import type { FaceIDPlugin } from './definitions';

export class FaceIDWeb extends WebPlugin implements FaceIDPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
