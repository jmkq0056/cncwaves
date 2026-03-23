import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import { requireAuth } from "@/lib/auth";
import Submission from "@/lib/models/Submission";

export async function GET(req: NextRequest) {
  await requireAuth();
  await connectDB();

  const { searchParams } = new URL(req.url);
  const formSlug = searchParams.get("form");
  const page = parseInt(searchParams.get("page") || "1");
  const limit = 50;

  const filter: any = {};
  if (formSlug) filter.formSlug = formSlug;

  const [submissions, total] = await Promise.all([
    Submission.find(filter)
      .sort({ createdAt: -1 })
      .skip((page - 1) * limit)
      .limit(limit)
      .lean(),
    Submission.countDocuments(filter),
  ]);

  // Stats
  const stats = await Submission.aggregate([
    { $group: { _id: "$formSlug", count: { $sum: 1 }, lastSubmission: { $max: "$createdAt" } } },
    { $sort: { count: -1 } },
  ]);

  return NextResponse.json({ submissions, total, page, stats });
}
