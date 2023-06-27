import dotenv from "dotenv";
import { app } from "./express";
dotenv.config();
const port: number = Number(process.env.PORT) || 4343;

app.listen(port, () => {
  console.log("🚀 Server ready at: http://localhost:", port);
});
