export type RichTextSegment =
  | { type: "text"; value: string }
  | { type: "ability"; name: string; id: string }
  | { type: "keyword"; name: string; value?: string }
  | { type: "damageType"; name: string }
  | { type: "character"; name: string; id: string }
  | { type: "arcaneCard"; color: string; value: string }
  | { type: "catastrophe" };
