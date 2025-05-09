export interface FaceIDPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
