export interface FaceIDPlugin {
  authenticate(options: { value: string }): Promise<{ value: string }>;
}
