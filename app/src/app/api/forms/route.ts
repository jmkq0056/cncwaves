import { NextResponse } from "next/server";
import { FORM_DEFINITIONS } from "@/lib/form-definitions";

export async function GET() {
  // Public — no auth needed
  const forms = FORM_DEFINITIONS.map(({ slug, title, description, icon }) => ({
    slug, title, description, icon,
  }));
  return NextResponse.json(forms);
}
