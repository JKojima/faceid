import { registerPlugin } from '@capacitor/core';

import type { FaceIDPlugin } from './definitions';

const FaceID = registerPlugin<FaceIDPlugin>('FaceID', {
  web: () => import('./web').then((m) => new m.FaceIDWeb()),
});

export * from './definitions';
export { FaceID };
