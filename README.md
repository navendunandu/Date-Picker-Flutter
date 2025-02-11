# 📌 **Flutter Date, Month, and Year Picker**

This Flutter project provides three separate pickers:

- **📆 Date Picker** – Allows users to select a full date (day, month, year).
- **📅 Month Picker** – Enables selection of only the month.
- **📆 Year Picker (18+ Restriction)** – Users can only select a birth year if they are at least 18 years old.

Each picker is **embedded directly on the screen**, ensuring smooth user interaction without popups.

---

## **🔧 How It Works**

1. **Navigation:**

   - The app starts with a **home screen**, where users can choose between the **Date Picker, Month Picker, and Year Picker**.
   - Clicking on a button navigates to the corresponding picker screen.

2. **📆 Date Picker:**

   - Uses `flutter_holo_date_picker` to allow users to select a full date (day, month, year).
   - The selected date is displayed in real time.

3. **📅 Month Picker:**

   - Displays a scrollable list of months using `ListWheelScrollView`.
   - Users can smoothly scroll and pick a month, which updates dynamically.

4. **📆 Year Picker (18+ Restriction):**

   - Restricts year selection based on age (users must be **at least 18 years old**).
   - The available range is dynamically calculated (`Current Year - 18` to `Current Year - 100`).
   - Uses `ListWheelScrollView` for a smooth scrolling experience.

---

## **📦 Dependencies Used**

The project utilizes the following Flutter packages:

### 🔹 **flutter\_holo\_date\_picker**

- Provides a beautiful, customizable **date picker**.
- Used in the **Date Picker screen** for full date selection.
- Install via:
  ```yaml
  dependencies:
    flutter_holo_date_picker: ^1.1.0
  ```

### 🔹 **ListWheelScrollView (Built-in Flutter Widget)**

- Used for **Month and Year pickers** to create a scrollable wheel-like selection.
- Provides a smooth user experience with `FixedExtentScrollPhysics` for controlled scrolling.

---

## **🚀 How to Use**

1. **Run the app** and navigate to the picker selection screen.
2. Choose a picker:
   - **Date Picker:** Select a full date.
   - **Month Picker:** Scroll and select a month.
   - **Year Picker:** Scroll to pick a year (must be 18+).
3. The selected value updates in real time.

---

## **🛠 Customization**

- Modify the **year range** (e.g., allow different age limits).
- Change the **theme and colors** for a personalized UI.
- Add **animations or haptic feedback** for better UX.

---
