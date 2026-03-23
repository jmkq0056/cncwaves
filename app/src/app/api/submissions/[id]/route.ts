import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import { requireAuth } from "@/lib/auth";
import Submission from "@/lib/models/Submission";
import cloudinary from "@/lib/cloudinary";

export async function DELETE(_req: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  await requireAuth();
  await connectDB();
  const { id } = await params;

  const submission = await Submission.findById(id).lean() as any;
  if (!submission) return NextResponse.json({ error: "Not found" }, { status: 404 });

  // Delete any Cloudinary assets referenced in submission data
  if (submission.data) {
    for (const value of Object.values(submission.data)) {
      if (typeof value === "string" && value.includes("res.cloudinary.com")) {
        try {
          // Extract public_id from URL: .../upload/v123/folder/filename.ext
          const match = (value as string).match(/\/upload\/(?:v\d+\/)?(.+)\.\w+$/);
          if (match) {
            await cloudinary.uploader.destroy(match[1]);
          }
        } catch (err) {
          console.error("Failed to delete cloudinary asset:", err);
        }
      }
    }
  }

  await Submission.findByIdAndDelete(id);
  return NextResponse.json({ success: true });
}
