import { NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import { requireAuth } from "@/lib/auth";
import Submission from "@/lib/models/Submission";
import Vacation from "@/lib/models/Vacation";

function randomName() {
  const first = ["Ahmed", "Sara", "Omar", "Fatima", "Ali", "Nadia", "Hassan", "Layla", "Jawad", "Mia"];
  const last = ["Khan", "Ali", "Hassan", "Mohamed", "Jensen", "Nielsen", "Pedersen", "Larsen"];
  return `${first[Math.floor(Math.random() * first.length)]} ${last[Math.floor(Math.random() * last.length)]}`;
}

function randomInt(min: number, max: number) {
  return Math.floor(Math.random() * (max - min + 1)) + min;
}

function daysAgo(n: number) {
  const d = new Date();
  d.setDate(d.getDate() - n);
  d.setHours(randomInt(7, 22), randomInt(0, 59));
  return d;
}

function fmtCph(d: Date) {
  return d.toLocaleString("da-DK", {
    timeZone: "Europe/Copenhagen",
    year: "numeric", month: "2-digit", day: "2-digit",
    hour: "2-digit", minute: "2-digit",
  });
}

export async function POST() {
  await requireAuth();
  await connectDB();

  const submissions = [];

  // Leftover Food - 10 entries over 10 days
  for (let i = 0; i < 10; i++) {
    const d = daysAgo(i);
    submissions.push({
      formSlug: "leftover-food",
      formTitle: "Leftover Food",
      data: {
        name: randomName(),
        strips_qty: String(randomInt(0, 15)),
        hotwings_qty: String(randomInt(0, 12)),
        drumstick_qty: String(randomInt(0, 8)),
        date_time: fmtCph(d),
      },
      createdAt: d,
    });
  }

  // Complaint Form - 5 entries
  const complaintReasons = ["Cold food", "Wrong order", "Long wait time", "Dirty table", "Rude staff"];
  for (let i = 0; i < 5; i++) {
    const d = daysAgo(randomInt(0, 14));
    submissions.push({
      formSlug: "complaint-form",
      formTitle: "Complaint Form",
      data: {
        handler_name: randomName(),
        complaint_about: complaintReasons[i],
        how_handled: "Apologized and offered replacement",
        customer_happy: ["Yes", "Yes", "Partially", "Yes", "No"][i],
        date_time: fmtCph(d),
      },
      createdAt: d,
    });
  }

  // Oil Control - 8 entries
  for (let i = 0; i < 8; i++) {
    const d = daysAgo(i);
    submissions.push({
      formSlug: "oil-control",
      formTitle: "Oil Control",
      data: {
        name: randomName(),
        pressure_fryer_1: String(randomInt(1, 5)),
        pressure_fryer_2: String(randomInt(1, 5)),
        open_fryer_1: String(randomInt(1, 5)),
        open_fryer_2: String(randomInt(1, 5)),
        date_time: fmtCph(d),
      },
      createdAt: d,
    });
  }

  // Cleaning Report - 7 entries
  const machines = ["Open Fryer 1", "Open Fryer 2", "Pressure Fryer 1", "Taylor Burger Grill", "Softice / Milkshake Machine", "Fridge 1", "Fridge 2"];
  for (let i = 0; i < 7; i++) {
    const d = daysAgo(i);
    submissions.push({
      formSlug: "cleaning-report",
      formTitle: "Cleaning Report",
      data: {
        name: randomName(),
        machine_name: machines[i],
        date_time_cleaning: fmtCph(d),
        date_time_next: fmtCph(daysAgo(i - 7)),
      },
      createdAt: d,
    });
  }

  // Daily Items Update - 7 entries
  for (let i = 0; i < 7; i++) {
    const d = daysAgo(i);
    submissions.push({
      formSlug: "daily-items-update",
      formTitle: "Daily Items Update",
      data: {
        date_time: fmtCph(d),
        iceberg_qty: String(randomInt(2, 20)),
        tomato_qty: String(randomInt(3, 25)),
        red_onions_qty: String(randomInt(1, 15)),
        rocula_qty: String(randomInt(0, 10)),
        carrets_qty: String(randomInt(2, 12)),
        white_cabbag_qty: String(randomInt(1, 8)),
        cheddar_cheese_qty: String(randomInt(2, 15)),
        cream_cheese_happy_cow_qty: String(randomInt(1, 10)),
        garlic_cheese_qty: String(randomInt(0, 8)),
        emmental_cheese_qty: String(randomInt(1, 12)),
        parmesan_cheese_qty: String(randomInt(0, 6)),
        pitta_kebab_sauce_qty: String(randomInt(1, 10)),
        fish_sauce_qty: String(randomInt(0, 5)),
        feta_cheese_qty: String(randomInt(1, 8)),
        egg_qty: String(randomInt(5, 30)),
        whipped_cream_qty: String(randomInt(0, 5)),
        red_coloring_qty: String(randomInt(0, 3)),
        zirra_spicy_qty: String(randomInt(0, 5)),
      },
      createdAt: d,
    });
  }

  // Google Reviews - 6 entries
  for (let i = 0; i < 6; i++) {
    const d = daysAgo(randomInt(0, 20));
    submissions.push({
      formSlug: "google-reviews",
      formTitle: "Employees Google Reviews",
      data: {
        your_name: randomName(),
        customer_name: randomName(),
        saw_5_star: ["Yes", "Yes", "Yes", "No", "Yes", "Yes"][i],
        date_time: fmtCph(d),
      },
      createdAt: d,
    });
  }

  // Shake & Ice cream - 5 entries
  for (let i = 0; i < 5; i++) {
    const d = daysAgo(i);
    submissions.push({
      formSlug: "shake-icecream-quantity",
      formTitle: "Shake and Ice cream quantity",
      data: {
        name: randomName(),
        shake_filled_liter: `${randomInt(2, 8)} Liter`,
        icecream_liter: `${randomInt(1, 6)} Liter`,
        date_time: fmtCph(d),
      },
      createdAt: d,
    });
  }

  // Filter Change - 3 entries
  for (let i = 0; i < 3; i++) {
    const d = daysAgo(randomInt(0, 10));
    submissions.push({
      formSlug: "filter-change",
      formTitle: "Filter Change",
      data: {
        name: randomName(),
        machine_name: ["Open Fryer", "Pressure Fryer", "Open Fryer"][i],
        machine_number: String(randomInt(1, 3)),
        is_filter_changed: "Yes",
        date_time: fmtCph(d),
      },
      createdAt: d,
    });
  }

  await Submission.insertMany(submissions);

  // Seed vacation requests
  const vacNames = ["Ahmed Khan", "Sara Jensen", "Omar Ali", "Fatima Nielsen"];
  for (const name of vacNames) {
    const weeks: Record<string, string> = {};
    const numWeeks = randomInt(2, 4);
    const start = randomInt(20, 35);
    for (let w = start; w < start + numWeeks; w++) {
      weeks[String(w)] = Math.random() > 0.5 ? "approved" : "requested";
    }
    await Vacation.findOneAndUpdate(
      { employeeName: name, year: new Date().getFullYear() },
      { employeeName: name, year: new Date().getFullYear(), weeks },
      { upsert: true }
    );
  }

  const total = submissions.length;
  return NextResponse.json({ success: true, seeded: total, message: `Seeded ${total} submissions + 4 vacation records` });
}
