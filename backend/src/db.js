import pkg from "pg";
import {POSTGRES_URL} from "./config.js";
const { Pool } = pkg;
// Create a connection to the database
export const pool =  new Pool({
    connectionString: 'postgres://default:LF6GSQZ3iglk@ep-still-dust-a4my9yyx.us-east-1.aws.neon.tech:5432/verceldb?sslmode=require'
})

