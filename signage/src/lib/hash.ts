import crypto from "crypto";

export function computePlaylistHash(
  images: any[],
  rotationInterval: number
): string {
  const data = JSON.stringify(images) + rotationInterval;
  return crypto.createHash("md5").update(data).digest("hex");
}
