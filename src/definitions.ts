export interface FaceidPlugin {
  authenticate(options: { value: string }): Promise<{ value: string }>;
}
