import mongoose from "mongoose";

const SubmissionSchema = new mongoose.Schema({
  formSlug: { type: String, required: true, index: true },
  formTitle: { type: String, required: true },
  data: { type: mongoose.Schema.Types.Mixed, required: true },
}, { timestamps: true });

export default mongoose.models.Submission || mongoose.model("Submission", SubmissionSchema);
