"use client";

import { useEffect, useState } from "react";
import { useParams } from "next/navigation";
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

/** Check if field name implies a quantity */
function isQtyField(name: string): boolean {
  return name.endsWith("_qty") || name === "quantity_of_keys" || name === "quantity_delivered";
}

/** Get Copenhagen time as datetime-local string */
function copenhagenNow(): string {
  return new Date().toLocaleString("sv-SE", { timeZone: "Europe/Copenhagen" }).replace(" ", "T").slice(0, 16);
}

/** Validate a single field, return error message or empty string */
function validateField(field: FormField, value: string): string {
  const trimmed = value.trim();

  // Required check
  if (field.required && !trimmed) {
    return `${field.label} is required`;
  }

  // Number fields (type=number or qty field names)
  if ((field.type === "number" || isQtyField(field.name)) && trimmed) {
    const num = Number(trimmed);
    if (isNaN(num)) return "Must be a valid number";
    if (num < 0) return "Cannot be negative";
    if (num > 99999) return "Value too large";
  }

  // Required number must have a value
  if ((field.type === "number" || isQtyField(field.name)) && field.required) {
    if (!trimmed) return `${field.label} is required`;
    const num = Number(trimmed);
    if (isNaN(num)) return "Must be a valid number";
  }

  if (field.type === "email" && trimmed) {
    if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(trimmed)) return "Invalid email address";
  }

  if (field.type === "tel" && trimmed) {
    const digits = trimmed.replace(/[^\d+]/g, "");
    if (digits.length < 6) return "Phone number too short";
  }

  if ((field.type === "datetime" || field.type === "date") && field.required && !value) {
    return `${field.label} is required`;
  }

  if (field.type === "select" && field.required && !value) {
    return "Please select an option";
  }

  if (field.type === "file" && field.required && !value) {
    return "Please upload a file";
  }

  return "";
}

export default function FormPage() {
  const { slug } = useParams();
  const [formDef, setFormDef] = useState<FormDef | null>(null);
  const [values, setValues] = useState<Record<string, string>>({});
  const [fieldErrors, setFieldErrors] = useState<Record<string, string>>({});
  const [submitting, setSubmitting] = useState(false);
  const [submitted, setSubmitted] = useState(false);
  const [error, setError] = useState("");
  const [uploadingField, setUploadingField] = useState<string | null>(null);

  useEffect(() => {
    import("@/lib/form-definitions").then(({ getFormBySlug }) => {
      const full = getFormBySlug(slug as string);
      if (full) {
        setFormDef(full);
        // Pre-fill datetime fields with Copenhagen now
        const prefill: Record<string, string> = {};
        for (const f of full.fields) {
          if (f.type === "datetime") {
            prefill[f.name] = copenhagenNow();
          }
        }
        setValues(prefill);
      }
    });
  }, [slug]);

  function setValue(name: string, value: string) {
    setValues((prev) => ({ ...prev, [name]: value }));
    // Clear field error on change
    if (fieldErrors[name]) {
      setFieldErrors((prev) => ({ ...prev, [name]: "" }));
    }
  }

  function setQtyValue(name: string, value: string) {
    // Only allow digits, dots, and minus
    const cleaned = value.replace(/[^\d.-]/g, "");
    setValue(name, cleaned);
  }

  async function handleFileUpload(fieldName: string, file: File) {
    // Validate file size (max 10MB)
    if (file.size > 10 * 1024 * 1024) {
      setFieldErrors((prev) => ({ ...prev, [fieldName]: "File too large (max 10MB)" }));
      return;
    }
    // Validate file type
    if (!file.type.startsWith("image/")) {
      setFieldErrors((prev) => ({ ...prev, [fieldName]: "Only image files allowed" }));
      return;
    }

    setUploadingField(fieldName);
    const formData = new FormData();
    formData.append("file", file);
    try {
      const res = await fetch("/api/upload", { method: "POST", body: formData });
      const data = await res.json();
      if (res.ok) {
        setValue(fieldName, data.url);
      } else {
        setFieldErrors((prev) => ({ ...prev, [fieldName]: data.error || "Upload failed" }));
      }
    } catch {
      setFieldErrors((prev) => ({ ...prev, [fieldName]: "Upload failed — check connection" }));
    }
    setUploadingField(null);
  }

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    setError("");

    if (!formDef) return;

    // Frontend validation
    const errors: Record<string, string> = {};
    let hasError = false;

    for (const field of formDef.fields) {
      const val = values[field.name] || "";
      const err = validateField(field, val);
      if (err) {
        errors[field.name] = err;
        hasError = true;
      }
    }

    setFieldErrors(errors);

    if (hasError) {
      // Scroll to first error
      const firstErrorField = formDef.fields.find((f) => errors[f.name]);
      if (firstErrorField) {
        document.getElementById(`field-${firstErrorField.name}`)?.scrollIntoView({ behavior: "smooth", block: "center" });
      }
      return;
    }

    setSubmitting(true);

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
              onClick={() => {
                setSubmitted(false);
                const prefill: Record<string, string> = {};
                for (const f of formDef.fields) {
                  if (f.type === "datetime") prefill[f.name] = copenhagenNow();
                }
                setValues(prefill);
                setFieldErrors({});
              }}
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
      <div className="max-w-lg mx-auto px-4 py-6">
        <div className="mb-5">
          <Link href="/forms" className="text-brand text-sm hover:text-brand-700 mb-2 inline-block">
            &larr; All Forms
          </Link>
          <h1 className="text-xl font-bold text-gray-800">{formDef.title}</h1>
          <p className="text-gray-500 text-sm">{formDef.description}</p>
        </div>

        <form onSubmit={handleSubmit} noValidate className="bg-white rounded-lg shadow p-4 sm:p-5 space-y-4">
          {formDef.fields.map((field) => {
            const hasError = !!fieldErrors[field.name];
            const isQty = isQtyField(field.name) || field.type === "number";
            const borderClass = hasError ? "border-red-400 ring-1 ring-red-200" : "border-gray-300";

            return (
              <div key={field.name} id={`field-${field.name}`}>
                <label className="block text-sm font-medium text-gray-700 mb-1">
                  {field.label}
                  {field.required && <span className="text-red-400 ml-0.5">*</span>}
                </label>

                {field.type === "textarea" ? (
                  <textarea
                    value={values[field.name] || ""}
                    onChange={(e) => setValue(field.name, e.target.value)}
                    placeholder={field.placeholder}
                    rows={3}
                    className={`w-full px-3 py-2 border rounded text-sm focus:outline-none focus:ring-1 focus:ring-brand resize-none ${borderClass}`}
                  />
                ) : field.type === "select" ? (
                  <select
                    value={values[field.name] || ""}
                    onChange={(e) => setValue(field.name, e.target.value)}
                    className={`w-full px-3 py-2 border rounded text-sm focus:outline-none focus:ring-1 focus:ring-brand bg-white ${borderClass}`}
                  >
                    <option value="">Choose</option>
                    {field.options?.map((opt) => (
                      <option key={opt} value={opt}>{opt}</option>
                    ))}
                  </select>
                ) : field.type === "checkbox" && field.options ? (
                  <div className="space-y-2">
                    {field.options.map((opt) => (
                      <label key={opt} className="flex items-center gap-2 cursor-pointer">
                        <input
                          type="checkbox"
                          checked={(values[field.name] || "").includes(opt)}
                          onChange={(e) => {
                            const current = (values[field.name] || "").split(", ").filter(Boolean);
                            if (e.target.checked) {
                              setValue(field.name, [...current, opt].join(", "));
                            } else {
                              setValue(field.name, current.filter((v) => v !== opt).join(", "));
                            }
                          }}
                          className="w-5 h-5 rounded border-gray-300"
                        />
                        <span className="text-sm text-gray-600">{opt}</span>
                      </label>
                    ))}
                  </div>
                ) : field.type === "file" ? (
                  <div>
                    {values[field.name] ? (
                      <div className="flex items-center gap-3">
                        <img src={values[field.name]} alt="" className="w-20 h-20 object-cover rounded border" />
                        <button
                          type="button"
                          onClick={() => setValue(field.name, "")}
                          className="text-xs text-red-500 hover:text-red-700 px-2 py-1 border border-red-200 rounded"
                        >
                          Remove
                        </button>
                      </div>
                    ) : (
                      <label className={`block w-full text-center px-3 py-4 border-2 border-dashed rounded-lg cursor-pointer transition-colors ${
                        uploadingField === field.name
                          ? "border-brand bg-brand-50 text-brand"
                          : hasError
                          ? "border-red-300 text-red-400"
                          : "border-gray-300 hover:border-brand text-gray-500"
                      }`}>
                        <input
                          type="file"
                          accept="image/*"
                          capture="environment"
                          onChange={(e) => {
                            const f = e.target.files?.[0];
                            if (f) handleFileUpload(field.name, f);
                          }}
                          className="hidden"
                          disabled={!!uploadingField}
                        />
                        {uploadingField === field.name ? (
                          <span className="flex items-center justify-center gap-2">
                            <svg className="w-4 h-4 animate-spin" fill="none" viewBox="0 0 24 24">
                              <circle className="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" strokeWidth="4" />
                              <path className="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z" />
                            </svg>
                            Uploading...
                          </span>
                        ) : (
                          <span className="text-sm">Tap to take photo or choose file</span>
                        )}
                      </label>
                    )}
                  </div>
                ) : isQty ? (
                  <input
                    type="number"
                    inputMode="numeric"
                    pattern="[0-9]*"
                    min="0"
                    max="99999"
                    step="any"
                    value={values[field.name] || ""}
                    onChange={(e) => setQtyValue(field.name, e.target.value)}
                    placeholder="0"
                    className={`w-full px-3 py-2 border rounded text-sm focus:outline-none focus:ring-1 focus:ring-brand ${borderClass}`}
                  />
                ) : (
                  <input
                    type={field.type === "datetime" ? "datetime-local" : field.type}
                    inputMode={field.type === "number" ? "numeric" : undefined}
                    value={values[field.name] || ""}
                    onChange={(e) => setValue(field.name, e.target.value)}
                    placeholder={field.placeholder}
                    className={`w-full px-3 py-2 border rounded text-sm focus:outline-none focus:ring-1 focus:ring-brand ${borderClass}`}
                  />
                )}

                {/* Field error */}
                {hasError && (
                  <p className="text-red-500 text-xs mt-1 flex items-center gap-1">
                    <svg className="w-3 h-3" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2}>
                      <path strokeLinecap="round" strokeLinejoin="round" d="M12 9v3.75m9-.75a9 9 0 11-18 0 9 9 0 0118 0zm-9 3.75h.008v.008H12v-.008z" />
                    </svg>
                    {fieldErrors[field.name]}
                  </p>
                )}
              </div>
            );
          })}

          {error && (
            <div className="text-red-600 text-sm bg-red-50 rounded px-3 py-2 flex items-center gap-2">
              <svg className="w-4 h-4 flex-shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={1.5}>
                <path strokeLinecap="round" strokeLinejoin="round" d="M12 9v3.75m9-.75a9 9 0 11-18 0 9 9 0 0118 0zm-9 3.75h.008v.008H12v-.008z" />
              </svg>
              {error}
            </div>
          )}

          <button
            type="submit"
            disabled={submitting || !!uploadingField}
            className="w-full py-3 bg-brand text-white rounded-lg hover:bg-brand-700 disabled:opacity-50 font-medium text-sm"
          >
            {submitting ? "Submitting..." : "Submit"}
          </button>
        </form>
      </div>
    </div>
  );
}
