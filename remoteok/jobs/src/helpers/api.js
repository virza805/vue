import { create } from "apisauce";

const api = create({
    baseURL: "https://jobs-api.return0.codes",
    // baseURL: import.meta.env.VITE_API_URL,
    headers: {
        Accept: "application/json",
        "Content-Type": "application/json",
        Authorization: `Bearer ${localStorage.getItem("token")}`,
    },
});

export default api;