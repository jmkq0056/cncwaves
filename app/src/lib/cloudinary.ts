import { v2 as cloudinary } from "cloudinary";

cloudinary.config({
  cloud_name: process.env.CLOUDINARY_CLOUD_NAME,
  api_key: process.env.CLOUDINARY_API_KEY,
  api_secret: process.env.CLOUDINARY_API_SECRET,
});

export default cloudinary;

/**
 * Given an image value from the DB, return the display URL.
 * - If it starts with http → cloudinary URL, use as-is
 * - Otherwise → local filename, prefix with /assets/
 * - Empty → return empty string
 */
export function getImageUrl(image: string | undefined | null): string {
  if (!image) return "";
  if (image.startsWith("http")) return image;
  return `/assets/${image}`;
}
