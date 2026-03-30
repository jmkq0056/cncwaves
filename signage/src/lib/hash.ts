import crypto from "crypto";

export function computePlaylistHash(
  images: any[],
  rotationInterval: number
): string {
  // Hash only the fields that affect playback, in deterministic order
  const normalized = images.map((img) => ({
    f: img.filename || "",
    u: img.url || "",
    o: img.order || 0,
  }));
  const data = JSON.stringify(normalized) + "|" + rotationInterval;
  return crypto.createHash("md5").update(data).digest("hex");
}
