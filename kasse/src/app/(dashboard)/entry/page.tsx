"use client";

import { Suspense } from "react";
import EntryWizard from "@/components/EntryWizard";

export default function EntryPage() {
  return (
    <Suspense fallback={<div className="flex items-center justify-center h-full"><div className="w-6 h-6 border-2 border-brand/30 border-t-brand rounded-full animate-spin" /></div>}>
      <EntryWizard mode="admin" />
    </Suspense>
  );
}
