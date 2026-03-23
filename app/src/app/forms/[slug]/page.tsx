"use client";

import { useEffect, useState } from "react";
import { useParams, useRouter } from "next/navigation";
import Link from "next/link";

type FormField = {
  name: string;
  label: string;
  type: string;
  required?: boolean;
  placeholder?: string;
  options?: string[];
};

type FormDef = {
  slug: string;
  title: string;
  description: string;
  fields: FormField[];
};

export default function FormPage() {
  const { slug } = useParams();
  const router = useRouter();
  const [formDef, setFormDef] = useState<FormDef | null>(null);
  const [values, setValues] = useState<Record<string, string>>({});
  const [submitting, setSubmitting] = useState(false);
  const [submitted, setSubmitted] = useState(false);
  const [error, setError] = useState("");

  useEffect(() => {
    // Fetch form definition from the static definitions via a simple import trick
    // We'll get all forms and find the right one
    fetch("/api/forms")
      .then((r) => r.json())
      .then((forms: any[]) => {
        const found = forms.find((f: any) => f.slug === slug);
        if (!found) return;
        // Need full fields, so fetch form-definitions dynamically
        import("@/lib/form-definitions").then(({ getFormBySlug }) => {
          const full = getFormBySlug(slug as string);
          if (full) setFormDef(full);
        });
      });
  }, [slug]);

  function setValue(name: string, value: string) {
    setValues((prev) => ({ ...prev, [name]: value }));
  }

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    setSubmitting(true);
    setError("");

    const res = await fetch("/api/forms/submit", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ formSlug: slug, data: values }),
    });

    if (res.ok) {
      setSubmitted(true);
    } else {
      const data = await res.json();
      setError(data.error || "Submission failed");
    }
    setSubmitting(false);
  }

  if (!formDef) {
    return (
      <div className="min-h-screen bg-gray-50 flex items-center justify-center">
        <p className="text-gray-400">Loading form...</p>
      </div>
    );
  }

  if (submitted) {
    return (
      <div className="min-h-screen bg-gray-50 flex items-center justify-center px-4">
        <div className="text-center max-w-sm">
          <div className="w-16 h-16 bg-green-100 rounded-full flex items-center justify-center mx-auto mb-4">
            <svg className="w-8 h-8 text-green-500" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2}>
              <path strokeLinecap="round" strokeLinejoin="round" d="M4.5 12.75l6 6 9-13.5" />
            </svg>
          </div>
          <h2 className="text-xl font-bold text-gray-800 mb-2">Submitted!</h2>
          <p className="text-gray-500 text-sm mb-6">Your {formDef.title} has been recorded.</p>
          <div className="flex gap-3 justify-center">
            <button
              onClick={() => { setSubmitted(false); setValues({}); }}
              className="px-4 py-2 bg-brand text-white rounded text-sm hover:bg-brand-700"
            >
              Submit Another
            </button>
            <Link href="/forms" className="px-4 py-2 bg-gray-200 rounded text-sm hover:bg-gray-300">
              All Forms
            </Link>
          </div>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-gray-50">
      <div className="max-w-lg mx-auto px-4 py-8">
        {/* Header */}
        <div className="mb-6">
          <Link href="/forms" className="text-brand text-sm hover:text-brand-700 mb-2 inline-block">
            &larr; All Forms
          </Link>
          <h1 className="text-xl font-bold text-gray-800">{formDef.title}</h1>
          <p className="text-gray-500 text-sm">{formDef.description}</p>
        </div>

        <form onSubmit={handleSubmit} className="bg-white rounded-lg shadow p-5 space-y-4">
          {formDef.fields.map((field) => (
            <div key={field.name}>
              <label className="block text-sm font-medium text-gray-700 mb-1">
                {field.label}
                {field.required && <span className="text-red-400 ml-0.5">*</span>}
              </label>

              {field.type === "textarea" ? (
                <textarea
                  value={values[field.name] || ""}
                  onChange={(e) => setValue(field.name, e.target.value)}
                  placeholder={field.placeholder}
                  required={field.required}
                  rows={3}
                  className="w-full px-3 py-2 border rounded text-sm focus:outline-none focus:ring-1 focus:ring-blue-400 resize-none"
                />
              ) : field.type === "select" ? (
                <select
                  value={values[field.name] || ""}
                  onChange={(e) => setValue(field.name, e.target.value)}
                  required={field.required}
                  className="w-full px-3 py-2 border rounded text-sm focus:outline-none focus:ring-1 focus:ring-blue-400 bg-white"
                >
                  <option value="">Select...</option>
                  {field.options?.map((opt) => (
                    <option key={opt} value={opt}>{opt}</option>
                  ))}
                </select>
              ) : field.type === "checkbox" ? (
                <label className="flex items-center gap-2 cursor-pointer">
                  <input
                    type="checkbox"
                    checked={values[field.name] === "true"}
                    onChange={(e) => setValue(field.name, e.target.checked ? "true" : "false")}
                    className="w-4 h-4 rounded border-gray-300 text-blue-500 focus:ring-blue-400"
                  />
                  <span className="text-sm text-gray-600">Yes</span>
                </label>
              ) : (
                <input
                  type={field.type}
                  value={values[field.name] || ""}
                  onChange={(e) => setValue(field.name, e.target.value)}
                  placeholder={field.placeholder}
                  required={field.required}
                  className="w-full px-3 py-2 border rounded text-sm focus:outline-none focus:ring-1 focus:ring-blue-400"
                />
              )}
            </div>
          ))}

          {error && (
            <div className="flex items-center gap-2 text-red-600 text-sm bg-red-50 rounded px-3 py-2">
              <svg className="w-4 h-4 flex-shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={1.5}>
                <path strokeLinecap="round" strokeLinejoin="round" d="M12 9v3.75m9-.75a9 9 0 11-18 0 9 9 0 0118 0zm-9 3.75h.008v.008H12v-.008z" />
              </svg>
              {error}
            </div>
          )}

          <button
            type="submit"
            disabled={submitting}
            className="w-full py-2.5 bg-brand text-white rounded-lg hover:bg-brand-700 disabled:opacity-50 font-medium text-sm"
          >
            {submitting ? "Submitting..." : "Submit"}
          </button>
        </form>
      </div>
    </div>
  );
}
