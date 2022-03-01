import { create } from "apisauce";

const api = create({
    // baseURL: import.meta.env.VITE_API_URL,
    baseURL: "https://jobs-api.return0.codes",
    headers: {
        Accept: "application/json",
        "Content-Type": "application/json",
    },
});

export default api;