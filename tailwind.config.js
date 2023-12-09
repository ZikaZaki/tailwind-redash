/** @type {import('tailwindcss').Config} */
export default {
  content: ["./index.html", "./src/**/*.{vue,js,ts,jsx,tsx}"],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {},
  },
  variants: {
    extend: {
      translate: [
        "responsive",
        "group-hover",
        "hover",
        // "group-active",
        // "active",
        "focus",
      ],
    },
  },
  plugins: [],
};

