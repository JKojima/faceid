import { registerPlugin } from '@capacitor/core';

import type { FaceidPlugin } from './definitions';

const Faceid = registerPlugin<FaceidPlugin>('Faceid', {
  web: () => import('./web').then((m) => new m.FaceidWeb()),
});

export * from './definitions';
export { Faceid };
