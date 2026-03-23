export type FieldType = "text" | "textarea" | "number" | "select" | "date" | "email" | "tel" | "checkbox";

export type FormField = {
  name: string;
  label: string;
  type: FieldType;
  required?: boolean;
  placeholder?: string;
  options?: string[]; // for select fields
};

export type FormDefinition = {
  slug: string;
  title: string;
  description: string;
  icon: string; // emoji or short label for QR page
  fields: FormField[];
};

export const FORM_DEFINITIONS: FormDefinition[] = [
  {
    slug: "leftovers-report",
    title: "Leftovers Report",
    description: "Report leftover items at end of shift",
    icon: "LR",
    fields: [
      { name: "employee_name", label: "Employee Name", type: "text", required: true },
      { name: "date", label: "Date", type: "date", required: true },
      { name: "shift", label: "Shift", type: "select", required: true, options: ["Morning", "Afternoon", "Evening", "Night"] },
      { name: "items", label: "Leftover Items & Quantities", type: "textarea", required: true, placeholder: "List items and approximate quantities" },
      { name: "notes", label: "Additional Notes", type: "textarea" },
    ],
  },
  {
    slug: "complaint-report",
    title: "Complaint Report",
    description: "Log customer complaints",
    icon: "CR",
    fields: [
      { name: "employee_name", label: "Reported By", type: "text", required: true },
      { name: "date", label: "Date", type: "date", required: true },
      { name: "customer_name", label: "Customer Name", type: "text" },
      { name: "complaint_type", label: "Type", type: "select", required: true, options: ["Food Quality", "Service", "Hygiene", "Delivery", "Other"] },
      { name: "description", label: "Description", type: "textarea", required: true, placeholder: "Describe the complaint in detail" },
      { name: "action_taken", label: "Action Taken", type: "textarea", placeholder: "What was done to resolve it?" },
    ],
  },
  {
    slug: "filter-change",
    title: "Filter Change",
    description: "Log filter changes for equipment",
    icon: "FC",
    fields: [
      { name: "employee_name", label: "Employee Name", type: "text", required: true },
      { name: "date", label: "Date", type: "date", required: true },
      { name: "equipment", label: "Equipment", type: "select", required: true, options: ["Fryer 1", "Fryer 2", "Fryer 3", "Hood Filter", "AC Filter", "Water Filter", "Other"] },
      { name: "filter_type", label: "Filter Type", type: "text", required: true },
      { name: "next_change_date", label: "Next Change Due", type: "date" },
      { name: "notes", label: "Notes", type: "textarea" },
    ],
  },
  {
    slug: "oil-control",
    title: "Oil Control",
    description: "Track oil changes and quality",
    icon: "OC",
    fields: [
      { name: "employee_name", label: "Employee Name", type: "text", required: true },
      { name: "date", label: "Date", type: "date", required: true },
      { name: "fryer", label: "Fryer", type: "select", required: true, options: ["Fryer 1", "Fryer 2", "Fryer 3", "All Fryers"] },
      { name: "action", label: "Action", type: "select", required: true, options: ["Full Change", "Top Up", "Quality Check"] },
      { name: "oil_quality", label: "Oil Quality (1-5)", type: "number", placeholder: "1 = bad, 5 = fresh" },
      { name: "litres_used", label: "Litres Used", type: "number" },
      { name: "notes", label: "Notes", type: "textarea" },
    ],
  },
  {
    slug: "machine-parts-report",
    title: "Machine Parts Report",
    description: "Report machine issues or parts changes",
    icon: "MP",
    fields: [
      { name: "employee_name", label: "Reported By", type: "text", required: true },
      { name: "date", label: "Date", type: "date", required: true },
      { name: "machine", label: "Machine/Equipment", type: "text", required: true },
      { name: "issue_type", label: "Issue Type", type: "select", required: true, options: ["Breakdown", "Part Replacement", "Maintenance", "Inspection"] },
      { name: "description", label: "Description", type: "textarea", required: true },
      { name: "parts_used", label: "Parts Used", type: "textarea", placeholder: "List any replacement parts" },
      { name: "resolved", label: "Issue Resolved?", type: "checkbox" },
    ],
  },
  {
    slug: "cleaning-report",
    title: "Cleaning Report",
    description: "Daily/weekly cleaning checklist",
    icon: "CL",
    fields: [
      { name: "employee_name", label: "Cleaned By", type: "text", required: true },
      { name: "date", label: "Date", type: "date", required: true },
      { name: "shift", label: "Shift", type: "select", required: true, options: ["Morning", "Afternoon", "Evening", "Night"] },
      { name: "area", label: "Area", type: "select", required: true, options: ["Kitchen", "Front Counter", "Dining Area", "Storage", "Restrooms", "Exterior", "All Areas"] },
      { name: "tasks_completed", label: "Tasks Completed", type: "textarea", required: true, placeholder: "List all cleaning tasks done" },
      { name: "issues", label: "Issues Found", type: "textarea" },
    ],
  },
  {
    slug: "daily-items-update",
    title: "Daily Items Update",
    description: "Report daily stock/item status",
    icon: "DI",
    fields: [
      { name: "employee_name", label: "Employee Name", type: "text", required: true },
      { name: "date", label: "Date", type: "date", required: true },
      { name: "items_low", label: "Low Stock Items", type: "textarea", required: true, placeholder: "Items running low" },
      { name: "items_out", label: "Out of Stock Items", type: "textarea", placeholder: "Items completely out" },
      { name: "items_expiring", label: "Expiring Soon", type: "textarea", placeholder: "Items expiring within 2 days" },
      { name: "notes", label: "Additional Notes", type: "textarea" },
    ],
  },
  {
    slug: "employee-details",
    title: "Employee Details",
    description: "Submit or update employee information",
    icon: "ED",
    fields: [
      { name: "full_name", label: "Full Name", type: "text", required: true },
      { name: "email", label: "Email", type: "email", required: true },
      { name: "phone", label: "Phone", type: "tel", required: true },
      { name: "position", label: "Position", type: "select", required: true, options: ["Kitchen Staff", "Front Counter", "Delivery Driver", "Manager", "Cleaning Staff", "Other"] },
      { name: "start_date", label: "Start Date", type: "date" },
      { name: "tshirt_size", label: "T-Shirt Size", type: "select", options: ["XS", "S", "M", "L", "XL", "XXL"] },
      { name: "notes", label: "Notes", type: "textarea" },
    ],
  },
];

export function getFormBySlug(slug: string): FormDefinition | undefined {
  return FORM_DEFINITIONS.find((f) => f.slug === slug);
}
