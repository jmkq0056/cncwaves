export type FieldType = "text" | "textarea" | "number" | "select" | "date" | "datetime" | "email" | "tel" | "checkbox" | "file";

export type FormField = {
  name: string;
  label: string;
  type: FieldType;
  required?: boolean;
  placeholder?: string;
  options?: string[];
};

export type FormDefinition = {
  slug: string;
  title: string;
  description: string;
  fields: FormField[];
};

export const FORM_DEFINITIONS: FormDefinition[] = [
  // 1. Leftover Food (IMG_6588-6589)
  {
    slug: "leftover-food",
    title: "Leftover Food",
    description: "Report leftover items at end of shift",
    fields: [
      { name: "name", label: "Name", type: "text", required: true },
      { name: "strips_qty", label: "Strips Qty", type: "text", required: true },
      { name: "hotwings_qty", label: "Hotwings Qty", type: "text", required: true },
      { name: "drumstick_qty", label: "Drumstick Qty", type: "text", required: true },
      { name: "image", label: "Image", type: "file", required: true },
      { name: "date_time", label: "Date / Time", type: "datetime", required: true },
    ],
  },

  // 2. Complaint Form (IMG_6590-6591)
  {
    slug: "complaint-form",
    title: "Complaint Form",
    description: "This form must be filled if any customer complain about the food or anything in the shop",
    fields: [
      { name: "handler_name", label: "Handler Name", type: "text", required: true },
      { name: "complaint_about", label: "What is the complaint about?", type: "text", required: true },
      { name: "how_handled", label: "How did you handle the complaint?", type: "text", required: true },
      { name: "customer_happy", label: "Was the customer happy?", type: "select", required: true, options: ["Yes", "No", "Partially"] },
      { name: "date_time", label: "Date/Time", type: "datetime", required: true },
    ],
  },

  // 3. Filter Change (IMG_6592-6593)
  {
    slug: "filter-change",
    title: "Filter Change",
    description: "Log filter changes for equipment",
    fields: [
      { name: "name", label: "Name", type: "text", required: true },
      { name: "machine_name", label: "Machine Name", type: "checkbox", required: true, options: ["Open Fryer", "Pressure Fryer"] },
      { name: "machine_number", label: "Machine number", type: "text", required: true },
      { name: "is_filter_changed", label: "Is the filter changed?", type: "select", required: true, options: ["Yes", "No"] },
      { name: "image", label: "Image", type: "file", required: true },
      { name: "date_time", label: "Date / time of change", type: "datetime", required: true },
    ],
  },

  // 4. Oil Control (IMG_6594-6597)
  {
    slug: "oil-control",
    title: "Oil Control",
    description: "Track oil control numbers for fryers",
    fields: [
      { name: "name", label: "Name", type: "text", required: true },
      { name: "pressure_fryer_1", label: "Pressure Fryer 1 - Control Number", type: "text", required: true },
      { name: "pressure_fryer_2", label: "Pressure Fryer 2 - Control Number", type: "text", required: true },
      { name: "open_fryer_1", label: "Open Fryer 1 - Control Number", type: "text", required: true },
      { name: "open_fryer_2", label: "Open Fryer 2 - Control Number", type: "text", required: true },
      { name: "date_time", label: "Date / time", type: "datetime", required: true },
    ],
  },

  // 5. Machine Parts Changes (IMG_6598-6602)
  {
    slug: "machine-parts-changes",
    title: "Machine Parts Changes",
    description: "Report machine parts replacements and changes",
    fields: [
      { name: "machine_name", label: "Machine name", type: "select", required: true, options: ["Open Fryer 1", "Open Fryer 2", "Pressure Fryer 1", "Pressure Fryer 2", "Taylor Burger Grill", "Bread Warmer", "Toaster Grill", "Softice / Milkshake Machine", "Fridge 1", "Fridge 2", "Fridge 3"] },
      { name: "machine_part", label: "Machine Part", type: "select", required: true, options: ["Open Fryer pan rubber", "Pressure Fryer Hatch rubber", "Pressure valve rubber", "Taylor Grill Teflon"] },
      { name: "machine_part_name", label: "Machine Part Name", type: "text" },
      { name: "employee_name", label: "Employee name", type: "text", required: true },
      { name: "picture", label: "Picture", type: "file", required: true },
      { name: "date_time", label: "Date / Time", type: "datetime", required: true },
    ],
  },

  // 6. Cleaning Report (IMG_6603-6604)
  {
    slug: "cleaning-report",
    title: "Cleaning Report",
    description: "Log cleaning activities for machines and areas",
    fields: [
      { name: "name", label: "Name", type: "text", required: true },
      { name: "machine_name", label: "Machine Name", type: "select", required: true, options: ["Open Fryer 1", "Open Fryer 2", "Pressure Fryer 1", "Pressure Fryer 2", "Taylor Burger Grill", "Bread Warmer", "Toaster Grill", "Softice / Milkshake Machine", "Fridge 1", "Fridge 2", "Fridge 3"] },
      { name: "machine_name_other", label: "Machine Name (if other)", type: "text" },
      { name: "picture", label: "Picture", type: "file", required: true },
      { name: "date_time_cleaning", label: "Date / Time of cleaning", type: "datetime", required: true },
      { name: "date_time_next", label: "Date / Time of NEXT cleaning", type: "text" },
    ],
  },

  // 7. Shake and Ice cream quantity (IMG_6606-6609)
  {
    slug: "shake-icecream-quantity",
    title: "Shake and Ice cream quantity",
    description: "Record shake and ice cream fill levels",
    fields: [
      { name: "name", label: "Name", type: "text", required: true },
      { name: "shake_filled_liter", label: "Shake Filled - Liter", type: "select", required: true, options: ["0 Liter", "1 Liter", "2 Liter", "3 Liter", "4 Liter", "5 Liter", "6 Liter", "7 Liter", "8 Liter", "9 Liter", "10 Liter"] },
      { name: "icecream_liter", label: "Ice cream - Liter", type: "select", required: true, options: ["0 Liter", "1 Liter", "2 Liter", "3 Liter", "4 Liter", "5 Liter", "6 Liter", "7 Liter", "8 Liter", "9 Liter", "10 Liter"] },
      { name: "date_time", label: "Date & Time", type: "datetime", required: true },
    ],
  },

  // 8. Employees Google Reviews (IMG_6610-6611)
  {
    slug: "google-reviews",
    title: "Employees Google Reviews",
    description: "Log customer Google reviews collected by employees",
    fields: [
      { name: "your_name", label: "Your Name", type: "text", required: true },
      { name: "customer_name", label: "Name of the customer that gave the review", type: "text", required: true },
      { name: "saw_5_star", label: "Did you see the 5 star review on the customer's phone?", type: "select", required: true, options: ["Yes", "No"] },
      { name: "date_time", label: "Date / Time for the review", type: "datetime", required: true },
    ],
  },

  // 9. Daily Items Update (IMG_6612-6617)
  {
    slug: "daily-items-update",
    title: "Daily Items Update",
    description: "Report daily stock quantities for key items",
    fields: [
      { name: "date_time", label: "Time and Date", type: "datetime", required: true },
      { name: "iceberg_qty", label: "Iceberg Qty", type: "text", required: true },
      { name: "tomato_qty", label: "Tomato Qty", type: "text", required: true },
      { name: "red_onions_qty", label: "Red onions Qty", type: "text", required: true },
      { name: "rocula_qty", label: "Rocula Qty", type: "text", required: true },
      { name: "carrets_qty", label: "Carrets Qty", type: "text", required: true },
      { name: "white_cabbag_qty", label: "White cabbag Qty", type: "text", required: true },
      { name: "cheddar_cheese_qty", label: "Cheddar Cheese Qty", type: "text", required: true },
      { name: "cream_cheese_happy_cow_qty", label: "Cream Cheese happy cow Qty", type: "text", required: true },
      { name: "garlic_cheese_qty", label: "Garlic Cheese Qty", type: "text", required: true },
      { name: "emmental_cheese_qty", label: "Emmental Cheese Qty", type: "text", required: true },
      { name: "parmesan_cheese_qty", label: "Parmesan Cheese Qty", type: "text", required: true },
      { name: "pitta_kebab_sauce_qty", label: "Pitta Kebab Sauce Qty", type: "text", required: true },
      { name: "fish_sauce_qty", label: "Fish Sauce Qty", type: "text", required: true },
      { name: "feta_cheese_qty", label: "Feta Cheese Qty", type: "text", required: true },
      { name: "egg_qty", label: "EGG Qty", type: "text", required: true },
      { name: "whipped_cream_qty", label: "Whipped cream Qty", type: "text", required: true },
      { name: "red_coloring_qty", label: "Red Coloring Qty", type: "text", required: true },
      { name: "zirra_spicy_qty", label: "Zirra spicy Qty", type: "text", required: true },
    ],
  },

  // 10. Employee Keys (IMG_6618-6619)
  {
    slug: "employee-keys",
    title: "Employee Keys",
    description: "Record key handouts to employees",
    fields: [
      { name: "full_name", label: "Full Name", type: "text", required: true },
      { name: "quantity_of_keys", label: "Quantity of keys", type: "text", required: true },
      { name: "key_used_for", label: "Key used for?", type: "text", required: true },
      { name: "date_time", label: "Date / Time", type: "datetime", required: true },
    ],
  },

  // 11. Employee T-shirts (IMG_6620-6621)
  {
    slug: "employee-tshirts",
    title: "Employee T-shirts",
    description: "Record T-shirt deliveries to employees",
    fields: [
      { name: "full_name", label: "Full Name", type: "text", required: true },
      { name: "quantity_delivered", label: "Quantity of T-shirts delivered", type: "text", required: true },
      { name: "size_delivered", label: "Size of T-shirts delivered", type: "text", required: true },
      { name: "date_time", label: "Day / time delivered", type: "datetime", required: true },
    ],
  },

  // 12. Employee Details - DK (IMG_6622-6623, 6629-6631)
  {
    slug: "employee-details-dk",
    title: "Employee Details - DK",
    description: "Indsend medarbejderoplysninger (dansk)",
    fields: [
      { name: "fulde_navn", label: "Fulde Navn", type: "text", required: true },
      { name: "cpr_nr", label: "CPR Nr", type: "text", required: true },
      { name: "tlf_nr", label: "TLF nr", type: "tel", required: true },
      { name: "bank_konto_nr", label: "Bank Konto nr", type: "text", required: true },
      { name: "bank_reg_nr", label: "Bank Reg nr", type: "text", required: true },
      { name: "dato_tid", label: "Dato / Tid", type: "datetime", required: true },
    ],
  },

  // 13. Employee Details - EN (IMG_6624-6628)
  {
    slug: "employee-details-en",
    title: "Employee Details - EN",
    description: "Submit employee information (English)",
    fields: [
      { name: "first_name", label: "First Name", type: "text", required: true },
      { name: "surname", label: "Surname", type: "text", required: true },
      { name: "email", label: "E-mail", type: "email", required: true },
      { name: "phone_number", label: "Phone Number", type: "tel", required: true },
      { name: "cpr_number", label: "CPR Number", type: "text", required: true },
      { name: "bank_account_number", label: "Bank Account number", type: "text", required: true },
      { name: "bank_reg_number", label: "Bank Reg number", type: "text", required: true },
      { name: "picture_cpr_card", label: "Picture of CPR card", type: "file", required: true },
      { name: "picture_work_permit", label: "Picture of Work Permit card", type: "file", required: true },
      { name: "date_time", label: "Date / Time", type: "datetime", required: true },
    ],
  },
];

export function getFormBySlug(slug: string): FormDefinition | undefined {
  return FORM_DEFINITIONS.find((f) => f.slug === slug);
}
