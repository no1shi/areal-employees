import "dotenv/config";

export const env = {
    port: process.env.SERVER_PORT | 8080,
    databaseUrl: process.env.DATABASE_URL
}