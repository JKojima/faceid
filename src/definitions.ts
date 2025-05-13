export interface FaceidPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
