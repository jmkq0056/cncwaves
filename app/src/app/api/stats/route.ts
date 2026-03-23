import { NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import { requireAuth } from "@/lib/auth";
import Submission from "@/lib/models/Submission";

export async function GET() {
  await requireAuth();
  await connectDB();

  const now = new Date();
  const startOfWeek = new Date(now);
  startOfWeek.setDate(now.getDate() - now.getDay());
  startOfWeek.setHours(0, 0, 0, 0);

  const startOfMonth = new Date(now.getFullYear(), now.getMonth(), 1);
  const startOfLastMonth = new Date(now.getFullYear(), now.getMonth() - 1, 1);

  const [
    totalSubmissions,
    thisWeekCount,
    thisMonthCount,
    lastMonthCount,
    perFormStats,
    complaintsThisWeek,
    complaintsLastWeek,
    dailyActivity,
    recentImages,
    dailyItemsTrend,
    leftoversTrend,
    reviewsThisMonth,
  ] = await Promise.all([
    // Total
    Submission.countDocuments(),

    // This week
    Submission.countDocuments({ createdAt: { $gte: startOfWeek } }),

    // This month
    Submission.countDocuments({ createdAt: { $gte: startOfMonth } }),

    // Last month
    Submission.countDocuments({
      createdAt: { $gte: startOfLastMonth, $lt: startOfMonth },
    }),

    // Per form breakdown
    Submission.aggregate([
      {
        $group: {
          _id: "$formSlug",
          title: { $first: "$formTitle" },
          count: { $sum: 1 },
          lastSubmission: { $max: "$createdAt" },
        },
      },
      { $sort: { count: -1 } },
    ]),

    // Complaints this week
    Submission.countDocuments({
      formSlug: "complaint-form",
      createdAt: { $gte: startOfWeek },
    }),

    // Complaints last week
    Submission.countDocuments({
      formSlug: "complaint-form",
      createdAt: {
        $gte: new Date(startOfWeek.getTime() - 7 * 24 * 60 * 60 * 1000),
        $lt: startOfWeek,
      },
    }),

    // Daily submission counts (last 30 days)
    Submission.aggregate([
      { $match: { createdAt: { $gte: new Date(now.getTime() - 30 * 24 * 60 * 60 * 1000) } } },
      {
        $group: {
          _id: { $dateToString: { format: "%Y-%m-%d", date: "$createdAt" } },
          count: { $sum: 1 },
        },
      },
      { $sort: { _id: 1 } },
    ]),

    // Recent image submissions (for image timeline)
    Submission.find({
      formSlug: { $in: ["cleaning-report", "filter-change", "leftover-food", "machine-parts-changes"] },
    })
      .sort({ createdAt: -1 })
      .limit(50)
      .lean(),

    // Daily items trend (last 14 submissions)
    Submission.find({ formSlug: "daily-items-update" })
      .sort({ createdAt: -1 })
      .limit(14)
      .lean(),

    // Leftovers trend (last 14)
    Submission.find({ formSlug: "leftover-food" })
      .sort({ createdAt: -1 })
      .limit(14)
      .lean(),

    // Google reviews this month
    Submission.countDocuments({
      formSlug: "google-reviews",
      createdAt: { $gte: startOfMonth },
    }),
  ]);

  // Compliance: which forms should be daily? Check last submission age
  const dailyForms = ["oil-control", "cleaning-report", "daily-items-update"];
  const compliance = dailyForms.map((slug) => {
    const stat = perFormStats.find((s: any) => s._id === slug);
    const last = stat?.lastSubmission ? new Date(stat.lastSubmission) : null;
    const hoursAgo = last ? (now.getTime() - last.getTime()) / (1000 * 60 * 60) : 999;
    return {
      slug,
      title: stat?.title || slug,
      lastSubmission: last?.toISOString() || null,
      hoursAgo: Math.round(hoursAgo),
      overdue: hoursAgo > 26, // should be done daily
    };
  });

  // Extract images from recent submissions for the timeline
  const imageTimeline = (recentImages as any[])
    .map((s) => {
      const images: string[] = [];
      if (s.data) {
        for (const val of Object.values(s.data)) {
          if (typeof val === "string" && val.includes("res.cloudinary.com")) {
            images.push(val);
          }
        }
      }
      if (images.length === 0) return null;
      // Get submitter name
      const name = s.data?.name || s.data?.employee_name || s.data?.handler_name || "";
      return {
        id: s._id,
        formTitle: s.formTitle,
        formSlug: s.formSlug,
        images,
        name,
        date: s.createdAt,
        hour: new Date(s.createdAt).getHours(),
      };
    })
    .filter(Boolean);

  return NextResponse.json({
    overview: {
      totalSubmissions,
      thisWeekCount,
      thisMonthCount,
      lastMonthCount,
      complaintsThisWeek,
      complaintsLastWeek,
      reviewsThisMonth,
    },
    perFormStats,
    compliance,
    dailyActivity,
    imageTimeline,
    dailyItemsTrend: (dailyItemsTrend as any[]).reverse(),
    leftoversTrend: (leftoversTrend as any[]).reverse(),
  });
}
